set ModuleHierarchy {[{
"Name" : "mmult", "RefName" : "mmult","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_mmult_Pipeline_VITIS_LOOP_33_1_VITIS_LOOP_34_2_fu_2296", "RefName" : "mmult_Pipeline_VITIS_LOOP_33_1_VITIS_LOOP_34_2","ID" : "1","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_33_1_VITIS_LOOP_34_2","RefName" : "VITIS_LOOP_33_1_VITIS_LOOP_34_2","ID" : "2","Type" : "pipeline"},]},
	{"Name" : "grp_mmult_Pipeline_systolic1_fu_2594", "RefName" : "mmult_Pipeline_systolic1","ID" : "3","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "systolic1","RefName" : "systolic1","ID" : "4","Type" : "pipeline"},]},
	{"Name" : "grp_mmult_Pipeline_VITIS_LOOP_59_3_VITIS_LOOP_60_4_fu_3142", "RefName" : "mmult_Pipeline_VITIS_LOOP_59_3_VITIS_LOOP_60_4","ID" : "5","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_59_3_VITIS_LOOP_60_4","RefName" : "VITIS_LOOP_59_3_VITIS_LOOP_60_4","ID" : "6","Type" : "pipeline"},]},]
}]}