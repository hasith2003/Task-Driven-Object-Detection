# 2026-04-20T13:56:14.892195500
import vitis

client = vitis.create_client()
client.set_workspace(path="Vitis")

client.sync_git_example_repo(name="vitis_hls_examples")

client.sync_git_example_repo(name="vitis_libraries")

client.sync_git_example_repo(name="vitis_libraries")

client.sync_git_example_repo(name="vitis_hls_examples")

client.sync_git_example_repo(name="vitis_hls_examples")

client.sync_git_example_repo(name="vitis_hls_examples")

client.sync_git_example_repo(name="vitis_libraries")

comp = client.create_hls_component(name = "systolic_array_v1",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

cfg = client.get_config_file(path="D:\DVCon\Vitis\systolic_array_v1\hls_config.cfg")

cfg.set_values(key="syn.file", values=["mmult.cpp"])

cfg.set_values(key="tb.file", values=["tb_mmult.cpp"])

comp = client.get_component(name="systolic_array_v1")
comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

cfg = client.get_config_file(path="/d:/DVCon/Vitis/systolic_array_v1/hls_config.cfg")

cfg.set_value(section="hls", key="syn.top", value="mmult")

comp.run(operation="SYNTHESIS")

vitis.dispose()

