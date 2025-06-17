// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Mon Jun 16 08:28:04 2025
// Host        : DESKTOP-SR46PLT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Engineering/projekt_sdup/projekt_sdup.gen/sources_1/bd/design_AdjustCoeffsAXI/ip/design_AdjustCoeffsAXI_myip_v1_0_S00_AXI_0_1/design_AdjustCoeffsAXI_myip_v1_0_S00_AXI_0_1_stub.v
// Design      : design_AdjustCoeffsAXI_myip_v1_0_S00_AXI_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "myip_v1_0_S00_AXI,Vivado 2022.2" *)
module design_AdjustCoeffsAXI_myip_v1_0_S00_AXI_0_1(clk, reset_n, i2s_mclk_adc, i2s_bclk_adc, 
  i2s_lr_adc, i2s_din, i2s_mclk_dac, i2s_bclk_dac, i2s_lr_dac, i2s_dout, S_AXI_ACLK, 
  S_AXI_ARESETN, S_AXI_AWADDR, S_AXI_AWPROT, S_AXI_AWVALID, S_AXI_AWREADY, S_AXI_WDATA, 
  S_AXI_WSTRB, S_AXI_WVALID, S_AXI_WREADY, S_AXI_BRESP, S_AXI_BVALID, S_AXI_BREADY, 
  S_AXI_ARADDR, S_AXI_ARPROT, S_AXI_ARVALID, S_AXI_ARREADY, S_AXI_RDATA, S_AXI_RRESP, 
  S_AXI_RVALID, S_AXI_RREADY)
/* synthesis syn_black_box black_box_pad_pin="clk,reset_n,i2s_mclk_adc,i2s_bclk_adc,i2s_lr_adc,i2s_din,i2s_mclk_dac,i2s_bclk_dac,i2s_lr_dac,i2s_dout,S_AXI_ACLK,S_AXI_ARESETN,S_AXI_AWADDR[7:0],S_AXI_AWPROT[2:0],S_AXI_AWVALID,S_AXI_AWREADY,S_AXI_WDATA[31:0],S_AXI_WSTRB[3:0],S_AXI_WVALID,S_AXI_WREADY,S_AXI_BRESP[1:0],S_AXI_BVALID,S_AXI_BREADY,S_AXI_ARADDR[7:0],S_AXI_ARPROT[2:0],S_AXI_ARVALID,S_AXI_ARREADY,S_AXI_RDATA[31:0],S_AXI_RRESP[1:0],S_AXI_RVALID,S_AXI_RREADY" */;
  input clk;
  input reset_n;
  output i2s_mclk_adc;
  output i2s_bclk_adc;
  output i2s_lr_adc;
  input i2s_din;
  output i2s_mclk_dac;
  output i2s_bclk_dac;
  output i2s_lr_dac;
  output i2s_dout;
  input S_AXI_ACLK;
  input S_AXI_ARESETN;
  input [7:0]S_AXI_AWADDR;
  input [2:0]S_AXI_AWPROT;
  input S_AXI_AWVALID;
  output S_AXI_AWREADY;
  input [31:0]S_AXI_WDATA;
  input [3:0]S_AXI_WSTRB;
  input S_AXI_WVALID;
  output S_AXI_WREADY;
  output [1:0]S_AXI_BRESP;
  output S_AXI_BVALID;
  input S_AXI_BREADY;
  input [7:0]S_AXI_ARADDR;
  input [2:0]S_AXI_ARPROT;
  input S_AXI_ARVALID;
  output S_AXI_ARREADY;
  output [31:0]S_AXI_RDATA;
  output [1:0]S_AXI_RRESP;
  output S_AXI_RVALID;
  input S_AXI_RREADY;
endmodule
