set moduleName mmult
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set isPipelined_legacy 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set restart_counter_num 0
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 6
set C_modelName {mmult}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ gmem0 int 32 regular {axi_master 2}  }
	{ gmem1 int 32 regular {axi_master 0}  }
	{ a int 64 regular {axi_slave 0}  }
	{ b int 64 regular {axi_slave 0}  }
	{ out_r int 64 regular {axi_slave 0}  }
	{ size int 32 unused  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "gmem0", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READWRITE", "id_num" : 1, "bitSlice":[ {"cElement": [{"cName": "a","offset": { "type": "dynamic","port_name": "a","bundle": "control"},"direction": "READONLY"},{"cName": "out_r","offset": { "type": "dynamic","port_name": "out_r","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "gmem1", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "id_num" : 1, "bitSlice":[ {"cElement": [{"cName": "b","offset": { "type": "dynamic","port_name": "b","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "a", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "b", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} , 
 	{ "Name" : "out_r", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":51}} , 
 	{ "Name" : "size", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 111
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_gmem0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem0_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem0_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem0_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_gmem0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem1_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem1_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_AWLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_gmem1_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem1_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem1_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem1_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem1_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_gmem1_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem1_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_ARLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_gmem1_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem1_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem1_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem1_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem1_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_gmem1_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem1_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem1_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem1_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem1_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem1_BUSER sc_in sc_lv 1 signal 1 } 
	{ size sc_in sc_lv 32 signal 5 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"mmult","role":"start","value":"0","valid_bit":"0"},{"name":"mmult","role":"continue","value":"0","valid_bit":"4"},{"name":"mmult","role":"auto_start","value":"0","valid_bit":"7"},{"name":"a","role":"data","value":"16"},{"name":"b","role":"data","value":"28"},{"name":"out_r","role":"data","value":"40"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"mmult","role":"start","value":"0","valid_bit":"0"},{"name":"mmult","role":"done","value":"0","valid_bit":"1"},{"name":"mmult","role":"idle","value":"0","valid_bit":"2"},{"name":"mmult","role":"ready","value":"0","valid_bit":"3"},{"name":"mmult","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_gmem0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WID" }} , 
 	{ "name": "m_axi_gmem0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RID" }} , 
 	{ "name": "m_axi_gmem0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BID" }} , 
 	{ "name": "m_axi_gmem0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem1", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WID" }} , 
 	{ "name": "m_axi_gmem1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem1", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RID" }} , 
 	{ "name": "m_axi_gmem1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BID" }} , 
 	{ "name": "m_axi_gmem1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BUSER" }} , 
 	{ "name": "size", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "size", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	mmult {
		gmem0 {Type IO LastRead 15 FirstWrite -1}
		gmem1 {Type I LastRead 1 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		out_r {Type I LastRead 0 FirstWrite -1}
		size {Type I LastRead -1 FirstWrite -1}}
	mmult_Pipeline_VITIS_LOOP_33_1_VITIS_LOOP_34_2 {
		gmem1 {Type I LastRead 1 FirstWrite -1}
		gmem0 {Type I LastRead 1 FirstWrite -1}
		sext_ln33_1 {Type I LastRead 0 FirstWrite -1}
		sext_ln33 {Type I LastRead 0 FirstWrite -1}
		localB {Type O LastRead -1 FirstWrite 2}
		localB_1 {Type O LastRead -1 FirstWrite 2}
		localB_2 {Type O LastRead -1 FirstWrite 2}
		localB_3 {Type O LastRead -1 FirstWrite 2}
		localB_4 {Type O LastRead -1 FirstWrite 2}
		localB_5 {Type O LastRead -1 FirstWrite 2}
		localB_6 {Type O LastRead -1 FirstWrite 2}
		localB_7 {Type O LastRead -1 FirstWrite 2}
		localB_8 {Type O LastRead -1 FirstWrite 2}
		localB_9 {Type O LastRead -1 FirstWrite 2}
		localB_10 {Type O LastRead -1 FirstWrite 2}
		localB_11 {Type O LastRead -1 FirstWrite 2}
		localB_12 {Type O LastRead -1 FirstWrite 2}
		localB_13 {Type O LastRead -1 FirstWrite 2}
		localB_14 {Type O LastRead -1 FirstWrite 2}
		localB_15 {Type O LastRead -1 FirstWrite 2}
		localA_15 {Type O LastRead -1 FirstWrite 2}
		localA_14 {Type O LastRead -1 FirstWrite 2}
		localA_13 {Type O LastRead -1 FirstWrite 2}
		localA_12 {Type O LastRead -1 FirstWrite 2}
		localA_11 {Type O LastRead -1 FirstWrite 2}
		localA_10 {Type O LastRead -1 FirstWrite 2}
		localA_9 {Type O LastRead -1 FirstWrite 2}
		localA_8 {Type O LastRead -1 FirstWrite 2}
		localA_7 {Type O LastRead -1 FirstWrite 2}
		localA_6 {Type O LastRead -1 FirstWrite 2}
		localA_5 {Type O LastRead -1 FirstWrite 2}
		localA_4 {Type O LastRead -1 FirstWrite 2}
		localA_3 {Type O LastRead -1 FirstWrite 2}
		localA_2 {Type O LastRead -1 FirstWrite 2}
		localA_1 {Type O LastRead -1 FirstWrite 2}
		localA {Type O LastRead -1 FirstWrite 2}
		arrayidx504_15_15_promoted1927_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_15_14_promoted1923_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_15_13_promoted1919_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_15_12_promoted1915_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_15_11_promoted1911_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_15_10_promoted1907_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_15_9_promoted1903_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_15_8_promoted1899_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_15_7_promoted1895_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_15_6_promoted1891_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_15_5_promoted1887_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_15_4_promoted1883_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_15_3_promoted1879_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_15_2_promoted1875_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_15_1_promoted1871_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_15_promoted1867_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_14_15_promoted1863_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_14_14_promoted1859_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_14_13_promoted1855_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_14_12_promoted1851_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_14_11_promoted1847_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_14_10_promoted1843_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_14_9_promoted1839_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_14_8_promoted1835_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_14_7_promoted1831_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_14_6_promoted1827_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_14_5_promoted1823_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_14_4_promoted1819_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_14_3_promoted1815_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_14_2_promoted1811_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_14_1_promoted1807_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_14_promoted1803_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_13_15_promoted1799_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_13_14_promoted1795_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_13_13_promoted1791_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_13_12_promoted1787_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_13_11_promoted1783_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_13_10_promoted1779_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_13_9_promoted1775_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_13_8_promoted1771_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_13_7_promoted1767_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_13_6_promoted1763_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_13_5_promoted1759_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_13_4_promoted1755_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_13_3_promoted1751_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_13_2_promoted1747_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_13_1_promoted1743_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_13_promoted1739_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_12_15_promoted1735_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_12_14_promoted1731_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_12_13_promoted1727_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_12_12_promoted1723_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_12_11_promoted1719_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_12_10_promoted1715_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_12_9_promoted1711_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_12_8_promoted1707_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_12_7_promoted1703_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_12_6_promoted1699_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_12_5_promoted1695_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_12_4_promoted1691_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_12_3_promoted1687_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_12_2_promoted1683_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_12_1_promoted1679_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_12_promoted1675_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_11_15_promoted1671_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_11_14_promoted1667_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_11_13_promoted1663_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_11_12_promoted1659_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_11_11_promoted1655_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_11_10_promoted1651_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_11_9_promoted1647_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_11_8_promoted1643_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_11_7_promoted1639_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_11_6_promoted1635_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_11_5_promoted1631_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_11_4_promoted1627_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_11_3_promoted1623_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_11_2_promoted1619_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_11_1_promoted1615_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_11_promoted1611_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_10_15_promoted1607_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_10_14_promoted1603_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_10_13_promoted1599_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_10_12_promoted1595_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_10_11_promoted1591_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_10_10_promoted1587_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_10_9_promoted1583_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_10_8_promoted1579_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_10_7_promoted1575_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_10_6_promoted1571_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_10_5_promoted1567_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_10_4_promoted1563_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_10_3_promoted1559_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_10_2_promoted1555_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_10_1_promoted1551_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_10_promoted1547_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_9_15_promoted1543_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_9_14_promoted1539_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_9_13_promoted1535_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_9_12_promoted1531_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_9_11_promoted1527_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_9_10_promoted1523_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_9_9_promoted1519_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_9_8_promoted1515_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_9_7_promoted1511_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_9_6_promoted1507_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_9_5_promoted1503_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_9_4_promoted1499_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_9_3_promoted1495_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_9_2_promoted1491_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_9_1_promoted1487_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_9_promoted1483_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_8_15_promoted1479_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_8_14_promoted1475_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_8_13_promoted1471_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_8_12_promoted1467_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_8_11_promoted1463_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_8_10_promoted1459_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_8_9_promoted1455_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_8_8_promoted1451_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_8_7_promoted1447_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_8_6_promoted1443_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_8_5_promoted1439_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_8_4_promoted1435_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_8_3_promoted1431_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_8_2_promoted1427_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_8_1_promoted1423_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_8_promoted1419_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_7_15_promoted1415_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_7_14_promoted1411_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_7_13_promoted1407_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_7_12_promoted1403_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_7_11_promoted1399_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_7_10_promoted1395_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_7_9_promoted1391_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_7_8_promoted1387_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_7_7_promoted1383_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_7_6_promoted1379_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_7_5_promoted1375_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_7_4_promoted1371_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_7_3_promoted1367_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_7_2_promoted1363_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_7_1_promoted1359_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_7_promoted1355_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_6_15_promoted1351_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_6_14_promoted1347_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_6_13_promoted1343_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_6_12_promoted1339_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_6_11_promoted1335_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_6_10_promoted1331_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_6_9_promoted1327_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_6_8_promoted1323_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_6_7_promoted1319_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_6_6_promoted1315_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_6_5_promoted1311_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_6_4_promoted1307_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_6_3_promoted1303_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_6_2_promoted1299_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_6_1_promoted1295_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_6_promoted1291_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_5_15_promoted1287_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_5_14_promoted1283_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_5_13_promoted1279_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_5_12_promoted1275_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_5_11_promoted1271_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_5_10_promoted1267_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_5_9_promoted1263_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_5_8_promoted1259_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_5_7_promoted1255_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_5_6_promoted1251_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_5_5_promoted1247_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_5_4_promoted1243_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_5_3_promoted1239_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_5_2_promoted1235_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_5_1_promoted1231_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_5_promoted1227_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_4_15_promoted1223_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_4_14_promoted1219_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_4_13_promoted1215_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_4_12_promoted1211_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_4_11_promoted1207_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_4_10_promoted1203_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_4_9_promoted1199_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_4_8_promoted1195_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_4_7_promoted1191_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_4_6_promoted1187_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_4_5_promoted1183_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_4_4_promoted1179_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_4_3_promoted1175_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_4_2_promoted1171_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_4_1_promoted1167_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_4_promoted1163_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_3_15_promoted1159_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_3_14_promoted1155_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_3_13_promoted1151_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_3_12_promoted1147_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_3_11_promoted1143_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_3_10_promoted1139_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_3_9_promoted1135_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_3_8_promoted1131_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_3_7_promoted1127_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_3_6_promoted1123_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_3_5_promoted1119_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_3_4_promoted1115_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_3_3_promoted1111_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_3_2_promoted1107_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_3_1_promoted1103_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_3_promoted1099_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_2_15_promoted1095_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_2_14_promoted1091_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_2_13_promoted1087_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_2_12_promoted1083_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_2_11_promoted1079_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_2_10_promoted1075_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_2_9_promoted1071_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_2_8_promoted1067_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_2_7_promoted1063_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_2_6_promoted1059_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_2_5_promoted1055_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_2_4_promoted1051_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_2_3_promoted1047_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_2_2_promoted1043_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_2_1_promoted1039_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_2_promoted1035_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_1_15_promoted1031_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_1_14_promoted1027_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_1_13_promoted1023_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_1_12_promoted1019_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_1_11_promoted1015_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_1_10_promoted1011_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_1_9_promoted1007_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_1_8_promoted1003_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_1_7_promoted999_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_1_6_promoted995_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_1_5_promoted991_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_1_4_promoted987_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_1_3_promoted983_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_1_2_promoted979_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_1_1_promoted975_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_1_promoted971_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_1587_promoted966_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_1482_promoted962_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_1377_promoted958_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_1272_promoted954_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_1167_promoted950_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_1062_promoted946_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_957_promoted942_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_852_promoted938_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_747_promoted934_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_642_promoted930_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_537_promoted926_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_432_promoted922_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_327_promoted918_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_222_promoted914_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_117_promoted910_out {Type O LastRead -1 FirstWrite 1}
		arrayidx504_promoted906_out {Type O LastRead -1 FirstWrite 1}}
	mmult_Pipeline_systolic1 {
		arrayidx504_15_15_promoted1927_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_15_14_promoted1923_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_15_13_promoted1919_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_15_12_promoted1915_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_15_11_promoted1911_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_15_10_promoted1907_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_15_9_promoted1903_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_15_8_promoted1899_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_15_7_promoted1895_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_15_6_promoted1891_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_15_5_promoted1887_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_15_4_promoted1883_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_15_3_promoted1879_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_15_2_promoted1875_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_15_1_promoted1871_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_15_promoted1867_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_14_15_promoted1863_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_14_14_promoted1859_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_14_13_promoted1855_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_14_12_promoted1851_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_14_11_promoted1847_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_14_10_promoted1843_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_14_9_promoted1839_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_14_8_promoted1835_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_14_7_promoted1831_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_14_6_promoted1827_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_14_5_promoted1823_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_14_4_promoted1819_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_14_3_promoted1815_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_14_2_promoted1811_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_14_1_promoted1807_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_14_promoted1803_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_13_15_promoted1799_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_13_14_promoted1795_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_13_13_promoted1791_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_13_12_promoted1787_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_13_11_promoted1783_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_13_10_promoted1779_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_13_9_promoted1775_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_13_8_promoted1771_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_13_7_promoted1767_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_13_6_promoted1763_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_13_5_promoted1759_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_13_4_promoted1755_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_13_3_promoted1751_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_13_2_promoted1747_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_13_1_promoted1743_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_13_promoted1739_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_12_15_promoted1735_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_12_14_promoted1731_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_12_13_promoted1727_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_12_12_promoted1723_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_12_11_promoted1719_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_12_10_promoted1715_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_12_9_promoted1711_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_12_8_promoted1707_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_12_7_promoted1703_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_12_6_promoted1699_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_12_5_promoted1695_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_12_4_promoted1691_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_12_3_promoted1687_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_12_2_promoted1683_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_12_1_promoted1679_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_12_promoted1675_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_11_15_promoted1671_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_11_14_promoted1667_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_11_13_promoted1663_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_11_12_promoted1659_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_11_11_promoted1655_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_11_10_promoted1651_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_11_9_promoted1647_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_11_8_promoted1643_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_11_7_promoted1639_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_11_6_promoted1635_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_11_5_promoted1631_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_11_4_promoted1627_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_11_3_promoted1623_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_11_2_promoted1619_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_11_1_promoted1615_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_11_promoted1611_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_10_15_promoted1607_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_10_14_promoted1603_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_10_13_promoted1599_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_10_12_promoted1595_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_10_11_promoted1591_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_10_10_promoted1587_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_10_9_promoted1583_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_10_8_promoted1579_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_10_7_promoted1575_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_10_6_promoted1571_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_10_5_promoted1567_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_10_4_promoted1563_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_10_3_promoted1559_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_10_2_promoted1555_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_10_1_promoted1551_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_10_promoted1547_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_9_15_promoted1543_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_9_14_promoted1539_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_9_13_promoted1535_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_9_12_promoted1531_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_9_11_promoted1527_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_9_10_promoted1523_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_9_9_promoted1519_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_9_8_promoted1515_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_9_7_promoted1511_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_9_6_promoted1507_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_9_5_promoted1503_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_9_4_promoted1499_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_9_3_promoted1495_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_9_2_promoted1491_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_9_1_promoted1487_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_9_promoted1483_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_8_15_promoted1479_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_8_14_promoted1475_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_8_13_promoted1471_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_8_12_promoted1467_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_8_11_promoted1463_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_8_10_promoted1459_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_8_9_promoted1455_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_8_8_promoted1451_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_8_7_promoted1447_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_8_6_promoted1443_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_8_5_promoted1439_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_8_4_promoted1435_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_8_3_promoted1431_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_8_2_promoted1427_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_8_1_promoted1423_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_8_promoted1419_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_7_15_promoted1415_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_7_14_promoted1411_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_7_13_promoted1407_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_7_12_promoted1403_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_7_11_promoted1399_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_7_10_promoted1395_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_7_9_promoted1391_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_7_8_promoted1387_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_7_7_promoted1383_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_7_6_promoted1379_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_7_5_promoted1375_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_7_4_promoted1371_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_7_3_promoted1367_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_7_2_promoted1363_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_7_1_promoted1359_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_7_promoted1355_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_6_15_promoted1351_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_6_14_promoted1347_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_6_13_promoted1343_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_6_12_promoted1339_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_6_11_promoted1335_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_6_10_promoted1331_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_6_9_promoted1327_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_6_8_promoted1323_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_6_7_promoted1319_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_6_6_promoted1315_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_6_5_promoted1311_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_6_4_promoted1307_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_6_3_promoted1303_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_6_2_promoted1299_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_6_1_promoted1295_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_6_promoted1291_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_5_15_promoted1287_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_5_14_promoted1283_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_5_13_promoted1279_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_5_12_promoted1275_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_5_11_promoted1271_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_5_10_promoted1267_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_5_9_promoted1263_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_5_8_promoted1259_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_5_7_promoted1255_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_5_6_promoted1251_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_5_5_promoted1247_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_5_4_promoted1243_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_5_3_promoted1239_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_5_2_promoted1235_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_5_1_promoted1231_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_5_promoted1227_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_4_15_promoted1223_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_4_14_promoted1219_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_4_13_promoted1215_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_4_12_promoted1211_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_4_11_promoted1207_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_4_10_promoted1203_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_4_9_promoted1199_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_4_8_promoted1195_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_4_7_promoted1191_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_4_6_promoted1187_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_4_5_promoted1183_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_4_4_promoted1179_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_4_3_promoted1175_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_4_2_promoted1171_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_4_1_promoted1167_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_4_promoted1163_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_3_15_promoted1159_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_3_14_promoted1155_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_3_13_promoted1151_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_3_12_promoted1147_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_3_11_promoted1143_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_3_10_promoted1139_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_3_9_promoted1135_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_3_8_promoted1131_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_3_7_promoted1127_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_3_6_promoted1123_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_3_5_promoted1119_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_3_4_promoted1115_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_3_3_promoted1111_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_3_2_promoted1107_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_3_1_promoted1103_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_3_promoted1099_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_2_15_promoted1095_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_2_14_promoted1091_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_2_13_promoted1087_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_2_12_promoted1083_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_2_11_promoted1079_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_2_10_promoted1075_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_2_9_promoted1071_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_2_8_promoted1067_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_2_7_promoted1063_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_2_6_promoted1059_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_2_5_promoted1055_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_2_4_promoted1051_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_2_3_promoted1047_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_2_2_promoted1043_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_2_1_promoted1039_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_2_promoted1035_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_1_15_promoted1031_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_1_14_promoted1027_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_1_13_promoted1023_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_1_12_promoted1019_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_1_11_promoted1015_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_1_10_promoted1011_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_1_9_promoted1007_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_1_8_promoted1003_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_1_7_promoted999_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_1_6_promoted995_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_1_5_promoted991_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_1_4_promoted987_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_1_3_promoted983_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_1_2_promoted979_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_1_1_promoted975_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_1_promoted971_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_1587_promoted966_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_1482_promoted962_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_1377_promoted958_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_1272_promoted954_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_1167_promoted950_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_1062_promoted946_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_957_promoted942_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_852_promoted938_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_747_promoted934_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_642_promoted930_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_537_promoted926_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_432_promoted922_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_327_promoted918_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_222_promoted914_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_117_promoted910_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx504_promoted906_reload {Type I LastRead 0 FirstWrite -1}
		localA {Type I LastRead 0 FirstWrite -1}
		localB {Type I LastRead 0 FirstWrite -1}
		localB_1 {Type I LastRead 0 FirstWrite -1}
		localB_2 {Type I LastRead 0 FirstWrite -1}
		localB_3 {Type I LastRead 0 FirstWrite -1}
		localB_4 {Type I LastRead 0 FirstWrite -1}
		localB_5 {Type I LastRead 0 FirstWrite -1}
		localB_6 {Type I LastRead 0 FirstWrite -1}
		localB_7 {Type I LastRead 0 FirstWrite -1}
		localB_8 {Type I LastRead 0 FirstWrite -1}
		localB_9 {Type I LastRead 0 FirstWrite -1}
		localB_10 {Type I LastRead 0 FirstWrite -1}
		localB_11 {Type I LastRead 0 FirstWrite -1}
		localB_12 {Type I LastRead 0 FirstWrite -1}
		localB_13 {Type I LastRead 0 FirstWrite -1}
		localB_14 {Type I LastRead 0 FirstWrite -1}
		localB_15 {Type I LastRead 0 FirstWrite -1}
		localA_1 {Type I LastRead 0 FirstWrite -1}
		localA_2 {Type I LastRead 0 FirstWrite -1}
		localA_3 {Type I LastRead 0 FirstWrite -1}
		localA_4 {Type I LastRead 0 FirstWrite -1}
		localA_5 {Type I LastRead 0 FirstWrite -1}
		localA_6 {Type I LastRead 0 FirstWrite -1}
		localA_7 {Type I LastRead 0 FirstWrite -1}
		localA_8 {Type I LastRead 0 FirstWrite -1}
		localA_9 {Type I LastRead 0 FirstWrite -1}
		localA_10 {Type I LastRead 0 FirstWrite -1}
		localA_11 {Type I LastRead 0 FirstWrite -1}
		localA_12 {Type I LastRead 0 FirstWrite -1}
		localA_13 {Type I LastRead 0 FirstWrite -1}
		localA_14 {Type I LastRead 0 FirstWrite -1}
		localA_15 {Type I LastRead 0 FirstWrite -1}
		add51_15_15344_out {Type O LastRead -1 FirstWrite 3}
		add51_15_14343_out {Type O LastRead -1 FirstWrite 3}
		add51_15_13342_out {Type O LastRead -1 FirstWrite 3}
		add51_15_12341_out {Type O LastRead -1 FirstWrite 3}
		add51_15_11340_out {Type O LastRead -1 FirstWrite 3}
		add51_15_10339_out {Type O LastRead -1 FirstWrite 3}
		add51_15_9338_out {Type O LastRead -1 FirstWrite 3}
		add51_15_8337_out {Type O LastRead -1 FirstWrite 3}
		add51_15_7336_out {Type O LastRead -1 FirstWrite 3}
		add51_15_6335_out {Type O LastRead -1 FirstWrite 3}
		add51_15_5334_out {Type O LastRead -1 FirstWrite 3}
		add51_15_4333_out {Type O LastRead -1 FirstWrite 3}
		add51_15_3332_out {Type O LastRead -1 FirstWrite 3}
		add51_15_2331_out {Type O LastRead -1 FirstWrite 3}
		add51_15_1330_out {Type O LastRead -1 FirstWrite 3}
		add51_15329_out {Type O LastRead -1 FirstWrite 3}
		add51_14_15328_out {Type O LastRead -1 FirstWrite 3}
		add51_14_14327_out {Type O LastRead -1 FirstWrite 3}
		add51_14_13326_out {Type O LastRead -1 FirstWrite 3}
		add51_14_12325_out {Type O LastRead -1 FirstWrite 3}
		add51_14_11324_out {Type O LastRead -1 FirstWrite 3}
		add51_14_10323_out {Type O LastRead -1 FirstWrite 3}
		add51_14_9322_out {Type O LastRead -1 FirstWrite 3}
		add51_14_8321_out {Type O LastRead -1 FirstWrite 3}
		add51_14_7320_out {Type O LastRead -1 FirstWrite 3}
		add51_14_6319_out {Type O LastRead -1 FirstWrite 3}
		add51_14_5318_out {Type O LastRead -1 FirstWrite 3}
		add51_14_4317_out {Type O LastRead -1 FirstWrite 3}
		add51_14_3316_out {Type O LastRead -1 FirstWrite 3}
		add51_14_2315_out {Type O LastRead -1 FirstWrite 3}
		add51_14_1314_out {Type O LastRead -1 FirstWrite 3}
		add51_14313_out {Type O LastRead -1 FirstWrite 3}
		add51_13_15312_out {Type O LastRead -1 FirstWrite 3}
		add51_13_14311_out {Type O LastRead -1 FirstWrite 3}
		add51_13_13310_out {Type O LastRead -1 FirstWrite 3}
		add51_13_12309_out {Type O LastRead -1 FirstWrite 3}
		add51_13_11308_out {Type O LastRead -1 FirstWrite 3}
		add51_13_10307_out {Type O LastRead -1 FirstWrite 3}
		add51_13_9306_out {Type O LastRead -1 FirstWrite 3}
		add51_13_8305_out {Type O LastRead -1 FirstWrite 3}
		add51_13_7304_out {Type O LastRead -1 FirstWrite 3}
		add51_13_6303_out {Type O LastRead -1 FirstWrite 3}
		add51_13_5302_out {Type O LastRead -1 FirstWrite 3}
		add51_13_4301_out {Type O LastRead -1 FirstWrite 3}
		add51_13_3300_out {Type O LastRead -1 FirstWrite 3}
		add51_13_2299_out {Type O LastRead -1 FirstWrite 3}
		add51_13_1298_out {Type O LastRead -1 FirstWrite 3}
		add51_13297_out {Type O LastRead -1 FirstWrite 3}
		add51_12_15296_out {Type O LastRead -1 FirstWrite 3}
		add51_12_14295_out {Type O LastRead -1 FirstWrite 3}
		add51_12_13294_out {Type O LastRead -1 FirstWrite 3}
		add51_12_12293_out {Type O LastRead -1 FirstWrite 3}
		add51_12_11292_out {Type O LastRead -1 FirstWrite 3}
		add51_12_10291_out {Type O LastRead -1 FirstWrite 3}
		add51_12_9290_out {Type O LastRead -1 FirstWrite 3}
		add51_12_8289_out {Type O LastRead -1 FirstWrite 3}
		add51_12_7288_out {Type O LastRead -1 FirstWrite 3}
		add51_12_6287_out {Type O LastRead -1 FirstWrite 3}
		add51_12_5286_out {Type O LastRead -1 FirstWrite 3}
		add51_12_4285_out {Type O LastRead -1 FirstWrite 3}
		add51_12_3284_out {Type O LastRead -1 FirstWrite 3}
		add51_12_2283_out {Type O LastRead -1 FirstWrite 3}
		add51_12_1282_out {Type O LastRead -1 FirstWrite 3}
		add51_12281_out {Type O LastRead -1 FirstWrite 3}
		add51_11_15280_out {Type O LastRead -1 FirstWrite 3}
		add51_11_14279_out {Type O LastRead -1 FirstWrite 3}
		add51_11_13278_out {Type O LastRead -1 FirstWrite 3}
		add51_11_12277_out {Type O LastRead -1 FirstWrite 3}
		add51_11_11276_out {Type O LastRead -1 FirstWrite 3}
		add51_11_10275_out {Type O LastRead -1 FirstWrite 3}
		add51_11_9274_out {Type O LastRead -1 FirstWrite 3}
		add51_11_8273_out {Type O LastRead -1 FirstWrite 3}
		add51_11_7272_out {Type O LastRead -1 FirstWrite 3}
		add51_11_6271_out {Type O LastRead -1 FirstWrite 3}
		add51_11_5270_out {Type O LastRead -1 FirstWrite 3}
		add51_11_4269_out {Type O LastRead -1 FirstWrite 3}
		add51_11_3268_out {Type O LastRead -1 FirstWrite 3}
		add51_11_2267_out {Type O LastRead -1 FirstWrite 3}
		add51_11_1266_out {Type O LastRead -1 FirstWrite 3}
		add51_11265_out {Type O LastRead -1 FirstWrite 3}
		add51_10_15264_out {Type O LastRead -1 FirstWrite 3}
		add51_10_14263_out {Type O LastRead -1 FirstWrite 3}
		add51_10_13262_out {Type O LastRead -1 FirstWrite 3}
		add51_10_12261_out {Type O LastRead -1 FirstWrite 3}
		add51_10_11260_out {Type O LastRead -1 FirstWrite 3}
		add51_10_10259_out {Type O LastRead -1 FirstWrite 3}
		add51_10_9258_out {Type O LastRead -1 FirstWrite 3}
		add51_10_8257_out {Type O LastRead -1 FirstWrite 3}
		add51_10_7256_out {Type O LastRead -1 FirstWrite 3}
		add51_10_6255_out {Type O LastRead -1 FirstWrite 3}
		add51_10_5254_out {Type O LastRead -1 FirstWrite 3}
		add51_10_4253_out {Type O LastRead -1 FirstWrite 3}
		add51_10_3252_out {Type O LastRead -1 FirstWrite 3}
		add51_10_2251_out {Type O LastRead -1 FirstWrite 3}
		add51_10_1250_out {Type O LastRead -1 FirstWrite 3}
		add51_10249_out {Type O LastRead -1 FirstWrite 3}
		add51_9_15248_out {Type O LastRead -1 FirstWrite 3}
		add51_9_14247_out {Type O LastRead -1 FirstWrite 3}
		add51_9_13246_out {Type O LastRead -1 FirstWrite 3}
		add51_9_12245_out {Type O LastRead -1 FirstWrite 3}
		add51_9_11244_out {Type O LastRead -1 FirstWrite 3}
		add51_9_10243_out {Type O LastRead -1 FirstWrite 3}
		add51_9_9242_out {Type O LastRead -1 FirstWrite 3}
		add51_9_8241_out {Type O LastRead -1 FirstWrite 3}
		add51_9_7240_out {Type O LastRead -1 FirstWrite 3}
		add51_9_6239_out {Type O LastRead -1 FirstWrite 3}
		add51_9_5238_out {Type O LastRead -1 FirstWrite 3}
		add51_9_4237_out {Type O LastRead -1 FirstWrite 3}
		add51_9_3236_out {Type O LastRead -1 FirstWrite 3}
		add51_9_2235_out {Type O LastRead -1 FirstWrite 3}
		add51_9_1234_out {Type O LastRead -1 FirstWrite 3}
		add51_9233_out {Type O LastRead -1 FirstWrite 3}
		add51_8_15232_out {Type O LastRead -1 FirstWrite 3}
		add51_8_14231_out {Type O LastRead -1 FirstWrite 3}
		add51_8_13230_out {Type O LastRead -1 FirstWrite 3}
		add51_8_12229_out {Type O LastRead -1 FirstWrite 3}
		add51_8_11228_out {Type O LastRead -1 FirstWrite 3}
		add51_8_10227_out {Type O LastRead -1 FirstWrite 3}
		add51_8_9226_out {Type O LastRead -1 FirstWrite 3}
		add51_8_8225_out {Type O LastRead -1 FirstWrite 3}
		add51_8_7224_out {Type O LastRead -1 FirstWrite 3}
		add51_8_6223_out {Type O LastRead -1 FirstWrite 3}
		add51_8_5222_out {Type O LastRead -1 FirstWrite 3}
		add51_8_4221_out {Type O LastRead -1 FirstWrite 3}
		add51_8_3220_out {Type O LastRead -1 FirstWrite 3}
		add51_8_2219_out {Type O LastRead -1 FirstWrite 3}
		add51_8_1218_out {Type O LastRead -1 FirstWrite 3}
		add51_8217_out {Type O LastRead -1 FirstWrite 3}
		add51_7_15216_out {Type O LastRead -1 FirstWrite 3}
		add51_7_14215_out {Type O LastRead -1 FirstWrite 3}
		add51_7_13214_out {Type O LastRead -1 FirstWrite 3}
		add51_7_12213_out {Type O LastRead -1 FirstWrite 3}
		add51_7_11212_out {Type O LastRead -1 FirstWrite 3}
		add51_7_10211_out {Type O LastRead -1 FirstWrite 3}
		add51_7_9210_out {Type O LastRead -1 FirstWrite 3}
		add51_7_8209_out {Type O LastRead -1 FirstWrite 3}
		add51_7_7208_out {Type O LastRead -1 FirstWrite 3}
		add51_7_6207_out {Type O LastRead -1 FirstWrite 3}
		add51_7_5206_out {Type O LastRead -1 FirstWrite 3}
		add51_7_4205_out {Type O LastRead -1 FirstWrite 3}
		add51_7_3204_out {Type O LastRead -1 FirstWrite 3}
		add51_7_2203_out {Type O LastRead -1 FirstWrite 3}
		add51_7_1202_out {Type O LastRead -1 FirstWrite 3}
		add51_7201_out {Type O LastRead -1 FirstWrite 3}
		add51_6_15200_out {Type O LastRead -1 FirstWrite 3}
		add51_6_14199_out {Type O LastRead -1 FirstWrite 3}
		add51_6_13198_out {Type O LastRead -1 FirstWrite 3}
		add51_6_12197_out {Type O LastRead -1 FirstWrite 3}
		add51_6_11196_out {Type O LastRead -1 FirstWrite 3}
		add51_6_10195_out {Type O LastRead -1 FirstWrite 3}
		add51_6_9194_out {Type O LastRead -1 FirstWrite 3}
		add51_6_8193_out {Type O LastRead -1 FirstWrite 3}
		add51_6_7192_out {Type O LastRead -1 FirstWrite 3}
		add51_6_6191_out {Type O LastRead -1 FirstWrite 3}
		add51_6_5190_out {Type O LastRead -1 FirstWrite 3}
		add51_6_4189_out {Type O LastRead -1 FirstWrite 3}
		add51_6_3188_out {Type O LastRead -1 FirstWrite 3}
		add51_6_2187_out {Type O LastRead -1 FirstWrite 3}
		add51_6_1186_out {Type O LastRead -1 FirstWrite 3}
		add51_6185_out {Type O LastRead -1 FirstWrite 3}
		add51_5_15184_out {Type O LastRead -1 FirstWrite 3}
		add51_5_14183_out {Type O LastRead -1 FirstWrite 3}
		add51_5_13182_out {Type O LastRead -1 FirstWrite 3}
		add51_5_12181_out {Type O LastRead -1 FirstWrite 3}
		add51_5_11180_out {Type O LastRead -1 FirstWrite 3}
		add51_5_10179_out {Type O LastRead -1 FirstWrite 3}
		add51_5_9178_out {Type O LastRead -1 FirstWrite 3}
		add51_5_8177_out {Type O LastRead -1 FirstWrite 3}
		add51_5_7176_out {Type O LastRead -1 FirstWrite 3}
		add51_5_6175_out {Type O LastRead -1 FirstWrite 3}
		add51_5_5174_out {Type O LastRead -1 FirstWrite 3}
		add51_5_4173_out {Type O LastRead -1 FirstWrite 3}
		add51_5_3172_out {Type O LastRead -1 FirstWrite 3}
		add51_5_2171_out {Type O LastRead -1 FirstWrite 3}
		add51_5_1170_out {Type O LastRead -1 FirstWrite 3}
		add51_5169_out {Type O LastRead -1 FirstWrite 3}
		add51_4_15168_out {Type O LastRead -1 FirstWrite 3}
		add51_4_14167_out {Type O LastRead -1 FirstWrite 3}
		add51_4_13166_out {Type O LastRead -1 FirstWrite 3}
		add51_4_12165_out {Type O LastRead -1 FirstWrite 3}
		add51_4_11164_out {Type O LastRead -1 FirstWrite 3}
		add51_4_10163_out {Type O LastRead -1 FirstWrite 3}
		add51_4_9162_out {Type O LastRead -1 FirstWrite 3}
		add51_4_8161_out {Type O LastRead -1 FirstWrite 3}
		add51_4_7160_out {Type O LastRead -1 FirstWrite 3}
		add51_4_6159_out {Type O LastRead -1 FirstWrite 3}
		add51_4_5158_out {Type O LastRead -1 FirstWrite 3}
		add51_4_4157_out {Type O LastRead -1 FirstWrite 3}
		add51_4_3156_out {Type O LastRead -1 FirstWrite 3}
		add51_4_2155_out {Type O LastRead -1 FirstWrite 3}
		add51_4_1154_out {Type O LastRead -1 FirstWrite 3}
		add51_4153_out {Type O LastRead -1 FirstWrite 3}
		add51_3_15152_out {Type O LastRead -1 FirstWrite 3}
		add51_3_14151_out {Type O LastRead -1 FirstWrite 3}
		add51_3_13150_out {Type O LastRead -1 FirstWrite 3}
		add51_3_12149_out {Type O LastRead -1 FirstWrite 3}
		add51_3_11148_out {Type O LastRead -1 FirstWrite 3}
		add51_3_10147_out {Type O LastRead -1 FirstWrite 3}
		add51_3_9146_out {Type O LastRead -1 FirstWrite 3}
		add51_3_8145_out {Type O LastRead -1 FirstWrite 3}
		add51_3_7144_out {Type O LastRead -1 FirstWrite 3}
		add51_3_6143_out {Type O LastRead -1 FirstWrite 3}
		add51_3_5142_out {Type O LastRead -1 FirstWrite 3}
		add51_3_4141_out {Type O LastRead -1 FirstWrite 3}
		add51_3_3140_out {Type O LastRead -1 FirstWrite 3}
		add51_3_2139_out {Type O LastRead -1 FirstWrite 3}
		add51_3_1138_out {Type O LastRead -1 FirstWrite 3}
		add51_3137_out {Type O LastRead -1 FirstWrite 3}
		add51_2_15136_out {Type O LastRead -1 FirstWrite 3}
		add51_2_14135_out {Type O LastRead -1 FirstWrite 3}
		add51_2_13134_out {Type O LastRead -1 FirstWrite 3}
		add51_2_12133_out {Type O LastRead -1 FirstWrite 3}
		add51_2_11132_out {Type O LastRead -1 FirstWrite 3}
		add51_2_10131_out {Type O LastRead -1 FirstWrite 3}
		add51_2_9130_out {Type O LastRead -1 FirstWrite 3}
		add51_2_8129_out {Type O LastRead -1 FirstWrite 3}
		add51_2_7128_out {Type O LastRead -1 FirstWrite 3}
		add51_2_6127_out {Type O LastRead -1 FirstWrite 3}
		add51_2_5126_out {Type O LastRead -1 FirstWrite 3}
		add51_2_4125_out {Type O LastRead -1 FirstWrite 3}
		add51_2_3124_out {Type O LastRead -1 FirstWrite 3}
		add51_2_2123_out {Type O LastRead -1 FirstWrite 3}
		add51_2_1122_out {Type O LastRead -1 FirstWrite 3}
		add51_2121_out {Type O LastRead -1 FirstWrite 3}
		add51_1_15120_out {Type O LastRead -1 FirstWrite 3}
		add51_1_14119_out {Type O LastRead -1 FirstWrite 3}
		add51_1_13118_out {Type O LastRead -1 FirstWrite 3}
		add51_1_12117_out {Type O LastRead -1 FirstWrite 3}
		add51_1_11116_out {Type O LastRead -1 FirstWrite 3}
		add51_1_10115_out {Type O LastRead -1 FirstWrite 3}
		add51_1_9114_out {Type O LastRead -1 FirstWrite 3}
		add51_1_8113_out {Type O LastRead -1 FirstWrite 3}
		add51_1_7112_out {Type O LastRead -1 FirstWrite 3}
		add51_1_6111_out {Type O LastRead -1 FirstWrite 3}
		add51_1_5110_out {Type O LastRead -1 FirstWrite 3}
		add51_1_4109_out {Type O LastRead -1 FirstWrite 3}
		add51_1_3108_out {Type O LastRead -1 FirstWrite 3}
		add51_1_2107_out {Type O LastRead -1 FirstWrite 3}
		add51_1_1106_out {Type O LastRead -1 FirstWrite 3}
		add51_1105_out {Type O LastRead -1 FirstWrite 3}
		add51_1588104_out {Type O LastRead -1 FirstWrite 3}
		add51_1483103_out {Type O LastRead -1 FirstWrite 3}
		add51_1378102_out {Type O LastRead -1 FirstWrite 3}
		add51_1273101_out {Type O LastRead -1 FirstWrite 3}
		add51_1168100_out {Type O LastRead -1 FirstWrite 3}
		add51_106399_out {Type O LastRead -1 FirstWrite 3}
		add51_95898_out {Type O LastRead -1 FirstWrite 3}
		add51_85397_out {Type O LastRead -1 FirstWrite 3}
		add51_74896_out {Type O LastRead -1 FirstWrite 3}
		add51_64395_out {Type O LastRead -1 FirstWrite 3}
		add51_53894_out {Type O LastRead -1 FirstWrite 3}
		add51_43393_out {Type O LastRead -1 FirstWrite 3}
		add51_32892_out {Type O LastRead -1 FirstWrite 3}
		add51_22391_out {Type O LastRead -1 FirstWrite 3}
		add51_11890_out {Type O LastRead -1 FirstWrite 3}
		p_out {Type O LastRead -1 FirstWrite 3}}
	mmult_Pipeline_VITIS_LOOP_59_3_VITIS_LOOP_60_4 {
		gmem0 {Type O LastRead -1 FirstWrite 2}
		sext_ln59 {Type I LastRead 0 FirstWrite -1}
		p_reload {Type I LastRead 0 FirstWrite -1}
		add51_11890_reload {Type I LastRead 0 FirstWrite -1}
		add51_22391_reload {Type I LastRead 0 FirstWrite -1}
		add51_32892_reload {Type I LastRead 0 FirstWrite -1}
		add51_43393_reload {Type I LastRead 0 FirstWrite -1}
		add51_53894_reload {Type I LastRead 0 FirstWrite -1}
		add51_64395_reload {Type I LastRead 0 FirstWrite -1}
		add51_74896_reload {Type I LastRead 0 FirstWrite -1}
		add51_85397_reload {Type I LastRead 0 FirstWrite -1}
		add51_95898_reload {Type I LastRead 0 FirstWrite -1}
		add51_106399_reload {Type I LastRead 0 FirstWrite -1}
		add51_1168100_reload {Type I LastRead 0 FirstWrite -1}
		add51_1273101_reload {Type I LastRead 0 FirstWrite -1}
		add51_1378102_reload {Type I LastRead 0 FirstWrite -1}
		add51_1483103_reload {Type I LastRead 0 FirstWrite -1}
		add51_1588104_reload {Type I LastRead 0 FirstWrite -1}
		add51_1105_reload {Type I LastRead 0 FirstWrite -1}
		add51_1_1106_reload {Type I LastRead 0 FirstWrite -1}
		add51_1_2107_reload {Type I LastRead 0 FirstWrite -1}
		add51_1_3108_reload {Type I LastRead 0 FirstWrite -1}
		add51_1_4109_reload {Type I LastRead 0 FirstWrite -1}
		add51_1_5110_reload {Type I LastRead 0 FirstWrite -1}
		add51_1_6111_reload {Type I LastRead 0 FirstWrite -1}
		add51_1_7112_reload {Type I LastRead 0 FirstWrite -1}
		add51_1_8113_reload {Type I LastRead 0 FirstWrite -1}
		add51_1_9114_reload {Type I LastRead 0 FirstWrite -1}
		add51_1_10115_reload {Type I LastRead 0 FirstWrite -1}
		add51_1_11116_reload {Type I LastRead 0 FirstWrite -1}
		add51_1_12117_reload {Type I LastRead 0 FirstWrite -1}
		add51_1_13118_reload {Type I LastRead 0 FirstWrite -1}
		add51_1_14119_reload {Type I LastRead 0 FirstWrite -1}
		add51_1_15120_reload {Type I LastRead 0 FirstWrite -1}
		add51_2121_reload {Type I LastRead 0 FirstWrite -1}
		add51_2_1122_reload {Type I LastRead 0 FirstWrite -1}
		add51_2_2123_reload {Type I LastRead 0 FirstWrite -1}
		add51_2_3124_reload {Type I LastRead 0 FirstWrite -1}
		add51_2_4125_reload {Type I LastRead 0 FirstWrite -1}
		add51_2_5126_reload {Type I LastRead 0 FirstWrite -1}
		add51_2_6127_reload {Type I LastRead 0 FirstWrite -1}
		add51_2_7128_reload {Type I LastRead 0 FirstWrite -1}
		add51_2_8129_reload {Type I LastRead 0 FirstWrite -1}
		add51_2_9130_reload {Type I LastRead 0 FirstWrite -1}
		add51_2_10131_reload {Type I LastRead 0 FirstWrite -1}
		add51_2_11132_reload {Type I LastRead 0 FirstWrite -1}
		add51_2_12133_reload {Type I LastRead 0 FirstWrite -1}
		add51_2_13134_reload {Type I LastRead 0 FirstWrite -1}
		add51_2_14135_reload {Type I LastRead 0 FirstWrite -1}
		add51_2_15136_reload {Type I LastRead 0 FirstWrite -1}
		add51_3137_reload {Type I LastRead 0 FirstWrite -1}
		add51_3_1138_reload {Type I LastRead 0 FirstWrite -1}
		add51_3_2139_reload {Type I LastRead 0 FirstWrite -1}
		add51_3_3140_reload {Type I LastRead 0 FirstWrite -1}
		add51_3_4141_reload {Type I LastRead 0 FirstWrite -1}
		add51_3_5142_reload {Type I LastRead 0 FirstWrite -1}
		add51_3_6143_reload {Type I LastRead 0 FirstWrite -1}
		add51_3_7144_reload {Type I LastRead 0 FirstWrite -1}
		add51_3_8145_reload {Type I LastRead 0 FirstWrite -1}
		add51_3_9146_reload {Type I LastRead 0 FirstWrite -1}
		add51_3_10147_reload {Type I LastRead 0 FirstWrite -1}
		add51_3_11148_reload {Type I LastRead 0 FirstWrite -1}
		add51_3_12149_reload {Type I LastRead 0 FirstWrite -1}
		add51_3_13150_reload {Type I LastRead 0 FirstWrite -1}
		add51_3_14151_reload {Type I LastRead 0 FirstWrite -1}
		add51_3_15152_reload {Type I LastRead 0 FirstWrite -1}
		add51_4153_reload {Type I LastRead 0 FirstWrite -1}
		add51_4_1154_reload {Type I LastRead 0 FirstWrite -1}
		add51_4_2155_reload {Type I LastRead 0 FirstWrite -1}
		add51_4_3156_reload {Type I LastRead 0 FirstWrite -1}
		add51_4_4157_reload {Type I LastRead 0 FirstWrite -1}
		add51_4_5158_reload {Type I LastRead 0 FirstWrite -1}
		add51_4_6159_reload {Type I LastRead 0 FirstWrite -1}
		add51_4_7160_reload {Type I LastRead 0 FirstWrite -1}
		add51_4_8161_reload {Type I LastRead 0 FirstWrite -1}
		add51_4_9162_reload {Type I LastRead 0 FirstWrite -1}
		add51_4_10163_reload {Type I LastRead 0 FirstWrite -1}
		add51_4_11164_reload {Type I LastRead 0 FirstWrite -1}
		add51_4_12165_reload {Type I LastRead 0 FirstWrite -1}
		add51_4_13166_reload {Type I LastRead 0 FirstWrite -1}
		add51_4_14167_reload {Type I LastRead 0 FirstWrite -1}
		add51_4_15168_reload {Type I LastRead 0 FirstWrite -1}
		add51_5169_reload {Type I LastRead 0 FirstWrite -1}
		add51_5_1170_reload {Type I LastRead 0 FirstWrite -1}
		add51_5_2171_reload {Type I LastRead 0 FirstWrite -1}
		add51_5_3172_reload {Type I LastRead 0 FirstWrite -1}
		add51_5_4173_reload {Type I LastRead 0 FirstWrite -1}
		add51_5_5174_reload {Type I LastRead 0 FirstWrite -1}
		add51_5_6175_reload {Type I LastRead 0 FirstWrite -1}
		add51_5_7176_reload {Type I LastRead 0 FirstWrite -1}
		add51_5_8177_reload {Type I LastRead 0 FirstWrite -1}
		add51_5_9178_reload {Type I LastRead 0 FirstWrite -1}
		add51_5_10179_reload {Type I LastRead 0 FirstWrite -1}
		add51_5_11180_reload {Type I LastRead 0 FirstWrite -1}
		add51_5_12181_reload {Type I LastRead 0 FirstWrite -1}
		add51_5_13182_reload {Type I LastRead 0 FirstWrite -1}
		add51_5_14183_reload {Type I LastRead 0 FirstWrite -1}
		add51_5_15184_reload {Type I LastRead 0 FirstWrite -1}
		add51_6185_reload {Type I LastRead 0 FirstWrite -1}
		add51_6_1186_reload {Type I LastRead 0 FirstWrite -1}
		add51_6_2187_reload {Type I LastRead 0 FirstWrite -1}
		add51_6_3188_reload {Type I LastRead 0 FirstWrite -1}
		add51_6_4189_reload {Type I LastRead 0 FirstWrite -1}
		add51_6_5190_reload {Type I LastRead 0 FirstWrite -1}
		add51_6_6191_reload {Type I LastRead 0 FirstWrite -1}
		add51_6_7192_reload {Type I LastRead 0 FirstWrite -1}
		add51_6_8193_reload {Type I LastRead 0 FirstWrite -1}
		add51_6_9194_reload {Type I LastRead 0 FirstWrite -1}
		add51_6_10195_reload {Type I LastRead 0 FirstWrite -1}
		add51_6_11196_reload {Type I LastRead 0 FirstWrite -1}
		add51_6_12197_reload {Type I LastRead 0 FirstWrite -1}
		add51_6_13198_reload {Type I LastRead 0 FirstWrite -1}
		add51_6_14199_reload {Type I LastRead 0 FirstWrite -1}
		add51_6_15200_reload {Type I LastRead 0 FirstWrite -1}
		add51_7201_reload {Type I LastRead 0 FirstWrite -1}
		add51_7_1202_reload {Type I LastRead 0 FirstWrite -1}
		add51_7_2203_reload {Type I LastRead 0 FirstWrite -1}
		add51_7_3204_reload {Type I LastRead 0 FirstWrite -1}
		add51_7_4205_reload {Type I LastRead 0 FirstWrite -1}
		add51_7_5206_reload {Type I LastRead 0 FirstWrite -1}
		add51_7_6207_reload {Type I LastRead 0 FirstWrite -1}
		add51_7_7208_reload {Type I LastRead 0 FirstWrite -1}
		add51_7_8209_reload {Type I LastRead 0 FirstWrite -1}
		add51_7_9210_reload {Type I LastRead 0 FirstWrite -1}
		add51_7_10211_reload {Type I LastRead 0 FirstWrite -1}
		add51_7_11212_reload {Type I LastRead 0 FirstWrite -1}
		add51_7_12213_reload {Type I LastRead 0 FirstWrite -1}
		add51_7_13214_reload {Type I LastRead 0 FirstWrite -1}
		add51_7_14215_reload {Type I LastRead 0 FirstWrite -1}
		add51_7_15216_reload {Type I LastRead 0 FirstWrite -1}
		add51_8217_reload {Type I LastRead 0 FirstWrite -1}
		add51_8_1218_reload {Type I LastRead 0 FirstWrite -1}
		add51_8_2219_reload {Type I LastRead 0 FirstWrite -1}
		add51_8_3220_reload {Type I LastRead 0 FirstWrite -1}
		add51_8_4221_reload {Type I LastRead 0 FirstWrite -1}
		add51_8_5222_reload {Type I LastRead 0 FirstWrite -1}
		add51_8_6223_reload {Type I LastRead 0 FirstWrite -1}
		add51_8_7224_reload {Type I LastRead 0 FirstWrite -1}
		add51_8_8225_reload {Type I LastRead 0 FirstWrite -1}
		add51_8_9226_reload {Type I LastRead 0 FirstWrite -1}
		add51_8_10227_reload {Type I LastRead 0 FirstWrite -1}
		add51_8_11228_reload {Type I LastRead 0 FirstWrite -1}
		add51_8_12229_reload {Type I LastRead 0 FirstWrite -1}
		add51_8_13230_reload {Type I LastRead 0 FirstWrite -1}
		add51_8_14231_reload {Type I LastRead 0 FirstWrite -1}
		add51_8_15232_reload {Type I LastRead 0 FirstWrite -1}
		add51_9233_reload {Type I LastRead 0 FirstWrite -1}
		add51_9_1234_reload {Type I LastRead 0 FirstWrite -1}
		add51_9_2235_reload {Type I LastRead 0 FirstWrite -1}
		add51_9_3236_reload {Type I LastRead 0 FirstWrite -1}
		add51_9_4237_reload {Type I LastRead 0 FirstWrite -1}
		add51_9_5238_reload {Type I LastRead 0 FirstWrite -1}
		add51_9_6239_reload {Type I LastRead 0 FirstWrite -1}
		add51_9_7240_reload {Type I LastRead 0 FirstWrite -1}
		add51_9_8241_reload {Type I LastRead 0 FirstWrite -1}
		add51_9_9242_reload {Type I LastRead 0 FirstWrite -1}
		add51_9_10243_reload {Type I LastRead 0 FirstWrite -1}
		add51_9_11244_reload {Type I LastRead 0 FirstWrite -1}
		add51_9_12245_reload {Type I LastRead 0 FirstWrite -1}
		add51_9_13246_reload {Type I LastRead 0 FirstWrite -1}
		add51_9_14247_reload {Type I LastRead 0 FirstWrite -1}
		add51_9_15248_reload {Type I LastRead 0 FirstWrite -1}
		add51_10249_reload {Type I LastRead 0 FirstWrite -1}
		add51_10_1250_reload {Type I LastRead 0 FirstWrite -1}
		add51_10_2251_reload {Type I LastRead 0 FirstWrite -1}
		add51_10_3252_reload {Type I LastRead 0 FirstWrite -1}
		add51_10_4253_reload {Type I LastRead 0 FirstWrite -1}
		add51_10_5254_reload {Type I LastRead 0 FirstWrite -1}
		add51_10_6255_reload {Type I LastRead 0 FirstWrite -1}
		add51_10_7256_reload {Type I LastRead 0 FirstWrite -1}
		add51_10_8257_reload {Type I LastRead 0 FirstWrite -1}
		add51_10_9258_reload {Type I LastRead 0 FirstWrite -1}
		add51_10_10259_reload {Type I LastRead 0 FirstWrite -1}
		add51_10_11260_reload {Type I LastRead 0 FirstWrite -1}
		add51_10_12261_reload {Type I LastRead 0 FirstWrite -1}
		add51_10_13262_reload {Type I LastRead 0 FirstWrite -1}
		add51_10_14263_reload {Type I LastRead 0 FirstWrite -1}
		add51_10_15264_reload {Type I LastRead 0 FirstWrite -1}
		add51_11265_reload {Type I LastRead 0 FirstWrite -1}
		add51_11_1266_reload {Type I LastRead 0 FirstWrite -1}
		add51_11_2267_reload {Type I LastRead 0 FirstWrite -1}
		add51_11_3268_reload {Type I LastRead 0 FirstWrite -1}
		add51_11_4269_reload {Type I LastRead 0 FirstWrite -1}
		add51_11_5270_reload {Type I LastRead 0 FirstWrite -1}
		add51_11_6271_reload {Type I LastRead 0 FirstWrite -1}
		add51_11_7272_reload {Type I LastRead 0 FirstWrite -1}
		add51_11_8273_reload {Type I LastRead 0 FirstWrite -1}
		add51_11_9274_reload {Type I LastRead 0 FirstWrite -1}
		add51_11_10275_reload {Type I LastRead 0 FirstWrite -1}
		add51_11_11276_reload {Type I LastRead 0 FirstWrite -1}
		add51_11_12277_reload {Type I LastRead 0 FirstWrite -1}
		add51_11_13278_reload {Type I LastRead 0 FirstWrite -1}
		add51_11_14279_reload {Type I LastRead 0 FirstWrite -1}
		add51_11_15280_reload {Type I LastRead 0 FirstWrite -1}
		add51_12281_reload {Type I LastRead 0 FirstWrite -1}
		add51_12_1282_reload {Type I LastRead 0 FirstWrite -1}
		add51_12_2283_reload {Type I LastRead 0 FirstWrite -1}
		add51_12_3284_reload {Type I LastRead 0 FirstWrite -1}
		add51_12_4285_reload {Type I LastRead 0 FirstWrite -1}
		add51_12_5286_reload {Type I LastRead 0 FirstWrite -1}
		add51_12_6287_reload {Type I LastRead 0 FirstWrite -1}
		add51_12_7288_reload {Type I LastRead 0 FirstWrite -1}
		add51_12_8289_reload {Type I LastRead 0 FirstWrite -1}
		add51_12_9290_reload {Type I LastRead 0 FirstWrite -1}
		add51_12_10291_reload {Type I LastRead 0 FirstWrite -1}
		add51_12_11292_reload {Type I LastRead 0 FirstWrite -1}
		add51_12_12293_reload {Type I LastRead 0 FirstWrite -1}
		add51_12_13294_reload {Type I LastRead 0 FirstWrite -1}
		add51_12_14295_reload {Type I LastRead 0 FirstWrite -1}
		add51_12_15296_reload {Type I LastRead 0 FirstWrite -1}
		add51_13297_reload {Type I LastRead 0 FirstWrite -1}
		add51_13_1298_reload {Type I LastRead 0 FirstWrite -1}
		add51_13_2299_reload {Type I LastRead 0 FirstWrite -1}
		add51_13_3300_reload {Type I LastRead 0 FirstWrite -1}
		add51_13_4301_reload {Type I LastRead 0 FirstWrite -1}
		add51_13_5302_reload {Type I LastRead 0 FirstWrite -1}
		add51_13_6303_reload {Type I LastRead 0 FirstWrite -1}
		add51_13_7304_reload {Type I LastRead 0 FirstWrite -1}
		add51_13_8305_reload {Type I LastRead 0 FirstWrite -1}
		add51_13_9306_reload {Type I LastRead 0 FirstWrite -1}
		add51_13_10307_reload {Type I LastRead 0 FirstWrite -1}
		add51_13_11308_reload {Type I LastRead 0 FirstWrite -1}
		add51_13_12309_reload {Type I LastRead 0 FirstWrite -1}
		add51_13_13310_reload {Type I LastRead 0 FirstWrite -1}
		add51_13_14311_reload {Type I LastRead 0 FirstWrite -1}
		add51_13_15312_reload {Type I LastRead 0 FirstWrite -1}
		add51_14313_reload {Type I LastRead 0 FirstWrite -1}
		add51_14_1314_reload {Type I LastRead 0 FirstWrite -1}
		add51_14_2315_reload {Type I LastRead 0 FirstWrite -1}
		add51_14_3316_reload {Type I LastRead 0 FirstWrite -1}
		add51_14_4317_reload {Type I LastRead 0 FirstWrite -1}
		add51_14_5318_reload {Type I LastRead 0 FirstWrite -1}
		add51_14_6319_reload {Type I LastRead 0 FirstWrite -1}
		add51_14_7320_reload {Type I LastRead 0 FirstWrite -1}
		add51_14_8321_reload {Type I LastRead 0 FirstWrite -1}
		add51_14_9322_reload {Type I LastRead 0 FirstWrite -1}
		add51_14_10323_reload {Type I LastRead 0 FirstWrite -1}
		add51_14_11324_reload {Type I LastRead 0 FirstWrite -1}
		add51_14_12325_reload {Type I LastRead 0 FirstWrite -1}
		add51_14_13326_reload {Type I LastRead 0 FirstWrite -1}
		add51_14_14327_reload {Type I LastRead 0 FirstWrite -1}
		add51_14_15328_reload {Type I LastRead 0 FirstWrite -1}
		add51_15329_reload {Type I LastRead 0 FirstWrite -1}
		add51_15_1330_reload {Type I LastRead 0 FirstWrite -1}
		add51_15_2331_reload {Type I LastRead 0 FirstWrite -1}
		add51_15_3332_reload {Type I LastRead 0 FirstWrite -1}
		add51_15_4333_reload {Type I LastRead 0 FirstWrite -1}
		add51_15_5334_reload {Type I LastRead 0 FirstWrite -1}
		add51_15_6335_reload {Type I LastRead 0 FirstWrite -1}
		add51_15_7336_reload {Type I LastRead 0 FirstWrite -1}
		add51_15_8337_reload {Type I LastRead 0 FirstWrite -1}
		add51_15_9338_reload {Type I LastRead 0 FirstWrite -1}
		add51_15_10339_reload {Type I LastRead 0 FirstWrite -1}
		add51_15_11340_reload {Type I LastRead 0 FirstWrite -1}
		add51_15_12341_reload {Type I LastRead 0 FirstWrite -1}
		add51_15_13342_reload {Type I LastRead 0 FirstWrite -1}
		add51_15_14343_reload {Type I LastRead 0 FirstWrite -1}
		add51_15_15344_reload {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "558", "Max" : "558"}
	, {"Name" : "Interval", "Min" : "559", "Max" : "559"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem0 { m_axi {  { m_axi_gmem0_AWVALID VALID 1 1 }  { m_axi_gmem0_AWREADY READY 0 1 }  { m_axi_gmem0_AWADDR ADDR 1 64 }  { m_axi_gmem0_AWID ID 1 1 }  { m_axi_gmem0_AWLEN SIZE 1 8 }  { m_axi_gmem0_AWSIZE BURST 1 3 }  { m_axi_gmem0_AWBURST LOCK 1 2 }  { m_axi_gmem0_AWLOCK CACHE 1 2 }  { m_axi_gmem0_AWCACHE PROT 1 4 }  { m_axi_gmem0_AWPROT QOS 1 3 }  { m_axi_gmem0_AWQOS REGION 1 4 }  { m_axi_gmem0_AWREGION USER 1 4 }  { m_axi_gmem0_AWUSER DATA 1 1 }  { m_axi_gmem0_WVALID VALID 1 1 }  { m_axi_gmem0_WREADY READY 0 1 }  { m_axi_gmem0_WDATA FIFONUM 1 32 }  { m_axi_gmem0_WSTRB STRB 1 4 }  { m_axi_gmem0_WLAST LAST 1 1 }  { m_axi_gmem0_WID ID 1 1 }  { m_axi_gmem0_WUSER DATA 1 1 }  { m_axi_gmem0_ARVALID VALID 1 1 }  { m_axi_gmem0_ARREADY READY 0 1 }  { m_axi_gmem0_ARADDR ADDR 1 64 }  { m_axi_gmem0_ARID ID 1 1 }  { m_axi_gmem0_ARLEN SIZE 1 8 }  { m_axi_gmem0_ARSIZE BURST 1 3 }  { m_axi_gmem0_ARBURST LOCK 1 2 }  { m_axi_gmem0_ARLOCK CACHE 1 2 }  { m_axi_gmem0_ARCACHE PROT 1 4 }  { m_axi_gmem0_ARPROT QOS 1 3 }  { m_axi_gmem0_ARQOS REGION 1 4 }  { m_axi_gmem0_ARREGION USER 1 4 }  { m_axi_gmem0_ARUSER DATA 1 1 }  { m_axi_gmem0_RVALID VALID 0 1 }  { m_axi_gmem0_RREADY READY 1 1 }  { m_axi_gmem0_RDATA FIFONUM 0 32 }  { m_axi_gmem0_RLAST LAST 0 1 }  { m_axi_gmem0_RID ID 0 1 }  { m_axi_gmem0_RUSER DATA 0 1 }  { m_axi_gmem0_RRESP RESP 0 2 }  { m_axi_gmem0_BVALID VALID 0 1 }  { m_axi_gmem0_BREADY READY 1 1 }  { m_axi_gmem0_BRESP RESP 0 2 }  { m_axi_gmem0_BID ID 0 1 }  { m_axi_gmem0_BUSER DATA 0 1 } } }
	gmem1 { m_axi {  { m_axi_gmem1_AWVALID VALID 1 1 }  { m_axi_gmem1_AWREADY READY 0 1 }  { m_axi_gmem1_AWADDR ADDR 1 64 }  { m_axi_gmem1_AWID ID 1 1 }  { m_axi_gmem1_AWLEN SIZE 1 8 }  { m_axi_gmem1_AWSIZE BURST 1 3 }  { m_axi_gmem1_AWBURST LOCK 1 2 }  { m_axi_gmem1_AWLOCK CACHE 1 2 }  { m_axi_gmem1_AWCACHE PROT 1 4 }  { m_axi_gmem1_AWPROT QOS 1 3 }  { m_axi_gmem1_AWQOS REGION 1 4 }  { m_axi_gmem1_AWREGION USER 1 4 }  { m_axi_gmem1_AWUSER DATA 1 1 }  { m_axi_gmem1_WVALID VALID 1 1 }  { m_axi_gmem1_WREADY READY 0 1 }  { m_axi_gmem1_WDATA FIFONUM 1 32 }  { m_axi_gmem1_WSTRB STRB 1 4 }  { m_axi_gmem1_WLAST LAST 1 1 }  { m_axi_gmem1_WID ID 1 1 }  { m_axi_gmem1_WUSER DATA 1 1 }  { m_axi_gmem1_ARVALID VALID 1 1 }  { m_axi_gmem1_ARREADY READY 0 1 }  { m_axi_gmem1_ARADDR ADDR 1 64 }  { m_axi_gmem1_ARID ID 1 1 }  { m_axi_gmem1_ARLEN SIZE 1 8 }  { m_axi_gmem1_ARSIZE BURST 1 3 }  { m_axi_gmem1_ARBURST LOCK 1 2 }  { m_axi_gmem1_ARLOCK CACHE 1 2 }  { m_axi_gmem1_ARCACHE PROT 1 4 }  { m_axi_gmem1_ARPROT QOS 1 3 }  { m_axi_gmem1_ARQOS REGION 1 4 }  { m_axi_gmem1_ARREGION USER 1 4 }  { m_axi_gmem1_ARUSER DATA 1 1 }  { m_axi_gmem1_RVALID VALID 0 1 }  { m_axi_gmem1_RREADY READY 1 1 }  { m_axi_gmem1_RDATA FIFONUM 0 32 }  { m_axi_gmem1_RLAST LAST 0 1 }  { m_axi_gmem1_RID ID 0 1 }  { m_axi_gmem1_RUSER DATA 0 1 }  { m_axi_gmem1_RRESP RESP 0 2 }  { m_axi_gmem1_BVALID VALID 0 1 }  { m_axi_gmem1_BREADY READY 1 1 }  { m_axi_gmem1_BRESP RESP 0 2 }  { m_axi_gmem1_BID ID 0 1 }  { m_axi_gmem1_BUSER DATA 0 1 } } }
	size { ap_none {  { size in_data 0 32 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict gmem0 { CHANNEL_NUM 0 BUNDLE gmem0 NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_WRITE}
dict set maxi_interface_dict gmem1 { CHANNEL_NUM 0 BUNDLE gmem1 NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ gmem0 1 }
	{ gmem1 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ gmem0 1 }
	{ gmem1 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
