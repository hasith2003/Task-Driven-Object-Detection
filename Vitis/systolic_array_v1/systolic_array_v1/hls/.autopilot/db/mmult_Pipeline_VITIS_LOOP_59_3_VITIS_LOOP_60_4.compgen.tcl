# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler mmult_sparsemux_33_4_32_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {compactencoding_dontcare}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1112 \
    name gmem0 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem0 \
    op interface \
    ports { m_axi_gmem0_0_AWVALID { O 1 bit } m_axi_gmem0_0_AWREADY { I 1 bit } m_axi_gmem0_0_AWADDR { O 64 vector } m_axi_gmem0_0_AWID { O 1 vector } m_axi_gmem0_0_AWLEN { O 32 vector } m_axi_gmem0_0_AWSIZE { O 3 vector } m_axi_gmem0_0_AWBURST { O 2 vector } m_axi_gmem0_0_AWLOCK { O 2 vector } m_axi_gmem0_0_AWCACHE { O 4 vector } m_axi_gmem0_0_AWPROT { O 3 vector } m_axi_gmem0_0_AWQOS { O 4 vector } m_axi_gmem0_0_AWREGION { O 4 vector } m_axi_gmem0_0_AWUSER { O 1 vector } m_axi_gmem0_0_WVALID { O 1 bit } m_axi_gmem0_0_WREADY { I 1 bit } m_axi_gmem0_0_WDATA { O 32 vector } m_axi_gmem0_0_WSTRB { O 4 vector } m_axi_gmem0_0_WLAST { O 1 bit } m_axi_gmem0_0_WID { O 1 vector } m_axi_gmem0_0_WUSER { O 1 vector } m_axi_gmem0_0_ARVALID { O 1 bit } m_axi_gmem0_0_ARREADY { I 1 bit } m_axi_gmem0_0_ARADDR { O 64 vector } m_axi_gmem0_0_ARID { O 1 vector } m_axi_gmem0_0_ARLEN { O 32 vector } m_axi_gmem0_0_ARSIZE { O 3 vector } m_axi_gmem0_0_ARBURST { O 2 vector } m_axi_gmem0_0_ARLOCK { O 2 vector } m_axi_gmem0_0_ARCACHE { O 4 vector } m_axi_gmem0_0_ARPROT { O 3 vector } m_axi_gmem0_0_ARQOS { O 4 vector } m_axi_gmem0_0_ARREGION { O 4 vector } m_axi_gmem0_0_ARUSER { O 1 vector } m_axi_gmem0_0_RVALID { I 1 bit } m_axi_gmem0_0_RREADY { O 1 bit } m_axi_gmem0_0_RDATA { I 32 vector } m_axi_gmem0_0_RLAST { I 1 bit } m_axi_gmem0_0_RID { I 1 vector } m_axi_gmem0_0_RFIFONUM { I 9 vector } m_axi_gmem0_0_RUSER { I 1 vector } m_axi_gmem0_0_RRESP { I 2 vector } m_axi_gmem0_0_BVALID { I 1 bit } m_axi_gmem0_0_BREADY { O 1 bit } m_axi_gmem0_0_BRESP { I 2 vector } m_axi_gmem0_0_BID { I 1 vector } m_axi_gmem0_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1113 \
    name sext_ln59 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln59 \
    op interface \
    ports { sext_ln59 { I 62 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1114 \
    name p_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload \
    op interface \
    ports { p_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1115 \
    name add51_11890_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_11890_reload \
    op interface \
    ports { add51_11890_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1116 \
    name add51_22391_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_22391_reload \
    op interface \
    ports { add51_22391_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1117 \
    name add51_32892_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_32892_reload \
    op interface \
    ports { add51_32892_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1118 \
    name add51_43393_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_43393_reload \
    op interface \
    ports { add51_43393_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1119 \
    name add51_53894_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_53894_reload \
    op interface \
    ports { add51_53894_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1120 \
    name add51_64395_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_64395_reload \
    op interface \
    ports { add51_64395_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1121 \
    name add51_74896_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_74896_reload \
    op interface \
    ports { add51_74896_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1122 \
    name add51_85397_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_85397_reload \
    op interface \
    ports { add51_85397_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1123 \
    name add51_95898_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_95898_reload \
    op interface \
    ports { add51_95898_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1124 \
    name add51_106399_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_106399_reload \
    op interface \
    ports { add51_106399_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1125 \
    name add51_1168100_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_1168100_reload \
    op interface \
    ports { add51_1168100_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1126 \
    name add51_1273101_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_1273101_reload \
    op interface \
    ports { add51_1273101_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1127 \
    name add51_1378102_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_1378102_reload \
    op interface \
    ports { add51_1378102_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1128 \
    name add51_1483103_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_1483103_reload \
    op interface \
    ports { add51_1483103_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1129 \
    name add51_1588104_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_1588104_reload \
    op interface \
    ports { add51_1588104_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1130 \
    name add51_1105_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_1105_reload \
    op interface \
    ports { add51_1105_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1131 \
    name add51_1_1106_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_1_1106_reload \
    op interface \
    ports { add51_1_1106_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1132 \
    name add51_1_2107_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_1_2107_reload \
    op interface \
    ports { add51_1_2107_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1133 \
    name add51_1_3108_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_1_3108_reload \
    op interface \
    ports { add51_1_3108_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1134 \
    name add51_1_4109_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_1_4109_reload \
    op interface \
    ports { add51_1_4109_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1135 \
    name add51_1_5110_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_1_5110_reload \
    op interface \
    ports { add51_1_5110_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1136 \
    name add51_1_6111_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_1_6111_reload \
    op interface \
    ports { add51_1_6111_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1137 \
    name add51_1_7112_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_1_7112_reload \
    op interface \
    ports { add51_1_7112_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1138 \
    name add51_1_8113_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_1_8113_reload \
    op interface \
    ports { add51_1_8113_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1139 \
    name add51_1_9114_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_1_9114_reload \
    op interface \
    ports { add51_1_9114_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1140 \
    name add51_1_10115_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_1_10115_reload \
    op interface \
    ports { add51_1_10115_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1141 \
    name add51_1_11116_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_1_11116_reload \
    op interface \
    ports { add51_1_11116_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1142 \
    name add51_1_12117_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_1_12117_reload \
    op interface \
    ports { add51_1_12117_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1143 \
    name add51_1_13118_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_1_13118_reload \
    op interface \
    ports { add51_1_13118_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1144 \
    name add51_1_14119_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_1_14119_reload \
    op interface \
    ports { add51_1_14119_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1145 \
    name add51_1_15120_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_1_15120_reload \
    op interface \
    ports { add51_1_15120_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1146 \
    name add51_2121_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_2121_reload \
    op interface \
    ports { add51_2121_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1147 \
    name add51_2_1122_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_2_1122_reload \
    op interface \
    ports { add51_2_1122_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1148 \
    name add51_2_2123_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_2_2123_reload \
    op interface \
    ports { add51_2_2123_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1149 \
    name add51_2_3124_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_2_3124_reload \
    op interface \
    ports { add51_2_3124_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1150 \
    name add51_2_4125_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_2_4125_reload \
    op interface \
    ports { add51_2_4125_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1151 \
    name add51_2_5126_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_2_5126_reload \
    op interface \
    ports { add51_2_5126_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1152 \
    name add51_2_6127_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_2_6127_reload \
    op interface \
    ports { add51_2_6127_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1153 \
    name add51_2_7128_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_2_7128_reload \
    op interface \
    ports { add51_2_7128_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1154 \
    name add51_2_8129_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_2_8129_reload \
    op interface \
    ports { add51_2_8129_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1155 \
    name add51_2_9130_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_2_9130_reload \
    op interface \
    ports { add51_2_9130_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1156 \
    name add51_2_10131_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_2_10131_reload \
    op interface \
    ports { add51_2_10131_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1157 \
    name add51_2_11132_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_2_11132_reload \
    op interface \
    ports { add51_2_11132_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1158 \
    name add51_2_12133_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_2_12133_reload \
    op interface \
    ports { add51_2_12133_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1159 \
    name add51_2_13134_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_2_13134_reload \
    op interface \
    ports { add51_2_13134_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1160 \
    name add51_2_14135_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_2_14135_reload \
    op interface \
    ports { add51_2_14135_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1161 \
    name add51_2_15136_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_2_15136_reload \
    op interface \
    ports { add51_2_15136_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1162 \
    name add51_3137_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_3137_reload \
    op interface \
    ports { add51_3137_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1163 \
    name add51_3_1138_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_3_1138_reload \
    op interface \
    ports { add51_3_1138_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1164 \
    name add51_3_2139_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_3_2139_reload \
    op interface \
    ports { add51_3_2139_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1165 \
    name add51_3_3140_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_3_3140_reload \
    op interface \
    ports { add51_3_3140_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1166 \
    name add51_3_4141_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_3_4141_reload \
    op interface \
    ports { add51_3_4141_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1167 \
    name add51_3_5142_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_3_5142_reload \
    op interface \
    ports { add51_3_5142_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1168 \
    name add51_3_6143_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_3_6143_reload \
    op interface \
    ports { add51_3_6143_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1169 \
    name add51_3_7144_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_3_7144_reload \
    op interface \
    ports { add51_3_7144_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1170 \
    name add51_3_8145_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_3_8145_reload \
    op interface \
    ports { add51_3_8145_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1171 \
    name add51_3_9146_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_3_9146_reload \
    op interface \
    ports { add51_3_9146_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1172 \
    name add51_3_10147_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_3_10147_reload \
    op interface \
    ports { add51_3_10147_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1173 \
    name add51_3_11148_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_3_11148_reload \
    op interface \
    ports { add51_3_11148_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1174 \
    name add51_3_12149_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_3_12149_reload \
    op interface \
    ports { add51_3_12149_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1175 \
    name add51_3_13150_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_3_13150_reload \
    op interface \
    ports { add51_3_13150_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1176 \
    name add51_3_14151_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_3_14151_reload \
    op interface \
    ports { add51_3_14151_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1177 \
    name add51_3_15152_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_3_15152_reload \
    op interface \
    ports { add51_3_15152_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1178 \
    name add51_4153_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_4153_reload \
    op interface \
    ports { add51_4153_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1179 \
    name add51_4_1154_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_4_1154_reload \
    op interface \
    ports { add51_4_1154_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1180 \
    name add51_4_2155_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_4_2155_reload \
    op interface \
    ports { add51_4_2155_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1181 \
    name add51_4_3156_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_4_3156_reload \
    op interface \
    ports { add51_4_3156_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1182 \
    name add51_4_4157_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_4_4157_reload \
    op interface \
    ports { add51_4_4157_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1183 \
    name add51_4_5158_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_4_5158_reload \
    op interface \
    ports { add51_4_5158_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1184 \
    name add51_4_6159_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_4_6159_reload \
    op interface \
    ports { add51_4_6159_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1185 \
    name add51_4_7160_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_4_7160_reload \
    op interface \
    ports { add51_4_7160_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1186 \
    name add51_4_8161_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_4_8161_reload \
    op interface \
    ports { add51_4_8161_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1187 \
    name add51_4_9162_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_4_9162_reload \
    op interface \
    ports { add51_4_9162_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1188 \
    name add51_4_10163_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_4_10163_reload \
    op interface \
    ports { add51_4_10163_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1189 \
    name add51_4_11164_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_4_11164_reload \
    op interface \
    ports { add51_4_11164_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1190 \
    name add51_4_12165_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_4_12165_reload \
    op interface \
    ports { add51_4_12165_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1191 \
    name add51_4_13166_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_4_13166_reload \
    op interface \
    ports { add51_4_13166_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1192 \
    name add51_4_14167_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_4_14167_reload \
    op interface \
    ports { add51_4_14167_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1193 \
    name add51_4_15168_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_4_15168_reload \
    op interface \
    ports { add51_4_15168_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1194 \
    name add51_5169_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_5169_reload \
    op interface \
    ports { add51_5169_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1195 \
    name add51_5_1170_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_5_1170_reload \
    op interface \
    ports { add51_5_1170_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1196 \
    name add51_5_2171_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_5_2171_reload \
    op interface \
    ports { add51_5_2171_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1197 \
    name add51_5_3172_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_5_3172_reload \
    op interface \
    ports { add51_5_3172_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1198 \
    name add51_5_4173_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_5_4173_reload \
    op interface \
    ports { add51_5_4173_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1199 \
    name add51_5_5174_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_5_5174_reload \
    op interface \
    ports { add51_5_5174_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1200 \
    name add51_5_6175_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_5_6175_reload \
    op interface \
    ports { add51_5_6175_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1201 \
    name add51_5_7176_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_5_7176_reload \
    op interface \
    ports { add51_5_7176_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1202 \
    name add51_5_8177_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_5_8177_reload \
    op interface \
    ports { add51_5_8177_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1203 \
    name add51_5_9178_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_5_9178_reload \
    op interface \
    ports { add51_5_9178_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1204 \
    name add51_5_10179_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_5_10179_reload \
    op interface \
    ports { add51_5_10179_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1205 \
    name add51_5_11180_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_5_11180_reload \
    op interface \
    ports { add51_5_11180_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1206 \
    name add51_5_12181_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_5_12181_reload \
    op interface \
    ports { add51_5_12181_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1207 \
    name add51_5_13182_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_5_13182_reload \
    op interface \
    ports { add51_5_13182_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1208 \
    name add51_5_14183_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_5_14183_reload \
    op interface \
    ports { add51_5_14183_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1209 \
    name add51_5_15184_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_5_15184_reload \
    op interface \
    ports { add51_5_15184_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1210 \
    name add51_6185_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_6185_reload \
    op interface \
    ports { add51_6185_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1211 \
    name add51_6_1186_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_6_1186_reload \
    op interface \
    ports { add51_6_1186_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1212 \
    name add51_6_2187_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_6_2187_reload \
    op interface \
    ports { add51_6_2187_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1213 \
    name add51_6_3188_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_6_3188_reload \
    op interface \
    ports { add51_6_3188_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1214 \
    name add51_6_4189_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_6_4189_reload \
    op interface \
    ports { add51_6_4189_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1215 \
    name add51_6_5190_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_6_5190_reload \
    op interface \
    ports { add51_6_5190_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1216 \
    name add51_6_6191_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_6_6191_reload \
    op interface \
    ports { add51_6_6191_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1217 \
    name add51_6_7192_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_6_7192_reload \
    op interface \
    ports { add51_6_7192_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1218 \
    name add51_6_8193_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_6_8193_reload \
    op interface \
    ports { add51_6_8193_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1219 \
    name add51_6_9194_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_6_9194_reload \
    op interface \
    ports { add51_6_9194_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1220 \
    name add51_6_10195_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_6_10195_reload \
    op interface \
    ports { add51_6_10195_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1221 \
    name add51_6_11196_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_6_11196_reload \
    op interface \
    ports { add51_6_11196_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1222 \
    name add51_6_12197_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_6_12197_reload \
    op interface \
    ports { add51_6_12197_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1223 \
    name add51_6_13198_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_6_13198_reload \
    op interface \
    ports { add51_6_13198_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1224 \
    name add51_6_14199_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_6_14199_reload \
    op interface \
    ports { add51_6_14199_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1225 \
    name add51_6_15200_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_6_15200_reload \
    op interface \
    ports { add51_6_15200_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1226 \
    name add51_7201_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_7201_reload \
    op interface \
    ports { add51_7201_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1227 \
    name add51_7_1202_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_7_1202_reload \
    op interface \
    ports { add51_7_1202_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1228 \
    name add51_7_2203_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_7_2203_reload \
    op interface \
    ports { add51_7_2203_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1229 \
    name add51_7_3204_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_7_3204_reload \
    op interface \
    ports { add51_7_3204_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1230 \
    name add51_7_4205_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_7_4205_reload \
    op interface \
    ports { add51_7_4205_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1231 \
    name add51_7_5206_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_7_5206_reload \
    op interface \
    ports { add51_7_5206_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1232 \
    name add51_7_6207_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_7_6207_reload \
    op interface \
    ports { add51_7_6207_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1233 \
    name add51_7_7208_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_7_7208_reload \
    op interface \
    ports { add51_7_7208_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1234 \
    name add51_7_8209_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_7_8209_reload \
    op interface \
    ports { add51_7_8209_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1235 \
    name add51_7_9210_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_7_9210_reload \
    op interface \
    ports { add51_7_9210_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1236 \
    name add51_7_10211_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_7_10211_reload \
    op interface \
    ports { add51_7_10211_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1237 \
    name add51_7_11212_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_7_11212_reload \
    op interface \
    ports { add51_7_11212_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1238 \
    name add51_7_12213_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_7_12213_reload \
    op interface \
    ports { add51_7_12213_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1239 \
    name add51_7_13214_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_7_13214_reload \
    op interface \
    ports { add51_7_13214_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1240 \
    name add51_7_14215_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_7_14215_reload \
    op interface \
    ports { add51_7_14215_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1241 \
    name add51_7_15216_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_7_15216_reload \
    op interface \
    ports { add51_7_15216_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1242 \
    name add51_8217_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_8217_reload \
    op interface \
    ports { add51_8217_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1243 \
    name add51_8_1218_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_8_1218_reload \
    op interface \
    ports { add51_8_1218_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1244 \
    name add51_8_2219_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_8_2219_reload \
    op interface \
    ports { add51_8_2219_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1245 \
    name add51_8_3220_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_8_3220_reload \
    op interface \
    ports { add51_8_3220_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1246 \
    name add51_8_4221_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_8_4221_reload \
    op interface \
    ports { add51_8_4221_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1247 \
    name add51_8_5222_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_8_5222_reload \
    op interface \
    ports { add51_8_5222_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1248 \
    name add51_8_6223_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_8_6223_reload \
    op interface \
    ports { add51_8_6223_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1249 \
    name add51_8_7224_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_8_7224_reload \
    op interface \
    ports { add51_8_7224_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1250 \
    name add51_8_8225_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_8_8225_reload \
    op interface \
    ports { add51_8_8225_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1251 \
    name add51_8_9226_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_8_9226_reload \
    op interface \
    ports { add51_8_9226_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1252 \
    name add51_8_10227_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_8_10227_reload \
    op interface \
    ports { add51_8_10227_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1253 \
    name add51_8_11228_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_8_11228_reload \
    op interface \
    ports { add51_8_11228_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1254 \
    name add51_8_12229_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_8_12229_reload \
    op interface \
    ports { add51_8_12229_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1255 \
    name add51_8_13230_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_8_13230_reload \
    op interface \
    ports { add51_8_13230_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1256 \
    name add51_8_14231_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_8_14231_reload \
    op interface \
    ports { add51_8_14231_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1257 \
    name add51_8_15232_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_8_15232_reload \
    op interface \
    ports { add51_8_15232_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1258 \
    name add51_9233_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_9233_reload \
    op interface \
    ports { add51_9233_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1259 \
    name add51_9_1234_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_9_1234_reload \
    op interface \
    ports { add51_9_1234_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1260 \
    name add51_9_2235_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_9_2235_reload \
    op interface \
    ports { add51_9_2235_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1261 \
    name add51_9_3236_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_9_3236_reload \
    op interface \
    ports { add51_9_3236_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1262 \
    name add51_9_4237_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_9_4237_reload \
    op interface \
    ports { add51_9_4237_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1263 \
    name add51_9_5238_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_9_5238_reload \
    op interface \
    ports { add51_9_5238_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1264 \
    name add51_9_6239_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_9_6239_reload \
    op interface \
    ports { add51_9_6239_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1265 \
    name add51_9_7240_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_9_7240_reload \
    op interface \
    ports { add51_9_7240_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1266 \
    name add51_9_8241_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_9_8241_reload \
    op interface \
    ports { add51_9_8241_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1267 \
    name add51_9_9242_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_9_9242_reload \
    op interface \
    ports { add51_9_9242_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1268 \
    name add51_9_10243_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_9_10243_reload \
    op interface \
    ports { add51_9_10243_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1269 \
    name add51_9_11244_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_9_11244_reload \
    op interface \
    ports { add51_9_11244_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1270 \
    name add51_9_12245_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_9_12245_reload \
    op interface \
    ports { add51_9_12245_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1271 \
    name add51_9_13246_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_9_13246_reload \
    op interface \
    ports { add51_9_13246_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1272 \
    name add51_9_14247_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_9_14247_reload \
    op interface \
    ports { add51_9_14247_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1273 \
    name add51_9_15248_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_9_15248_reload \
    op interface \
    ports { add51_9_15248_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1274 \
    name add51_10249_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_10249_reload \
    op interface \
    ports { add51_10249_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1275 \
    name add51_10_1250_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_10_1250_reload \
    op interface \
    ports { add51_10_1250_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1276 \
    name add51_10_2251_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_10_2251_reload \
    op interface \
    ports { add51_10_2251_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1277 \
    name add51_10_3252_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_10_3252_reload \
    op interface \
    ports { add51_10_3252_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1278 \
    name add51_10_4253_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_10_4253_reload \
    op interface \
    ports { add51_10_4253_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1279 \
    name add51_10_5254_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_10_5254_reload \
    op interface \
    ports { add51_10_5254_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1280 \
    name add51_10_6255_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_10_6255_reload \
    op interface \
    ports { add51_10_6255_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1281 \
    name add51_10_7256_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_10_7256_reload \
    op interface \
    ports { add51_10_7256_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1282 \
    name add51_10_8257_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_10_8257_reload \
    op interface \
    ports { add51_10_8257_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1283 \
    name add51_10_9258_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_10_9258_reload \
    op interface \
    ports { add51_10_9258_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1284 \
    name add51_10_10259_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_10_10259_reload \
    op interface \
    ports { add51_10_10259_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1285 \
    name add51_10_11260_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_10_11260_reload \
    op interface \
    ports { add51_10_11260_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1286 \
    name add51_10_12261_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_10_12261_reload \
    op interface \
    ports { add51_10_12261_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1287 \
    name add51_10_13262_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_10_13262_reload \
    op interface \
    ports { add51_10_13262_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1288 \
    name add51_10_14263_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_10_14263_reload \
    op interface \
    ports { add51_10_14263_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1289 \
    name add51_10_15264_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_10_15264_reload \
    op interface \
    ports { add51_10_15264_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1290 \
    name add51_11265_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_11265_reload \
    op interface \
    ports { add51_11265_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1291 \
    name add51_11_1266_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_11_1266_reload \
    op interface \
    ports { add51_11_1266_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1292 \
    name add51_11_2267_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_11_2267_reload \
    op interface \
    ports { add51_11_2267_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1293 \
    name add51_11_3268_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_11_3268_reload \
    op interface \
    ports { add51_11_3268_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1294 \
    name add51_11_4269_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_11_4269_reload \
    op interface \
    ports { add51_11_4269_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1295 \
    name add51_11_5270_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_11_5270_reload \
    op interface \
    ports { add51_11_5270_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1296 \
    name add51_11_6271_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_11_6271_reload \
    op interface \
    ports { add51_11_6271_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1297 \
    name add51_11_7272_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_11_7272_reload \
    op interface \
    ports { add51_11_7272_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1298 \
    name add51_11_8273_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_11_8273_reload \
    op interface \
    ports { add51_11_8273_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1299 \
    name add51_11_9274_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_11_9274_reload \
    op interface \
    ports { add51_11_9274_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1300 \
    name add51_11_10275_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_11_10275_reload \
    op interface \
    ports { add51_11_10275_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1301 \
    name add51_11_11276_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_11_11276_reload \
    op interface \
    ports { add51_11_11276_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1302 \
    name add51_11_12277_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_11_12277_reload \
    op interface \
    ports { add51_11_12277_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1303 \
    name add51_11_13278_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_11_13278_reload \
    op interface \
    ports { add51_11_13278_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1304 \
    name add51_11_14279_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_11_14279_reload \
    op interface \
    ports { add51_11_14279_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1305 \
    name add51_11_15280_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_11_15280_reload \
    op interface \
    ports { add51_11_15280_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1306 \
    name add51_12281_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_12281_reload \
    op interface \
    ports { add51_12281_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1307 \
    name add51_12_1282_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_12_1282_reload \
    op interface \
    ports { add51_12_1282_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1308 \
    name add51_12_2283_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_12_2283_reload \
    op interface \
    ports { add51_12_2283_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1309 \
    name add51_12_3284_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_12_3284_reload \
    op interface \
    ports { add51_12_3284_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1310 \
    name add51_12_4285_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_12_4285_reload \
    op interface \
    ports { add51_12_4285_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1311 \
    name add51_12_5286_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_12_5286_reload \
    op interface \
    ports { add51_12_5286_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1312 \
    name add51_12_6287_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_12_6287_reload \
    op interface \
    ports { add51_12_6287_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1313 \
    name add51_12_7288_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_12_7288_reload \
    op interface \
    ports { add51_12_7288_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1314 \
    name add51_12_8289_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_12_8289_reload \
    op interface \
    ports { add51_12_8289_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1315 \
    name add51_12_9290_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_12_9290_reload \
    op interface \
    ports { add51_12_9290_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1316 \
    name add51_12_10291_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_12_10291_reload \
    op interface \
    ports { add51_12_10291_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1317 \
    name add51_12_11292_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_12_11292_reload \
    op interface \
    ports { add51_12_11292_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1318 \
    name add51_12_12293_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_12_12293_reload \
    op interface \
    ports { add51_12_12293_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1319 \
    name add51_12_13294_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_12_13294_reload \
    op interface \
    ports { add51_12_13294_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1320 \
    name add51_12_14295_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_12_14295_reload \
    op interface \
    ports { add51_12_14295_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1321 \
    name add51_12_15296_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_12_15296_reload \
    op interface \
    ports { add51_12_15296_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1322 \
    name add51_13297_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_13297_reload \
    op interface \
    ports { add51_13297_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1323 \
    name add51_13_1298_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_13_1298_reload \
    op interface \
    ports { add51_13_1298_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1324 \
    name add51_13_2299_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_13_2299_reload \
    op interface \
    ports { add51_13_2299_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1325 \
    name add51_13_3300_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_13_3300_reload \
    op interface \
    ports { add51_13_3300_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1326 \
    name add51_13_4301_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_13_4301_reload \
    op interface \
    ports { add51_13_4301_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1327 \
    name add51_13_5302_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_13_5302_reload \
    op interface \
    ports { add51_13_5302_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1328 \
    name add51_13_6303_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_13_6303_reload \
    op interface \
    ports { add51_13_6303_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1329 \
    name add51_13_7304_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_13_7304_reload \
    op interface \
    ports { add51_13_7304_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1330 \
    name add51_13_8305_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_13_8305_reload \
    op interface \
    ports { add51_13_8305_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1331 \
    name add51_13_9306_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_13_9306_reload \
    op interface \
    ports { add51_13_9306_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1332 \
    name add51_13_10307_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_13_10307_reload \
    op interface \
    ports { add51_13_10307_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1333 \
    name add51_13_11308_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_13_11308_reload \
    op interface \
    ports { add51_13_11308_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1334 \
    name add51_13_12309_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_13_12309_reload \
    op interface \
    ports { add51_13_12309_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1335 \
    name add51_13_13310_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_13_13310_reload \
    op interface \
    ports { add51_13_13310_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1336 \
    name add51_13_14311_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_13_14311_reload \
    op interface \
    ports { add51_13_14311_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1337 \
    name add51_13_15312_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_13_15312_reload \
    op interface \
    ports { add51_13_15312_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1338 \
    name add51_14313_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_14313_reload \
    op interface \
    ports { add51_14313_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1339 \
    name add51_14_1314_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_14_1314_reload \
    op interface \
    ports { add51_14_1314_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1340 \
    name add51_14_2315_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_14_2315_reload \
    op interface \
    ports { add51_14_2315_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1341 \
    name add51_14_3316_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_14_3316_reload \
    op interface \
    ports { add51_14_3316_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1342 \
    name add51_14_4317_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_14_4317_reload \
    op interface \
    ports { add51_14_4317_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1343 \
    name add51_14_5318_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_14_5318_reload \
    op interface \
    ports { add51_14_5318_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1344 \
    name add51_14_6319_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_14_6319_reload \
    op interface \
    ports { add51_14_6319_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1345 \
    name add51_14_7320_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_14_7320_reload \
    op interface \
    ports { add51_14_7320_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1346 \
    name add51_14_8321_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_14_8321_reload \
    op interface \
    ports { add51_14_8321_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1347 \
    name add51_14_9322_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_14_9322_reload \
    op interface \
    ports { add51_14_9322_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1348 \
    name add51_14_10323_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_14_10323_reload \
    op interface \
    ports { add51_14_10323_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1349 \
    name add51_14_11324_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_14_11324_reload \
    op interface \
    ports { add51_14_11324_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1350 \
    name add51_14_12325_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_14_12325_reload \
    op interface \
    ports { add51_14_12325_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1351 \
    name add51_14_13326_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_14_13326_reload \
    op interface \
    ports { add51_14_13326_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1352 \
    name add51_14_14327_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_14_14327_reload \
    op interface \
    ports { add51_14_14327_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1353 \
    name add51_14_15328_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_14_15328_reload \
    op interface \
    ports { add51_14_15328_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1354 \
    name add51_15329_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_15329_reload \
    op interface \
    ports { add51_15329_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1355 \
    name add51_15_1330_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_15_1330_reload \
    op interface \
    ports { add51_15_1330_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1356 \
    name add51_15_2331_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_15_2331_reload \
    op interface \
    ports { add51_15_2331_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1357 \
    name add51_15_3332_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_15_3332_reload \
    op interface \
    ports { add51_15_3332_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1358 \
    name add51_15_4333_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_15_4333_reload \
    op interface \
    ports { add51_15_4333_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1359 \
    name add51_15_5334_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_15_5334_reload \
    op interface \
    ports { add51_15_5334_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1360 \
    name add51_15_6335_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_15_6335_reload \
    op interface \
    ports { add51_15_6335_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1361 \
    name add51_15_7336_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_15_7336_reload \
    op interface \
    ports { add51_15_7336_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1362 \
    name add51_15_8337_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_15_8337_reload \
    op interface \
    ports { add51_15_8337_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1363 \
    name add51_15_9338_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_15_9338_reload \
    op interface \
    ports { add51_15_9338_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1364 \
    name add51_15_10339_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_15_10339_reload \
    op interface \
    ports { add51_15_10339_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1365 \
    name add51_15_11340_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_15_11340_reload \
    op interface \
    ports { add51_15_11340_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1366 \
    name add51_15_12341_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_15_12341_reload \
    op interface \
    ports { add51_15_12341_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1367 \
    name add51_15_13342_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_15_13342_reload \
    op interface \
    ports { add51_15_13342_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1368 \
    name add51_15_14343_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_15_14343_reload \
    op interface \
    ports { add51_15_14343_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1369 \
    name add51_15_15344_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add51_15_15344_reload \
    op interface \
    ports { add51_15_15344_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName mmult_flow_control_loop_pipe_sequential_init_U
set CompName mmult_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix mmult_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


