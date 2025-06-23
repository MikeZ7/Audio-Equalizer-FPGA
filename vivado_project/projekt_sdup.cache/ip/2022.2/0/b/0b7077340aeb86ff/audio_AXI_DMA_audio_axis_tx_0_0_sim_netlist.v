// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Fri Jun 20 15:38:08 2025
// Host        : DESKTOP-SR46PLT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ audio_AXI_DMA_audio_axis_tx_0_0_sim_netlist.v
// Design      : audio_AXI_DMA_audio_axis_tx_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "audio_AXI_DMA_audio_axis_tx_0_0,audio_axis_tx,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "audio_axis_tx,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    resetn,
    sample_l,
    sample_r,
    m_axis_tdata,
    m_axis_tvalid,
    m_axis_tlast,
    m_axis_tready);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axis, ASSOCIATED_RESET resetn, FREQ_HZ 25800000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 resetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;
  input [31:0]sample_l;
  input [31:0]sample_r;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 25800000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output [63:0]m_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) output m_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;

  wire clk;
  wire [63:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire resetn;
  wire [31:0]sample_l;
  wire [31:0]sample_r;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_axis_tx U0
       (.D({sample_r,sample_l}),
        .clk(clk),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .resetn(resetn));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_axis_tx
   (m_axis_tdata,
    m_axis_tvalid,
    m_axis_tlast,
    D,
    clk,
    m_axis_tready,
    resetn);
  output [63:0]m_axis_tdata;
  output m_axis_tvalid;
  output m_axis_tlast;
  input [63:0]D;
  input clk;
  input m_axis_tready;
  input resetn;

  wire [63:0]D;
  wire clk;
  wire [11:0]count;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[10] ;
  wire \count_reg_n_0_[11] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire \count_reg_n_0_[5] ;
  wire \count_reg_n_0_[6] ;
  wire \count_reg_n_0_[7] ;
  wire \count_reg_n_0_[8] ;
  wire \count_reg_n_0_[9] ;
  wire [11:1]data0;
  wire [63:0]m_axis_tdata;
  wire \m_axis_tdata[63]_i_1_n_0 ;
  wire m_axis_tlast;
  wire m_axis_tlast_i_1_n_0;
  wire m_axis_tlast_i_2_n_0;
  wire m_axis_tlast_i_3_n_0;
  wire m_axis_tlast_i_4_n_0;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire m_axis_tvalid_i_1_n_0;
  wire plusOp_carry__0_n_0;
  wire plusOp_carry__0_n_1;
  wire plusOp_carry__0_n_2;
  wire plusOp_carry__0_n_3;
  wire plusOp_carry__1_n_2;
  wire plusOp_carry__1_n_3;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire resetn;
  wire [3:2]NLW_plusOp_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_plusOp_carry__1_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(\count_reg_n_0_[0] ),
        .O(count[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[10]_i_1 
       (.I0(m_axis_tlast_i_2_n_0),
        .I1(data0[10]),
        .O(count[10]));
  LUT2 #(
    .INIT(4'h8)) 
    \count[11]_i_1 
       (.I0(m_axis_tlast_i_2_n_0),
        .I1(data0[11]),
        .O(count[11]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[1]_i_1 
       (.I0(m_axis_tlast_i_2_n_0),
        .I1(data0[1]),
        .O(count[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[2]_i_1 
       (.I0(m_axis_tlast_i_2_n_0),
        .I1(data0[2]),
        .O(count[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[3]_i_1 
       (.I0(m_axis_tlast_i_2_n_0),
        .I1(data0[3]),
        .O(count[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[4]_i_1 
       (.I0(m_axis_tlast_i_2_n_0),
        .I1(data0[4]),
        .O(count[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[5]_i_1 
       (.I0(m_axis_tlast_i_2_n_0),
        .I1(data0[5]),
        .O(count[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[6]_i_1 
       (.I0(m_axis_tlast_i_2_n_0),
        .I1(data0[6]),
        .O(count[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[7]_i_1 
       (.I0(m_axis_tlast_i_2_n_0),
        .I1(data0[7]),
        .O(count[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[8]_i_1 
       (.I0(m_axis_tlast_i_2_n_0),
        .I1(data0[8]),
        .O(count[8]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[9]_i_1 
       (.I0(m_axis_tlast_i_2_n_0),
        .I1(data0[9]),
        .O(count[9]));
  FDRE \count_reg[0] 
       (.C(clk),
        .CE(m_axis_tready),
        .D(count[0]),
        .Q(\count_reg_n_0_[0] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \count_reg[10] 
       (.C(clk),
        .CE(m_axis_tready),
        .D(count[10]),
        .Q(\count_reg_n_0_[10] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \count_reg[11] 
       (.C(clk),
        .CE(m_axis_tready),
        .D(count[11]),
        .Q(\count_reg_n_0_[11] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \count_reg[1] 
       (.C(clk),
        .CE(m_axis_tready),
        .D(count[1]),
        .Q(\count_reg_n_0_[1] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \count_reg[2] 
       (.C(clk),
        .CE(m_axis_tready),
        .D(count[2]),
        .Q(\count_reg_n_0_[2] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \count_reg[3] 
       (.C(clk),
        .CE(m_axis_tready),
        .D(count[3]),
        .Q(\count_reg_n_0_[3] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \count_reg[4] 
       (.C(clk),
        .CE(m_axis_tready),
        .D(count[4]),
        .Q(\count_reg_n_0_[4] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \count_reg[5] 
       (.C(clk),
        .CE(m_axis_tready),
        .D(count[5]),
        .Q(\count_reg_n_0_[5] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \count_reg[6] 
       (.C(clk),
        .CE(m_axis_tready),
        .D(count[6]),
        .Q(\count_reg_n_0_[6] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \count_reg[7] 
       (.C(clk),
        .CE(m_axis_tready),
        .D(count[7]),
        .Q(\count_reg_n_0_[7] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \count_reg[8] 
       (.C(clk),
        .CE(m_axis_tready),
        .D(count[8]),
        .Q(\count_reg_n_0_[8] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \count_reg[9] 
       (.C(clk),
        .CE(m_axis_tready),
        .D(count[9]),
        .Q(\count_reg_n_0_[9] ),
        .R(m_axis_tvalid_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[63]_i_1 
       (.I0(resetn),
        .I1(m_axis_tready),
        .O(\m_axis_tdata[63]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[0] 
       (.C(clk),
        .CE(\m_axis_tdata[63]_i_1_n_0 ),
        .D(D[0]),
        .Q(m_axis_tdata[0]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[10] 
       (.C(clk),
        .CE(\m_axis_tdata[63]_i_1_n_0 ),
        .D(D[10]),
        .Q(m_axis_tdata[10]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[11] 
       (.C(clk),
        .CE(\m_axis_tdata[63]_i_1_n_0 ),
        .D(D[11]),
        .Q(m_axis_tdata[11]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[12] 
       (.C(clk),
        .CE(\m_axis_tdata[63]_i_1_n_0 ),
        .D(D[12]),
        .Q(m_axis_tdata[12]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[13] 
       (.C(clk),
        .CE(\m_axis_tdata[63]_i_1_n_0 ),
        .D(D[13]),
        .Q(m_axis_tdata[13]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[14] 
       (.C(clk),
        .CE(\m_axis_tdata[63]_i_1_n_0 ),
        .D(D[14]),
        .Q(m_axis_tdata[14]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[15] 
       (.C(clk),
        .CE(\m_axis_tdata[63]_i_1_n_0 ),
        .D(D[15]),
        .Q(m_axis_tdata[15]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[16] 
       (.C(clk),
        .CE(\m_axis_tdata[63]_i_1_n_0 ),
        .D(D[16]),
        .Q(m_axis_tdata[16]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[17] 
       (.C(clk),
        .CE(\m_axis_tdata[63]_i_1_n_0 ),
        .D(D[17]),
        .Q(m_axis_tdata[17]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[18] 
       (.C(clk),
        .CE(\m_axis_tdata[63]_i_1_n_0 ),
        .D(D[18]),
        .Q(m_axis_tdata[18]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[19] 
       (.C(clk),
        .CE(\m_axis_tdata[63]_i_1_n_0 ),
        .D(D[19]),
        .Q(m_axis_tdata[19]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[1] 
       (.C(clk),
        .CE(\m_axis_tdata[63]_i_1_n_0 ),
        .D(D[1]),
        .Q(m_axis_tdata[1]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[20] 
       (.C(clk),
        .CE(\m_axis_tdata[63]_i_1_n_0 ),
        .D(D[20]),
        .Q(m_axis_tdata[20]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[21] 
       (.C(clk),
        .CE(\m_axis_tdata[63]_i_1_n_0 ),
        .D(D[21]),
        .Q(m_axis_tdata[21]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[22] 
       (.C(clk),
        .CE(\m_axis_tdata[63]_i_1_n_0 ),
        .D(D[22]),
        .Q(m_axis_tdata[22]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[23] 
       (.C(clk),
        .CE(\m_axis_tdata[63]_i_1_n_0 ),
        .D(D[23]),
        .Q(m_axis_tdata[23]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[24] 
       (.C(clk),
        .CE(\m_axis_tdata[63]_i_1_n_0 ),
        .D(D[24]),
        .Q(m_axis_tdata[24]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[25] 
       (.C(clk),
        .CE(\m_axis_tdata[63]_i_1_n_0 ),
        .D(D[25]),
        .Q(m_axis_tdata[25]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[26] 
       (.C(clk),
        .CE(\m_axis_tdata[63]_i_1_n_0 ),
        .D(D[26]),
        .Q(m_axis_tdata[26]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[27] 
       (.C(clk),
        .CE(\m_axis_tdata[63]_i_1_n_0 ),
        .D(D[27]),
        .Q(m_axis_tdata[27]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[28] 
       (.C(clk),
        .CE(\m_axis_tdata[63]_i_1_n_0 ),
        .D(D[28]),
        .Q(m_axis_tdata[28]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[29] 
       (.C(clk),
        .CE(\m_axis_tdata[63]_i_1_n_0 ),
        .D(D[29]),
        .Q(m_axis_tdata[29]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[2] 
       (.C(clk),
        .CE(\m_axis_tdata[63]_i_1_n_0 ),
        .D(D[2]),
        .Q(m_axis_tdata[2]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[30] 
       (.C(clk),
        .CE(\m_axis_tdata[63]_i_1_n_0 ),
        .D(D[30]),
        .Q(m_axis_tdata[30]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[31] 
       (.C(clk),
        .CE(\m_axis_tdata[63]_i_1_n_0 ),
        .D(D[31]),
        .Q(m_axis_tdata[31]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[32] 
       (.C(clk),
        .CE(\m_axis_tdata[63]_i_1_n_0 ),
        .D(D[32]),
        .Q(m_axis_tdata[32]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[33] 
       (.C(clk),
        .CE(\m_axis_tdata[63]_i_1_n_0 ),
        .D(D[33]),
        .Q(m_axis_tdata[33]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[34] 
       (.C(clk),
        .CE(\m_axis_tdata[63]_i_1_n_0 ),
        .D(D[34]),
        .Q(m_axis_tdata[34]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[35] 
       (.C(clk),
        .CE(\m_axis_tdata[63]_i_1_n_0 ),
        .D(D[35]),
        .Q(m_axis_tdata[35]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[36] 
       (.C(clk),
        .CE(\m_axis_tdata[63]_i_1_n_0 ),
        .D(D[36]),
        .Q(m_axis_tdata[36]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[37] 
       (.C(clk),
        .CE(\m_axis_tdata[63]_i_1_n_0 ),
        .D(D[37]),
        .Q(m_axis_tdata[37]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[38] 
       (.C(clk),
        .CE(\m_axis_tdata[63]_i_1_n_0 ),
        .D(D[38]),
        .Q(m_axis_tdata[38]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[39] 
       (.C(clk),
        .CE(\m_axis_tdata[63]_i_1_n_0 ),
        .D(D[39]),
        .Q(m_axis_tdata[39]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[3] 
       (.C(clk),
        .CE(\m_axis_tdata[63]_i_1_n_0 ),
        .D(D[3]),
        .Q(m_axis_tdata[3]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[40] 
       (.C(clk),
        .CE(\m_axis_tdata[63]_i_1_n_0 ),
        .D(D[40]),
        .Q(m_axis_tdata[40]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[41] 
       (.C(clk),
        .CE(\m_axis_tdata[63]_i_1_n_0 ),
        .D(D[41]),
        .Q(m_axis_tdata[41]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[42] 
       (.C(clk),
        .CE(\m_axis_tdata[63]_i_1_n_0 ),
        .D(D[42]),
        .Q(m_axis_tdata[42]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[43] 
       (.C(clk),
        .CE(\m_axis_tdata[63]_i_1_n_0 ),
        .D(D[43]),
        .Q(m_axis_tdata[43]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[44] 
       (.C(clk),
        .CE(\m_axis_tdata[63]_i_1_n_0 ),
        .D(D[44]),
        .Q(m_axis_tdata[44]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[45] 
       (.C(clk),
        .CE(\m_axis_tdata[63]_i_1_n_0 ),
        .D(D[45]),
        .Q(m_axis_tdata[45]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[46] 
       (.C(clk),
        .CE(\m_axis_tdata[63]_i_1_n_0 ),
        .D(D[46]),
        .Q(m_axis_tdata[46]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[47] 
       (.C(clk),
        .CE(\m_axis_tdata[63]_i_1_n_0 ),
        .D(D[47]),
        .Q(m_axis_tdata[47]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[48] 
       (.C(clk),
        .CE(\m_axis_tdata[63]_i_1_n_0 ),
        .D(D[48]),
        .Q(m_axis_tdata[48]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[49] 
       (.C(clk),
        .CE(\m_axis_tdata[63]_i_1_n_0 ),
        .D(D[49]),
        .Q(m_axis_tdata[49]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[4] 
       (.C(clk),
        .CE(\m_axis_tdata[63]_i_1_n_0 ),
        .D(D[4]),
        .Q(m_axis_tdata[4]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[50] 
       (.C(clk),
        .CE(\m_axis_tdata[63]_i_1_n_0 ),
        .D(D[50]),
        .Q(m_axis_tdata[50]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[51] 
       (.C(clk),
        .CE(\m_axis_tdata[63]_i_1_n_0 ),
        .D(D[51]),
        .Q(m_axis_tdata[51]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[52] 
       (.C(clk),
        .CE(\m_axis_tdata[63]_i_1_n_0 ),
        .D(D[52]),
        .Q(m_axis_tdata[52]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[53] 
       (.C(clk),
        .CE(\m_axis_tdata[63]_i_1_n_0 ),
        .D(D[53]),
        .Q(m_axis_tdata[53]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[54] 
       (.C(clk),
        .CE(\m_axis_tdata[63]_i_1_n_0 ),
        .D(D[54]),
        .Q(m_axis_tdata[54]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[55] 
       (.C(clk),
        .CE(\m_axis_tdata[63]_i_1_n_0 ),
        .D(D[55]),
        .Q(m_axis_tdata[55]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[56] 
       (.C(clk),
        .CE(\m_axis_tdata[63]_i_1_n_0 ),
        .D(D[56]),
        .Q(m_axis_tdata[56]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[57] 
       (.C(clk),
        .CE(\m_axis_tdata[63]_i_1_n_0 ),
        .D(D[57]),
        .Q(m_axis_tdata[57]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[58] 
       (.C(clk),
        .CE(\m_axis_tdata[63]_i_1_n_0 ),
        .D(D[58]),
        .Q(m_axis_tdata[58]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[59] 
       (.C(clk),
        .CE(\m_axis_tdata[63]_i_1_n_0 ),
        .D(D[59]),
        .Q(m_axis_tdata[59]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[5] 
       (.C(clk),
        .CE(\m_axis_tdata[63]_i_1_n_0 ),
        .D(D[5]),
        .Q(m_axis_tdata[5]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[60] 
       (.C(clk),
        .CE(\m_axis_tdata[63]_i_1_n_0 ),
        .D(D[60]),
        .Q(m_axis_tdata[60]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[61] 
       (.C(clk),
        .CE(\m_axis_tdata[63]_i_1_n_0 ),
        .D(D[61]),
        .Q(m_axis_tdata[61]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[62] 
       (.C(clk),
        .CE(\m_axis_tdata[63]_i_1_n_0 ),
        .D(D[62]),
        .Q(m_axis_tdata[62]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[63] 
       (.C(clk),
        .CE(\m_axis_tdata[63]_i_1_n_0 ),
        .D(D[63]),
        .Q(m_axis_tdata[63]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[6] 
       (.C(clk),
        .CE(\m_axis_tdata[63]_i_1_n_0 ),
        .D(D[6]),
        .Q(m_axis_tdata[6]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[7] 
       (.C(clk),
        .CE(\m_axis_tdata[63]_i_1_n_0 ),
        .D(D[7]),
        .Q(m_axis_tdata[7]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[8] 
       (.C(clk),
        .CE(\m_axis_tdata[63]_i_1_n_0 ),
        .D(D[8]),
        .Q(m_axis_tdata[8]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[9] 
       (.C(clk),
        .CE(\m_axis_tdata[63]_i_1_n_0 ),
        .D(D[9]),
        .Q(m_axis_tdata[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h7F40)) 
    m_axis_tlast_i_1
       (.I0(m_axis_tlast_i_2_n_0),
        .I1(resetn),
        .I2(m_axis_tready),
        .I3(m_axis_tlast),
        .O(m_axis_tlast_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFFFFFFF)) 
    m_axis_tlast_i_2
       (.I0(m_axis_tlast_i_3_n_0),
        .I1(\count_reg_n_0_[5] ),
        .I2(\count_reg_n_0_[4] ),
        .I3(\count_reg_n_0_[7] ),
        .I4(\count_reg_n_0_[6] ),
        .I5(m_axis_tlast_i_4_n_0),
        .O(m_axis_tlast_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFF7)) 
    m_axis_tlast_i_3
       (.I0(\count_reg_n_0_[9] ),
        .I1(\count_reg_n_0_[8] ),
        .I2(\count_reg_n_0_[11] ),
        .I3(\count_reg_n_0_[10] ),
        .O(m_axis_tlast_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    m_axis_tlast_i_4
       (.I0(\count_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[3] ),
        .I3(\count_reg_n_0_[2] ),
        .O(m_axis_tlast_i_4_n_0));
  FDRE m_axis_tlast_reg
       (.C(clk),
        .CE(1'b1),
        .D(m_axis_tlast_i_1_n_0),
        .Q(m_axis_tlast),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    m_axis_tvalid_i_1
       (.I0(resetn),
        .O(m_axis_tvalid_i_1_n_0));
  FDRE m_axis_tvalid_reg
       (.C(clk),
        .CE(m_axis_tready),
        .D(m_axis_tready),
        .Q(m_axis_tvalid),
        .R(m_axis_tvalid_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3}),
        .CYINIT(\count_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({\count_reg_n_0_[4] ,\count_reg_n_0_[3] ,\count_reg_n_0_[2] ,\count_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,plusOp_carry__0_n_1,plusOp_carry__0_n_2,plusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({\count_reg_n_0_[8] ,\count_reg_n_0_[7] ,\count_reg_n_0_[6] ,\count_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO({NLW_plusOp_carry__1_CO_UNCONNECTED[3:2],plusOp_carry__1_n_2,plusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_plusOp_carry__1_O_UNCONNECTED[3],data0[11:9]}),
        .S({1'b0,\count_reg_n_0_[11] ,\count_reg_n_0_[10] ,\count_reg_n_0_[9] }));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
