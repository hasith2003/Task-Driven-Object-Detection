import json
import os
import random
from contextlib import redirect_stdout

import click
import numpy as np
import torch
from boltons.fileutils import mkdir_p
from torch.optim import SGD

from coco_tasks.graph_datasets import JointCocoTasks, CocoTasksTest, CocoTasksTestGT
from coco_tasks.graph_experiments import JointGraphExperiment
from coco_tasks.graph_networks_improved import (
    GGNNDiscLoss,
    GATDiscLoss,
    InitializerMul,
    InitializerMLP,
    AllLinearAggregator,
    OutputModelFirstLast,
    AllLinearAggregatorWeightedWithDetScore,
)
from coco_tasks.settings import SAVING_DIRECTORY, TASK_NUMBERS
from pycocotools.cocoeval import COCOeval


@click.command()
@click.option("--random-seed", envvar="SEED", default=0)
@click.option("--test-on-gt", type=bool, default=True)
@click.option("--only-test", type=bool, default=False)
@click.option("--overfit", type=bool, default=False)
@click.option("--fusion", type=click.Choice(choices=["none", "avg"]), default="none")
@click.option("--weighted-aggregation", type=bool, default=True)
def main(random_seed, test_on_gt, only_test, overfit, fusion, weighted_aggregation):
    random.seed(random_seed)
    np.random.seed(random_seed)
    torch.manual_seed(random_seed)
    torch.cuda.manual_seed_all(random_seed)

    n_epochs = 3
    lr = 1e-3
    wd = 0
    lr_scheduler = True

    # graph settings
    h_dim = 128
    x_dim = 128
    c_dim = 90
    phi_dim = 2048
    max_steps = 3

    train_db = JointCocoTasks()
    # The new 'Brainy' Initializer
    initializer = InitializerMLP(h_dim=h_dim, phi_dim=phi_dim, c_dim=c_dim)
    if weighted_aggregation:
        aggregator = AllLinearAggregatorWeightedWithDetScore(
            in_features=h_dim, out_features=x_dim
        )
    else:
        aggregator = AllLinearAggregator(in_features=h_dim, out_features=x_dim)
    output_model = OutputModelFirstLast(h_dim=h_dim, num_tasks=len(TASK_NUMBERS))

    network = GATDiscLoss(
        initializer=initializer,
        aggregator=aggregator,
        output_model=output_model,
        max_steps=max_steps,
        h_dim=h_dim,
        x_dim=x_dim,
        class_dim=c_dim,
        fusion=fusion,
    )
    optimizer = SGD(network.parameters(), lr=lr, weight_decay=wd)
    experiment = JointGraphExperiment(
        network=network,
        optimizer=optimizer,
        dataset=train_db,
        tensorboard=True,
        seed=random_seed,
    )

    # 1. Define where to LOAD the baseline from
    load_folder_name = "gat-improved-seed:{s}".format(s=random_seed)
    load_path = os.path.join(SAVING_DIRECTORY, load_folder_name)

    # 2. Define where to SAVE the new results
    save_folder_name = "gat-improved-resumed-seed:{s}".format(s=random_seed)
    save_path = os.path.join(SAVING_DIRECTORY, save_folder_name)
    mkdir_p(save_path)

    # 3. LOAD logic: Always load weights before training further
    checkpoint_path = os.path.join(load_path, "model.mdl")
    if os.path.exists(checkpoint_path):
        print(f"🚀 Loading baseline model from {checkpoint_path}")
        network.load_state_dict(torch.load(checkpoint_path))
        print("✅ Weights loaded. Model is ready for fine-tuning.")
    else:
        print(f"⚠️ Warning: Baseline not found at {checkpoint_path}. Starting from scratch!")

    # 4. TRAIN logic
    if not only_test:
        # This will now run for the n_epochs (e.g., 6) you defined earlier
        experiment.train_n_epochs(n_epochs, overfit=overfit, lr_scheduler=lr_scheduler)

        # Save the NEW model to the NEW folder
        torch.save(network.state_dict(), os.path.join(save_path, "model.mdl"))
        print(f"💾 Resumed model saved to {save_path}")
    else:
        # If running only-test, we check the new folder first, then fallback to old
        final_model_path = os.path.join(save_path, "model.mdl")
        if os.path.exists(final_model_path):
            network.load_state_dict(torch.load(final_model_path))
        else:
            network.load_state_dict(torch.load(checkpoint_path))

    # 5. TEST logic: Ensure results save to the NEW folder
    # We set 'folder' to 'save_path' so all .json and .txt files go there
    folder = save_path

    for task_number in TASK_NUMBERS:
        if test_on_gt:
            test_db = CocoTasksTestGT(task_number)
        else:
            test_db = CocoTasksTest(task_number)

        print("testing task {}".format(task_number), "---------------------")

        # test_model
        detections = experiment.do_test(test_db, task_number=task_number)

        detection_file_name = "detections_wa:{}_tn:{}_tgt:{}_f:{}.json".format(
            weighted_aggregation, task_number, test_on_gt, fusion
        )

        # save detections
        with open(os.path.join(folder, detection_file_name), "w") as f:
            json.dump(detections, f)

        # perform evaluation
        with redirect_stdout(open(os.devnull, "w")):
            gtCOCO = test_db.task_coco
            dtCOCO = gtCOCO.loadRes(os.path.join(folder, detection_file_name))
            cocoEval = COCOeval(gtCOCO, dtCOCO, "bbox")
            cocoEval.params.catIds = 1
            cocoEval.evaluate()
            cocoEval.accumulate()
            cocoEval.summarize()

        print("mAP:\t\t %1.6f" % cocoEval.stats[0])
        print("ap@.5:\t\t %1.6f" % cocoEval.stats[1])

        # save evaluation performance
        result_file_name = "result_wa:{}_tn:{}_tgt:{}_f:{}.txt".format(
            weighted_aggregation, task_number, test_on_gt, fusion
        )

        with open(os.path.join(folder, result_file_name), "w") as f:
            f.write("%1.6f, %1.6f" % (cocoEval.stats[0], cocoEval.stats[1]))


if __name__ == "__main__":
    main()
