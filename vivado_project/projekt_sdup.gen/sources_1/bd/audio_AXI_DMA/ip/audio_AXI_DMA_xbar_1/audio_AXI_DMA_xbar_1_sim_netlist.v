// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Fri Jun 20 15:38:46 2025
// Host        : DESKTOP-SR46PLT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Engineering/projekt_sdup/projekt_sdup.gen/sources_1/bd/audio_AXI_DMA/ip/audio_AXI_DMA_xbar_1/audio_AXI_DMA_xbar_1_sim_netlist.v
// Design      : audio_AXI_DMA_xbar_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "audio_AXI_DMA_xbar_1,axi_crossbar_v2_1_28_axi_crossbar,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_crossbar_v2_1_28_axi_crossbar,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module audio_AXI_DMA_xbar_1
   (aclk,
    aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLKIF CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLKIF, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN audio_AXI_DMA_processing_system7_0_0_FCLK_CLK0, ASSOCIATED_BUSIF M00_AXI:M01_AXI:M02_AXI:M03_AXI:M04_AXI:M05_AXI:M06_AXI:M07_AXI:M08_AXI:M09_AXI:M10_AXI:M11_AXI:M12_AXI:M13_AXI:M14_AXI:M15_AXI:S00_AXI:S01_AXI:S02_AXI:S03_AXI:S04_AXI:S05_AXI:S06_AXI:S07_AXI:S08_AXI:S09_AXI:S10_AXI:S11_AXI:S12_AXI:S13_AXI:S14_AXI:S15_AXI, ASSOCIATED_RESET ARESETN, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RSTIF RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWID [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI AWID [0:0] [1:1]" *) input [1:0]s_axi_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR [31:0] [31:0], xilinx.com:interface:aximm:1.0 S01_AXI AWADDR [31:0] [63:32]" *) input [63:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWLEN [7:0] [7:0], xilinx.com:interface:aximm:1.0 S01_AXI AWLEN [7:0] [15:8]" *) input [15:0]s_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWSIZE [2:0] [2:0], xilinx.com:interface:aximm:1.0 S01_AXI AWSIZE [2:0] [5:3]" *) input [5:0]s_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWBURST [1:0] [1:0], xilinx.com:interface:aximm:1.0 S01_AXI AWBURST [1:0] [3:2]" *) input [3:0]s_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWLOCK [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI AWLOCK [0:0] [1:1]" *) input [1:0]s_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWCACHE [3:0] [3:0], xilinx.com:interface:aximm:1.0 S01_AXI AWCACHE [3:0] [7:4]" *) input [7:0]s_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT [2:0] [2:0], xilinx.com:interface:aximm:1.0 S01_AXI AWPROT [2:0] [5:3]" *) input [5:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWQOS [3:0] [3:0], xilinx.com:interface:aximm:1.0 S01_AXI AWQOS [3:0] [7:4]" *) input [7:0]s_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI AWVALID [0:0] [1:1]" *) input [1:0]s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI AWREADY [0:0] [1:1]" *) output [1:0]s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA [63:0] [63:0], xilinx.com:interface:aximm:1.0 S01_AXI WDATA [63:0] [127:64]" *) input [127:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB [7:0] [7:0], xilinx.com:interface:aximm:1.0 S01_AXI WSTRB [7:0] [15:8]" *) input [15:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WLAST [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI WLAST [0:0] [1:1]" *) input [1:0]s_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI WVALID [0:0] [1:1]" *) input [1:0]s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI WREADY [0:0] [1:1]" *) output [1:0]s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BID [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI BID [0:0] [1:1]" *) output [1:0]s_axi_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP [1:0] [1:0], xilinx.com:interface:aximm:1.0 S01_AXI BRESP [1:0] [3:2]" *) output [3:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI BVALID [0:0] [1:1]" *) output [1:0]s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI BREADY [0:0] [1:1]" *) input [1:0]s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARID [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI ARID [0:0] [1:1]" *) input [1:0]s_axi_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR [31:0] [31:0], xilinx.com:interface:aximm:1.0 S01_AXI ARADDR [31:0] [63:32]" *) input [63:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARLEN [7:0] [7:0], xilinx.com:interface:aximm:1.0 S01_AXI ARLEN [7:0] [15:8]" *) input [15:0]s_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARSIZE [2:0] [2:0], xilinx.com:interface:aximm:1.0 S01_AXI ARSIZE [2:0] [5:3]" *) input [5:0]s_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARBURST [1:0] [1:0], xilinx.com:interface:aximm:1.0 S01_AXI ARBURST [1:0] [3:2]" *) input [3:0]s_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARLOCK [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI ARLOCK [0:0] [1:1]" *) input [1:0]s_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARCACHE [3:0] [3:0], xilinx.com:interface:aximm:1.0 S01_AXI ARCACHE [3:0] [7:4]" *) input [7:0]s_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT [2:0] [2:0], xilinx.com:interface:aximm:1.0 S01_AXI ARPROT [2:0] [5:3]" *) input [5:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARQOS [3:0] [3:0], xilinx.com:interface:aximm:1.0 S01_AXI ARQOS [3:0] [7:4]" *) input [7:0]s_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI ARVALID [0:0] [1:1]" *) input [1:0]s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI ARREADY [0:0] [1:1]" *) output [1:0]s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RID [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI RID [0:0] [1:1]" *) output [1:0]s_axi_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA [63:0] [63:0], xilinx.com:interface:aximm:1.0 S01_AXI RDATA [63:0] [127:64]" *) output [127:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP [1:0] [1:0], xilinx.com:interface:aximm:1.0 S01_AXI RRESP [1:0] [3:2]" *) output [3:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RLAST [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI RLAST [0:0] [1:1]" *) output [1:0]s_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI RVALID [0:0] [1:1]" *) output [1:0]s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI RREADY [0:0] [1:1]" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN audio_AXI_DMA_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, XIL_INTERFACENAME S01_AXI, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN audio_AXI_DMA_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [1:0]s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWID [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI AWID [0:0] [1:1]" *) output [1:0]m_axi_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR [31:0] [31:0], xilinx.com:interface:aximm:1.0 M01_AXI AWADDR [31:0] [63:32]" *) output [63:0]m_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWLEN [7:0] [7:0], xilinx.com:interface:aximm:1.0 M01_AXI AWLEN [7:0] [15:8]" *) output [15:0]m_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWSIZE [2:0] [2:0], xilinx.com:interface:aximm:1.0 M01_AXI AWSIZE [2:0] [5:3]" *) output [5:0]m_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWBURST [1:0] [1:0], xilinx.com:interface:aximm:1.0 M01_AXI AWBURST [1:0] [3:2]" *) output [3:0]m_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWLOCK [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI AWLOCK [0:0] [1:1]" *) output [1:0]m_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWCACHE [3:0] [3:0], xilinx.com:interface:aximm:1.0 M01_AXI AWCACHE [3:0] [7:4]" *) output [7:0]m_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWPROT [2:0] [2:0], xilinx.com:interface:aximm:1.0 M01_AXI AWPROT [2:0] [5:3]" *) output [5:0]m_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWREGION [3:0] [3:0], xilinx.com:interface:aximm:1.0 M01_AXI AWREGION [3:0] [7:4]" *) output [7:0]m_axi_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWQOS [3:0] [3:0], xilinx.com:interface:aximm:1.0 M01_AXI AWQOS [3:0] [7:4]" *) output [7:0]m_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI AWVALID [0:0] [1:1]" *) output [1:0]m_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI AWREADY [0:0] [1:1]" *) input [1:0]m_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA [63:0] [63:0], xilinx.com:interface:aximm:1.0 M01_AXI WDATA [63:0] [127:64]" *) output [127:0]m_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB [7:0] [7:0], xilinx.com:interface:aximm:1.0 M01_AXI WSTRB [7:0] [15:8]" *) output [15:0]m_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WLAST [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI WLAST [0:0] [1:1]" *) output [1:0]m_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI WVALID [0:0] [1:1]" *) output [1:0]m_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI WREADY [0:0] [1:1]" *) input [1:0]m_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BID [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI BID [0:0] [1:1]" *) input [1:0]m_axi_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BRESP [1:0] [1:0], xilinx.com:interface:aximm:1.0 M01_AXI BRESP [1:0] [3:2]" *) input [3:0]m_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI BVALID [0:0] [1:1]" *) input [1:0]m_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI BREADY [0:0] [1:1]" *) output [1:0]m_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARID [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI ARID [0:0] [1:1]" *) output [1:0]m_axi_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR [31:0] [31:0], xilinx.com:interface:aximm:1.0 M01_AXI ARADDR [31:0] [63:32]" *) output [63:0]m_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARLEN [7:0] [7:0], xilinx.com:interface:aximm:1.0 M01_AXI ARLEN [7:0] [15:8]" *) output [15:0]m_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARSIZE [2:0] [2:0], xilinx.com:interface:aximm:1.0 M01_AXI ARSIZE [2:0] [5:3]" *) output [5:0]m_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARBURST [1:0] [1:0], xilinx.com:interface:aximm:1.0 M01_AXI ARBURST [1:0] [3:2]" *) output [3:0]m_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARLOCK [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI ARLOCK [0:0] [1:1]" *) output [1:0]m_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARCACHE [3:0] [3:0], xilinx.com:interface:aximm:1.0 M01_AXI ARCACHE [3:0] [7:4]" *) output [7:0]m_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARPROT [2:0] [2:0], xilinx.com:interface:aximm:1.0 M01_AXI ARPROT [2:0] [5:3]" *) output [5:0]m_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARREGION [3:0] [3:0], xilinx.com:interface:aximm:1.0 M01_AXI ARREGION [3:0] [7:4]" *) output [7:0]m_axi_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARQOS [3:0] [3:0], xilinx.com:interface:aximm:1.0 M01_AXI ARQOS [3:0] [7:4]" *) output [7:0]m_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI ARVALID [0:0] [1:1]" *) output [1:0]m_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI ARREADY [0:0] [1:1]" *) input [1:0]m_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RID [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI RID [0:0] [1:1]" *) input [1:0]m_axi_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RDATA [63:0] [63:0], xilinx.com:interface:aximm:1.0 M01_AXI RDATA [63:0] [127:64]" *) input [127:0]m_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RRESP [1:0] [1:0], xilinx.com:interface:aximm:1.0 M01_AXI RRESP [1:0] [3:2]" *) input [3:0]m_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RLAST [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI RLAST [0:0] [1:1]" *) input [1:0]m_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI RVALID [0:0] [1:1]" *) input [1:0]m_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI RREADY [0:0] [1:1]" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 16, PHASE 0.0, CLK_DOMAIN audio_AXI_DMA_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, XIL_INTERFACENAME M01_AXI, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 16, PHASE 0.0, CLK_DOMAIN audio_AXI_DMA_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [1:0]m_axi_rready;

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire [63:0]m_axi_awaddr;
  wire [3:0]m_axi_awburst;
  wire [7:0]m_axi_awcache;
  wire [1:0]m_axi_awid;
  wire [15:0]m_axi_awlen;
  wire [1:0]m_axi_awlock;
  wire [5:0]m_axi_awprot;
  wire [7:0]m_axi_awqos;
  wire [1:0]m_axi_awready;
  wire [5:0]m_axi_awsize;
  wire [1:0]m_axi_awvalid;
  wire [1:0]m_axi_bid;
  wire [1:0]m_axi_bready;
  wire [3:0]m_axi_bresp;
  wire [1:0]m_axi_bvalid;
  wire [127:0]m_axi_wdata;
  wire [1:0]m_axi_wlast;
  wire [1:0]m_axi_wready;
  wire [15:0]m_axi_wstrb;
  wire [1:0]m_axi_wvalid;
  wire [63:0]s_axi_awaddr;
  wire [3:0]s_axi_awburst;
  wire [7:0]s_axi_awcache;
  wire [15:0]s_axi_awlen;
  wire [1:0]s_axi_awlock;
  wire [5:0]s_axi_awprot;
  wire [7:0]s_axi_awqos;
  wire [1:0]s_axi_awready;
  wire [5:0]s_axi_awsize;
  wire [1:0]s_axi_awvalid;
  wire [1:0]s_axi_bready;
  wire [3:0]s_axi_bresp;
  wire [1:0]s_axi_bvalid;
  wire [127:0]s_axi_wdata;
  wire [1:0]s_axi_wlast;
  wire [1:0]s_axi_wready;
  wire [15:0]s_axi_wstrb;
  wire [1:0]s_axi_wvalid;
  wire [63:0]NLW_inst_m_axi_araddr_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arburst_UNCONNECTED;
  wire [7:0]NLW_inst_m_axi_arcache_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_arid_UNCONNECTED;
  wire [15:0]NLW_inst_m_axi_arlen_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_arlock_UNCONNECTED;
  wire [5:0]NLW_inst_m_axi_arprot_UNCONNECTED;
  wire [7:0]NLW_inst_m_axi_arqos_UNCONNECTED;
  wire [7:0]NLW_inst_m_axi_arregion_UNCONNECTED;
  wire [5:0]NLW_inst_m_axi_arsize_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_aruser_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_arvalid_UNCONNECTED;
  wire [7:0]NLW_inst_m_axi_awregion_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_awuser_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_rready_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_wid_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_wuser_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_arready_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_buser_UNCONNECTED;
  wire [127:0]NLW_inst_s_axi_rdata_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_rlast_UNCONNECTED;
  wire [3:0]NLW_inst_s_axi_rresp_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_ruser_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_rvalid_UNCONNECTED;

  assign m_axi_araddr[63] = \<const0> ;
  assign m_axi_araddr[62] = \<const0> ;
  assign m_axi_araddr[61] = \<const0> ;
  assign m_axi_araddr[60] = \<const0> ;
  assign m_axi_araddr[59] = \<const0> ;
  assign m_axi_araddr[58] = \<const0> ;
  assign m_axi_araddr[57] = \<const0> ;
  assign m_axi_araddr[56] = \<const0> ;
  assign m_axi_araddr[55] = \<const0> ;
  assign m_axi_araddr[54] = \<const0> ;
  assign m_axi_araddr[53] = \<const0> ;
  assign m_axi_araddr[52] = \<const0> ;
  assign m_axi_araddr[51] = \<const0> ;
  assign m_axi_araddr[50] = \<const0> ;
  assign m_axi_araddr[49] = \<const0> ;
  assign m_axi_araddr[48] = \<const0> ;
  assign m_axi_araddr[47] = \<const0> ;
  assign m_axi_araddr[46] = \<const0> ;
  assign m_axi_araddr[45] = \<const0> ;
  assign m_axi_araddr[44] = \<const0> ;
  assign m_axi_araddr[43] = \<const0> ;
  assign m_axi_araddr[42] = \<const0> ;
  assign m_axi_araddr[41] = \<const0> ;
  assign m_axi_araddr[40] = \<const0> ;
  assign m_axi_araddr[39] = \<const0> ;
  assign m_axi_araddr[38] = \<const0> ;
  assign m_axi_araddr[37] = \<const0> ;
  assign m_axi_araddr[36] = \<const0> ;
  assign m_axi_araddr[35] = \<const0> ;
  assign m_axi_araddr[34] = \<const0> ;
  assign m_axi_araddr[33] = \<const0> ;
  assign m_axi_araddr[32] = \<const0> ;
  assign m_axi_araddr[31] = \<const0> ;
  assign m_axi_araddr[30] = \<const0> ;
  assign m_axi_araddr[29] = \<const0> ;
  assign m_axi_araddr[28] = \<const0> ;
  assign m_axi_araddr[27] = \<const0> ;
  assign m_axi_araddr[26] = \<const0> ;
  assign m_axi_araddr[25] = \<const0> ;
  assign m_axi_araddr[24] = \<const0> ;
  assign m_axi_araddr[23] = \<const0> ;
  assign m_axi_araddr[22] = \<const0> ;
  assign m_axi_araddr[21] = \<const0> ;
  assign m_axi_araddr[20] = \<const0> ;
  assign m_axi_araddr[19] = \<const0> ;
  assign m_axi_araddr[18] = \<const0> ;
  assign m_axi_araddr[17] = \<const0> ;
  assign m_axi_araddr[16] = \<const0> ;
  assign m_axi_araddr[15] = \<const0> ;
  assign m_axi_araddr[14] = \<const0> ;
  assign m_axi_araddr[13] = \<const0> ;
  assign m_axi_araddr[12] = \<const0> ;
  assign m_axi_araddr[11] = \<const0> ;
  assign m_axi_araddr[10] = \<const0> ;
  assign m_axi_araddr[9] = \<const0> ;
  assign m_axi_araddr[8] = \<const0> ;
  assign m_axi_araddr[7] = \<const0> ;
  assign m_axi_araddr[6] = \<const0> ;
  assign m_axi_araddr[5] = \<const0> ;
  assign m_axi_araddr[4] = \<const0> ;
  assign m_axi_araddr[3] = \<const0> ;
  assign m_axi_araddr[2] = \<const0> ;
  assign m_axi_araddr[1] = \<const0> ;
  assign m_axi_araddr[0] = \<const0> ;
  assign m_axi_arburst[3] = \<const0> ;
  assign m_axi_arburst[2] = \<const0> ;
  assign m_axi_arburst[1] = \<const0> ;
  assign m_axi_arburst[0] = \<const0> ;
  assign m_axi_arcache[7] = \<const0> ;
  assign m_axi_arcache[6] = \<const0> ;
  assign m_axi_arcache[5] = \<const0> ;
  assign m_axi_arcache[4] = \<const0> ;
  assign m_axi_arcache[3] = \<const0> ;
  assign m_axi_arcache[2] = \<const0> ;
  assign m_axi_arcache[1] = \<const0> ;
  assign m_axi_arcache[0] = \<const0> ;
  assign m_axi_arid[1] = \<const0> ;
  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlen[15] = \<const0> ;
  assign m_axi_arlen[14] = \<const0> ;
  assign m_axi_arlen[13] = \<const0> ;
  assign m_axi_arlen[12] = \<const0> ;
  assign m_axi_arlen[11] = \<const0> ;
  assign m_axi_arlen[10] = \<const0> ;
  assign m_axi_arlen[9] = \<const0> ;
  assign m_axi_arlen[8] = \<const0> ;
  assign m_axi_arlen[7] = \<const0> ;
  assign m_axi_arlen[6] = \<const0> ;
  assign m_axi_arlen[5] = \<const0> ;
  assign m_axi_arlen[4] = \<const0> ;
  assign m_axi_arlen[3] = \<const0> ;
  assign m_axi_arlen[2] = \<const0> ;
  assign m_axi_arlen[1] = \<const0> ;
  assign m_axi_arlen[0] = \<const0> ;
  assign m_axi_arlock[1] = \<const0> ;
  assign m_axi_arlock[0] = \<const0> ;
  assign m_axi_arprot[5] = \<const0> ;
  assign m_axi_arprot[4] = \<const0> ;
  assign m_axi_arprot[3] = \<const0> ;
  assign m_axi_arprot[2] = \<const0> ;
  assign m_axi_arprot[1] = \<const0> ;
  assign m_axi_arprot[0] = \<const0> ;
  assign m_axi_arqos[7] = \<const0> ;
  assign m_axi_arqos[6] = \<const0> ;
  assign m_axi_arqos[5] = \<const0> ;
  assign m_axi_arqos[4] = \<const0> ;
  assign m_axi_arqos[3] = \<const0> ;
  assign m_axi_arqos[2] = \<const0> ;
  assign m_axi_arqos[1] = \<const0> ;
  assign m_axi_arqos[0] = \<const0> ;
  assign m_axi_arregion[7] = \<const0> ;
  assign m_axi_arregion[6] = \<const0> ;
  assign m_axi_arregion[5] = \<const0> ;
  assign m_axi_arregion[4] = \<const0> ;
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[5] = \<const0> ;
  assign m_axi_arsize[4] = \<const0> ;
  assign m_axi_arsize[3] = \<const0> ;
  assign m_axi_arsize[2] = \<const0> ;
  assign m_axi_arsize[1] = \<const0> ;
  assign m_axi_arsize[0] = \<const0> ;
  assign m_axi_arvalid[1] = \<const0> ;
  assign m_axi_arvalid[0] = \<const0> ;
  assign m_axi_awregion[7] = \<const0> ;
  assign m_axi_awregion[6] = \<const0> ;
  assign m_axi_awregion[5] = \<const0> ;
  assign m_axi_awregion[4] = \<const0> ;
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_rready[1] = \<const0> ;
  assign m_axi_rready[0] = \<const0> ;
  assign s_axi_arready[1] = \<const0> ;
  assign s_axi_arready[0] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_rdata[127] = \<const0> ;
  assign s_axi_rdata[126] = \<const0> ;
  assign s_axi_rdata[125] = \<const0> ;
  assign s_axi_rdata[124] = \<const0> ;
  assign s_axi_rdata[123] = \<const0> ;
  assign s_axi_rdata[122] = \<const0> ;
  assign s_axi_rdata[121] = \<const0> ;
  assign s_axi_rdata[120] = \<const0> ;
  assign s_axi_rdata[119] = \<const0> ;
  assign s_axi_rdata[118] = \<const0> ;
  assign s_axi_rdata[117] = \<const0> ;
  assign s_axi_rdata[116] = \<const0> ;
  assign s_axi_rdata[115] = \<const0> ;
  assign s_axi_rdata[114] = \<const0> ;
  assign s_axi_rdata[113] = \<const0> ;
  assign s_axi_rdata[112] = \<const0> ;
  assign s_axi_rdata[111] = \<const0> ;
  assign s_axi_rdata[110] = \<const0> ;
  assign s_axi_rdata[109] = \<const0> ;
  assign s_axi_rdata[108] = \<const0> ;
  assign s_axi_rdata[107] = \<const0> ;
  assign s_axi_rdata[106] = \<const0> ;
  assign s_axi_rdata[105] = \<const0> ;
  assign s_axi_rdata[104] = \<const0> ;
  assign s_axi_rdata[103] = \<const0> ;
  assign s_axi_rdata[102] = \<const0> ;
  assign s_axi_rdata[101] = \<const0> ;
  assign s_axi_rdata[100] = \<const0> ;
  assign s_axi_rdata[99] = \<const0> ;
  assign s_axi_rdata[98] = \<const0> ;
  assign s_axi_rdata[97] = \<const0> ;
  assign s_axi_rdata[96] = \<const0> ;
  assign s_axi_rdata[95] = \<const0> ;
  assign s_axi_rdata[94] = \<const0> ;
  assign s_axi_rdata[93] = \<const0> ;
  assign s_axi_rdata[92] = \<const0> ;
  assign s_axi_rdata[91] = \<const0> ;
  assign s_axi_rdata[90] = \<const0> ;
  assign s_axi_rdata[89] = \<const0> ;
  assign s_axi_rdata[88] = \<const0> ;
  assign s_axi_rdata[87] = \<const0> ;
  assign s_axi_rdata[86] = \<const0> ;
  assign s_axi_rdata[85] = \<const0> ;
  assign s_axi_rdata[84] = \<const0> ;
  assign s_axi_rdata[83] = \<const0> ;
  assign s_axi_rdata[82] = \<const0> ;
  assign s_axi_rdata[81] = \<const0> ;
  assign s_axi_rdata[80] = \<const0> ;
  assign s_axi_rdata[79] = \<const0> ;
  assign s_axi_rdata[78] = \<const0> ;
  assign s_axi_rdata[77] = \<const0> ;
  assign s_axi_rdata[76] = \<const0> ;
  assign s_axi_rdata[75] = \<const0> ;
  assign s_axi_rdata[74] = \<const0> ;
  assign s_axi_rdata[73] = \<const0> ;
  assign s_axi_rdata[72] = \<const0> ;
  assign s_axi_rdata[71] = \<const0> ;
  assign s_axi_rdata[70] = \<const0> ;
  assign s_axi_rdata[69] = \<const0> ;
  assign s_axi_rdata[68] = \<const0> ;
  assign s_axi_rdata[67] = \<const0> ;
  assign s_axi_rdata[66] = \<const0> ;
  assign s_axi_rdata[65] = \<const0> ;
  assign s_axi_rdata[64] = \<const0> ;
  assign s_axi_rdata[63] = \<const0> ;
  assign s_axi_rdata[62] = \<const0> ;
  assign s_axi_rdata[61] = \<const0> ;
  assign s_axi_rdata[60] = \<const0> ;
  assign s_axi_rdata[59] = \<const0> ;
  assign s_axi_rdata[58] = \<const0> ;
  assign s_axi_rdata[57] = \<const0> ;
  assign s_axi_rdata[56] = \<const0> ;
  assign s_axi_rdata[55] = \<const0> ;
  assign s_axi_rdata[54] = \<const0> ;
  assign s_axi_rdata[53] = \<const0> ;
  assign s_axi_rdata[52] = \<const0> ;
  assign s_axi_rdata[51] = \<const0> ;
  assign s_axi_rdata[50] = \<const0> ;
  assign s_axi_rdata[49] = \<const0> ;
  assign s_axi_rdata[48] = \<const0> ;
  assign s_axi_rdata[47] = \<const0> ;
  assign s_axi_rdata[46] = \<const0> ;
  assign s_axi_rdata[45] = \<const0> ;
  assign s_axi_rdata[44] = \<const0> ;
  assign s_axi_rdata[43] = \<const0> ;
  assign s_axi_rdata[42] = \<const0> ;
  assign s_axi_rdata[41] = \<const0> ;
  assign s_axi_rdata[40] = \<const0> ;
  assign s_axi_rdata[39] = \<const0> ;
  assign s_axi_rdata[38] = \<const0> ;
  assign s_axi_rdata[37] = \<const0> ;
  assign s_axi_rdata[36] = \<const0> ;
  assign s_axi_rdata[35] = \<const0> ;
  assign s_axi_rdata[34] = \<const0> ;
  assign s_axi_rdata[33] = \<const0> ;
  assign s_axi_rdata[32] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast[1] = \<const0> ;
  assign s_axi_rlast[0] = \<const0> ;
  assign s_axi_rresp[3] = \<const0> ;
  assign s_axi_rresp[2] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid[1] = \<const0> ;
  assign s_axi_rvalid[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_PROTOCOL = "0" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_CONNECTIVITY_MODE = "1" *) 
  (* C_DEBUG = "1" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_M_AXI_ADDR_WIDTH = "64'b0000000000000000000000000001110000000000000000000000000000011100" *) 
  (* C_M_AXI_BASE_ADDR = "128'b00000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" *) 
  (* C_M_AXI_READ_CONNECTIVITY = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) 
  (* C_M_AXI_READ_ISSUING = "64'b0000000000000000000000000000100000000000000000000000000000001000" *) 
  (* C_M_AXI_SECURE = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) 
  (* C_M_AXI_WRITE_CONNECTIVITY = "64'b0000000000000000000000000000001100000000000000000000000000000011" *) 
  (* C_M_AXI_WRITE_ISSUING = "64'b0000000000000000000000000000100000000000000000000000000000001000" *) 
  (* C_NUM_ADDR_RANGES = "1" *) 
  (* C_NUM_MASTER_SLOTS = "2" *) 
  (* C_NUM_SLAVE_SLOTS = "2" *) 
  (* C_R_REGISTER = "0" *) 
  (* C_S_AXI_ARB_PRIORITY = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) 
  (* C_S_AXI_BASE_ID = "64'b0000000000000000000000000000000100000000000000000000000000000000" *) 
  (* C_S_AXI_READ_ACCEPTANCE = "64'b0000000000000000000000000000001000000000000000000000000000000010" *) 
  (* C_S_AXI_SINGLE_THREAD = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) 
  (* C_S_AXI_THREAD_ID_WIDTH = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) 
  (* C_S_AXI_WRITE_ACCEPTANCE = "64'b0000000000000000000000000001000000000000000000000000000000010000" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* P_ADDR_DECODE = "1" *) 
  (* P_AXI3 = "1" *) 
  (* P_AXI4 = "0" *) 
  (* P_AXILITE = "2" *) 
  (* P_AXILITE_SIZE = "3'b010" *) 
  (* P_FAMILY = "zynq" *) 
  (* P_INCR = "2'b01" *) 
  (* P_LEN = "8" *) 
  (* P_LOCK = "1" *) 
  (* P_M_AXI_ERR_MODE = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) 
  (* P_M_AXI_SUPPORTS_READ = "2'b00" *) 
  (* P_M_AXI_SUPPORTS_WRITE = "2'b11" *) 
  (* P_ONES = "65'b11111111111111111111111111111111111111111111111111111111111111111" *) 
  (* P_RANGE_CHECK = "1" *) 
  (* P_S_AXI_BASE_ID = "128'b00000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000" *) 
  (* P_S_AXI_HIGH_ID = "128'b00000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000" *) 
  (* P_S_AXI_SUPPORTS_READ = "2'b00" *) 
  (* P_S_AXI_SUPPORTS_WRITE = "2'b11" *) 
  audio_AXI_DMA_xbar_1_axi_crossbar_v2_1_28_axi_crossbar inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axi_araddr(NLW_inst_m_axi_araddr_UNCONNECTED[63:0]),
        .m_axi_arburst(NLW_inst_m_axi_arburst_UNCONNECTED[3:0]),
        .m_axi_arcache(NLW_inst_m_axi_arcache_UNCONNECTED[7:0]),
        .m_axi_arid(NLW_inst_m_axi_arid_UNCONNECTED[1:0]),
        .m_axi_arlen(NLW_inst_m_axi_arlen_UNCONNECTED[15:0]),
        .m_axi_arlock(NLW_inst_m_axi_arlock_UNCONNECTED[1:0]),
        .m_axi_arprot(NLW_inst_m_axi_arprot_UNCONNECTED[5:0]),
        .m_axi_arqos(NLW_inst_m_axi_arqos_UNCONNECTED[7:0]),
        .m_axi_arready({1'b0,1'b0}),
        .m_axi_arregion(NLW_inst_m_axi_arregion_UNCONNECTED[7:0]),
        .m_axi_arsize(NLW_inst_m_axi_arsize_UNCONNECTED[5:0]),
        .m_axi_aruser(NLW_inst_m_axi_aruser_UNCONNECTED[1:0]),
        .m_axi_arvalid(NLW_inst_m_axi_arvalid_UNCONNECTED[1:0]),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awid(m_axi_awid),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock(m_axi_awlock),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awregion(NLW_inst_m_axi_awregion_UNCONNECTED[7:0]),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awuser(NLW_inst_m_axi_awuser_UNCONNECTED[1:0]),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bid(m_axi_bid),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_buser({1'b0,1'b0}),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid({1'b0,1'b0}),
        .m_axi_rlast({1'b0,1'b0}),
        .m_axi_rready(NLW_inst_m_axi_rready_UNCONNECTED[1:0]),
        .m_axi_rresp({1'b0,1'b0,1'b0,1'b0}),
        .m_axi_ruser({1'b0,1'b0}),
        .m_axi_rvalid({1'b0,1'b0}),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wid(NLW_inst_m_axi_wid_UNCONNECTED[1:0]),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wuser(NLW_inst_m_axi_wuser_UNCONNECTED[1:0]),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock({1'b0,1'b0}),
        .s_axi_arprot({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_inst_s_axi_arready_UNCONNECTED[1:0]),
        .s_axi_arsize({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_aruser({1'b0,1'b0}),
        .s_axi_arvalid({1'b0,1'b0}),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awid({1'b0,1'b0}),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awuser({1'b0,1'b0}),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(NLW_inst_s_axi_bid_UNCONNECTED[1:0]),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_buser(NLW_inst_s_axi_buser_UNCONNECTED[1:0]),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(NLW_inst_s_axi_rdata_UNCONNECTED[127:0]),
        .s_axi_rid(NLW_inst_s_axi_rid_UNCONNECTED[1:0]),
        .s_axi_rlast(NLW_inst_s_axi_rlast_UNCONNECTED[1:0]),
        .s_axi_rready({1'b0,1'b0}),
        .s_axi_rresp(NLW_inst_s_axi_rresp_UNCONNECTED[3:0]),
        .s_axi_ruser(NLW_inst_s_axi_ruser_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_inst_s_axi_rvalid_UNCONNECTED[1:0]),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wid({1'b0,1'b0}),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wuser({1'b0,1'b0}),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_28_addr_arbiter" *) 
module audio_AXI_DMA_xbar_1_axi_crossbar_v2_1_28_addr_arbiter
   (aa_wm_awgrant_enc,
    SS,
    p_1_in,
    D,
    Q,
    push,
    \gen_arbiter.m_valid_i_reg_inv_0 ,
    st_aa_awtarget_hot,
    st_aa_awtarget_enc_0,
    \gen_arbiter.m_valid_i_reg_inv_1 ,
    st_aa_awtarget_enc_2,
    sa_wm_awvalid__2,
    \FSM_onehot_state_reg[3] ,
    \FSM_onehot_state_reg[3]_0 ,
    \gen_master_slots[0].w_issuing_cnt_reg[1] ,
    mi_awvalid_en,
    \gen_master_slots[1].w_issuing_cnt_reg[9] ,
    p_30_in,
    aresetn_d_reg,
    mi_awready_mux__1,
    p_21_in,
    s_ready_i0__1,
    ss_aa_awready,
    \gen_axi.write_cs01_out ,
    m_axi_awvalid,
    match,
    match_0,
    \gen_arbiter.m_mesg_i_reg[0]_0 ,
    \gen_arbiter.m_mesg_i_reg[62]_0 ,
    aclk,
    m_aready__1,
    m_ready_d,
    m_valid_i_reg,
    mi_awmaxissuing1__0,
    mi_awready_2,
    w_issuing_cnt,
    valid_qual_i,
    s_axi_awaddr,
    aresetn_d,
    m_valid_i_reg_0,
    \FSM_onehot_state_reg[1] ,
    \FSM_onehot_state_reg[1]_0 ,
    mi_awmaxissuing129_in,
    m_axi_awready,
    mi_awmaxissuing120_in,
    m_ready_d_1,
    s_axi_awvalid,
    m_ready_d_2,
    s_axi_awqos,
    s_axi_awcache,
    s_axi_awburst,
    s_axi_awprot,
    s_axi_awlock,
    s_axi_awsize,
    s_axi_awlen,
    \gen_axi.s_axi_bid_i_reg[0] ,
    mi_bid_2,
    \gen_arbiter.qual_reg_reg[1]_0 );
  output aa_wm_awgrant_enc;
  output [0:0]SS;
  output p_1_in;
  output [1:0]D;
  output [2:0]Q;
  output push;
  output \gen_arbiter.m_valid_i_reg_inv_0 ;
  output [3:0]st_aa_awtarget_hot;
  output [0:0]st_aa_awtarget_enc_0;
  output \gen_arbiter.m_valid_i_reg_inv_1 ;
  output [0:0]st_aa_awtarget_enc_2;
  output [2:0]sa_wm_awvalid__2;
  output \FSM_onehot_state_reg[3] ;
  output \FSM_onehot_state_reg[3]_0 ;
  output [2:0]\gen_master_slots[0].w_issuing_cnt_reg[1] ;
  output mi_awvalid_en;
  output [2:0]\gen_master_slots[1].w_issuing_cnt_reg[9] ;
  output p_30_in;
  output aresetn_d_reg;
  output mi_awready_mux__1;
  output p_21_in;
  output [0:0]s_ready_i0__1;
  output [1:0]ss_aa_awready;
  output \gen_axi.write_cs01_out ;
  output [1:0]m_axi_awvalid;
  output match;
  output match_0;
  output \gen_arbiter.m_mesg_i_reg[0]_0 ;
  output [57:0]\gen_arbiter.m_mesg_i_reg[62]_0 ;
  input aclk;
  input m_aready__1;
  input [1:0]m_ready_d;
  input [1:0]m_valid_i_reg;
  input mi_awmaxissuing1__0;
  input mi_awready_2;
  input [8:0]w_issuing_cnt;
  input [1:0]valid_qual_i;
  input [63:0]s_axi_awaddr;
  input aresetn_d;
  input [0:0]m_valid_i_reg_0;
  input [0:0]\FSM_onehot_state_reg[1] ;
  input [0:0]\FSM_onehot_state_reg[1]_0 ;
  input mi_awmaxissuing129_in;
  input [1:0]m_axi_awready;
  input mi_awmaxissuing120_in;
  input [0:0]m_ready_d_1;
  input [1:0]s_axi_awvalid;
  input [0:0]m_ready_d_2;
  input [7:0]s_axi_awqos;
  input [7:0]s_axi_awcache;
  input [3:0]s_axi_awburst;
  input [5:0]s_axi_awprot;
  input [1:0]s_axi_awlock;
  input [5:0]s_axi_awsize;
  input [15:0]s_axi_awlen;
  input \gen_axi.s_axi_bid_i_reg[0] ;
  input mi_bid_2;
  input [1:0]\gen_arbiter.qual_reg_reg[1]_0 ;

  wire [1:0]D;
  wire [0:0]\FSM_onehot_state_reg[1] ;
  wire [0:0]\FSM_onehot_state_reg[1]_0 ;
  wire \FSM_onehot_state_reg[3] ;
  wire \FSM_onehot_state_reg[3]_0 ;
  wire [2:0]Q;
  wire [0:0]SS;
  wire aa_sa_awready;
  wire aa_wm_awgrant_enc;
  wire aclk;
  wire aresetn_d;
  wire aresetn_d_reg;
  wire f_hot2enc3_return;
  wire \gen_arbiter.any_grant_i_1_n_0 ;
  wire \gen_arbiter.any_grant_reg_n_0 ;
  wire \gen_arbiter.grant_hot[0]_i_1_n_0 ;
  wire \gen_arbiter.grant_hot[1]_i_1_n_0 ;
  wire \gen_arbiter.grant_hot[1]_i_2_n_0 ;
  wire \gen_arbiter.grant_hot_reg_n_0_[0] ;
  wire \gen_arbiter.grant_hot_reg_n_0_[1] ;
  wire \gen_arbiter.last_rr_hot[0]_i_1_n_0 ;
  wire \gen_arbiter.last_rr_hot_reg_n_0_[0] ;
  wire \gen_arbiter.m_grant_enc_i[0]_i_5_n_0 ;
  wire \gen_arbiter.m_mesg_i_reg[0]_0 ;
  wire [57:0]\gen_arbiter.m_mesg_i_reg[62]_0 ;
  wire \gen_arbiter.m_valid_i_inv_i_1_n_0 ;
  wire \gen_arbiter.m_valid_i_reg_inv_0 ;
  wire \gen_arbiter.m_valid_i_reg_inv_1 ;
  wire [1:0]\gen_arbiter.qual_reg_reg[1]_0 ;
  wire \gen_arbiter.s_ready_i[0]_i_1_n_0 ;
  wire \gen_arbiter.s_ready_i[1]_i_1_n_0 ;
  wire \gen_axi.s_axi_bid_i_reg[0] ;
  wire \gen_axi.write_cs01_out ;
  wire \gen_master_slots[0].w_issuing_cnt[3]_i_4_n_0 ;
  wire [2:0]\gen_master_slots[0].w_issuing_cnt_reg[1] ;
  wire \gen_master_slots[1].w_issuing_cnt[11]_i_4_n_0 ;
  wire [2:0]\gen_master_slots[1].w_issuing_cnt_reg[9] ;
  wire grant_hot;
  wire grant_hot0;
  wire m_aready__1;
  wire [1:0]m_axi_awready;
  wire [1:0]m_axi_awvalid;
  wire [62:1]m_mesg_mux;
  wire [1:0]m_ready_d;
  wire [0:0]m_ready_d_1;
  wire [0:0]m_ready_d_2;
  wire [2:0]m_target_hot_mux;
  wire [1:0]m_valid_i_reg;
  wire [0:0]m_valid_i_reg_0;
  wire match;
  wire match_0;
  wire mi_awmaxissuing120_in;
  wire mi_awmaxissuing129_in;
  wire mi_awmaxissuing1__0;
  wire mi_awready_2;
  wire mi_awready_mux__1;
  wire mi_awvalid_en;
  wire mi_bid_2;
  wire p_0_in10_in;
  wire p_1_in;
  wire p_21_in;
  wire p_2_in;
  wire p_30_in;
  wire push;
  wire [1:0]qual_reg;
  wire [63:0]s_axi_awaddr;
  wire [3:0]s_axi_awburst;
  wire [7:0]s_axi_awcache;
  wire [15:0]s_axi_awlen;
  wire [1:0]s_axi_awlock;
  wire [5:0]s_axi_awprot;
  wire [7:0]s_axi_awqos;
  wire [5:0]s_axi_awsize;
  wire [1:0]s_axi_awvalid;
  wire [0:0]s_ready_i0__1;
  wire [2:0]sa_wm_awvalid__2;
  wire [1:0]ss_aa_awready;
  wire [0:0]st_aa_awtarget_enc_0;
  wire [0:0]st_aa_awtarget_enc_2;
  wire [3:0]st_aa_awtarget_hot;
  wire [1:0]valid_qual_i;
  wire [8:0]w_issuing_cnt;

  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \FSM_onehot_gen_axi.write_cs[2]_i_2 
       (.I0(mi_awready_2),
        .I1(Q[2]),
        .I2(m_ready_d[1]),
        .I3(p_1_in),
        .O(\gen_axi.write_cs01_out ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h57550000)) 
    \FSM_onehot_state[0]_i_1__1 
       (.I0(m_aready__1),
        .I1(p_1_in),
        .I2(m_ready_d[0]),
        .I3(Q[2]),
        .I4(m_valid_i_reg[1]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \FSM_onehot_state[1]_i_2 
       (.I0(Q[2]),
        .I1(m_ready_d[0]),
        .I2(p_1_in),
        .O(sa_wm_awvalid__2[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \FSM_onehot_state[1]_i_2__0 
       (.I0(\FSM_onehot_state_reg[1] ),
        .I1(p_1_in),
        .I2(m_ready_d[0]),
        .I3(Q[1]),
        .O(\FSM_onehot_state_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \FSM_onehot_state[1]_i_2__1 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(p_1_in),
        .I2(m_ready_d[0]),
        .I3(Q[0]),
        .O(\FSM_onehot_state_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hA8AA0000)) 
    \FSM_onehot_state[3]_i_2__1 
       (.I0(m_aready__1),
        .I1(p_1_in),
        .I2(m_ready_d[0]),
        .I3(Q[2]),
        .I4(m_valid_i_reg[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \FSM_onehot_state[3]_i_4__1 
       (.I0(Q[1]),
        .I1(m_ready_d[0]),
        .I2(p_1_in),
        .O(sa_wm_awvalid__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \FSM_onehot_state[3]_i_4__2 
       (.I0(Q[0]),
        .I1(m_ready_d[0]),
        .I2(p_1_in),
        .O(sa_wm_awvalid__2[0]));
  LUT6 #(
    .INIT(64'h00000000FFE0FF00)) 
    \gen_arbiter.any_grant_i_1 
       (.I0(f_hot2enc3_return),
        .I1(\gen_arbiter.last_rr_hot[0]_i_1_n_0 ),
        .I2(grant_hot0),
        .I3(\gen_arbiter.any_grant_reg_n_0 ),
        .I4(p_1_in),
        .I5(\gen_arbiter.grant_hot[1]_i_2_n_0 ),
        .O(\gen_arbiter.any_grant_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \gen_arbiter.any_grant_i_2 
       (.I0(valid_qual_i[1]),
        .I1(f_hot2enc3_return),
        .I2(valid_qual_i[0]),
        .I3(\gen_arbiter.last_rr_hot[0]_i_1_n_0 ),
        .O(grant_hot0));
  FDRE \gen_arbiter.any_grant_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_arbiter.any_grant_i_1_n_0 ),
        .Q(\gen_arbiter.any_grant_reg_n_0 ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h00E2)) 
    \gen_arbiter.grant_hot[0]_i_1 
       (.I0(\gen_arbiter.grant_hot_reg_n_0_[0] ),
        .I1(grant_hot),
        .I2(\gen_arbiter.last_rr_hot[0]_i_1_n_0 ),
        .I3(\gen_arbiter.grant_hot[1]_i_2_n_0 ),
        .O(\gen_arbiter.grant_hot[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \gen_arbiter.grant_hot[1]_i_1 
       (.I0(\gen_arbiter.grant_hot_reg_n_0_[1] ),
        .I1(grant_hot),
        .I2(f_hot2enc3_return),
        .I3(\gen_arbiter.grant_hot[1]_i_2_n_0 ),
        .O(\gen_arbiter.grant_hot[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h2F)) 
    \gen_arbiter.grant_hot[1]_i_2 
       (.I0(aa_sa_awready),
        .I1(p_1_in),
        .I2(aresetn_d),
        .O(\gen_arbiter.grant_hot[1]_i_2_n_0 ));
  FDRE \gen_arbiter.grant_hot_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_arbiter.grant_hot[0]_i_1_n_0 ),
        .Q(\gen_arbiter.grant_hot_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \gen_arbiter.grant_hot_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_arbiter.grant_hot[1]_i_1_n_0 ),
        .Q(\gen_arbiter.grant_hot_reg_n_0_[1] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hF200)) 
    \gen_arbiter.last_rr_hot[0]_i_1 
       (.I0(\gen_arbiter.last_rr_hot_reg_n_0_[0] ),
        .I1(p_0_in10_in),
        .I2(p_2_in),
        .I3(\gen_arbiter.m_grant_enc_i[0]_i_5_n_0 ),
        .O(\gen_arbiter.last_rr_hot[0]_i_1_n_0 ));
  FDRE \gen_arbiter.last_rr_hot_reg[0] 
       (.C(aclk),
        .CE(grant_hot),
        .D(\gen_arbiter.last_rr_hot[0]_i_1_n_0 ),
        .Q(\gen_arbiter.last_rr_hot_reg_n_0_[0] ),
        .R(SS));
  FDSE \gen_arbiter.last_rr_hot_reg[1] 
       (.C(aclk),
        .CE(grant_hot),
        .D(f_hot2enc3_return),
        .Q(p_2_in),
        .S(SS));
  LUT6 #(
    .INIT(64'h2222200020002000)) 
    \gen_arbiter.m_grant_enc_i[0]_i_1 
       (.I0(p_1_in),
        .I1(\gen_arbiter.any_grant_reg_n_0 ),
        .I2(valid_qual_i[1]),
        .I3(f_hot2enc3_return),
        .I4(valid_qual_i[0]),
        .I5(\gen_arbiter.last_rr_hot[0]_i_1_n_0 ),
        .O(grant_hot));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \gen_arbiter.m_grant_enc_i[0]_i_17 
       (.I0(s_axi_awaddr[62]),
        .I1(s_axi_awaddr[63]),
        .I2(s_axi_awaddr[61]),
        .O(match));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hF200)) 
    \gen_arbiter.m_grant_enc_i[0]_i_2 
       (.I0(p_2_in),
        .I1(\gen_arbiter.m_grant_enc_i[0]_i_5_n_0 ),
        .I2(\gen_arbiter.last_rr_hot_reg_n_0_[0] ),
        .I3(p_0_in10_in),
        .O(f_hot2enc3_return));
  LUT4 #(
    .INIT(16'h0400)) 
    \gen_arbiter.m_grant_enc_i[0]_i_5 
       (.I0(ss_aa_awready[0]),
        .I1(qual_reg[0]),
        .I2(m_ready_d_2),
        .I3(s_axi_awvalid[0]),
        .O(\gen_arbiter.m_grant_enc_i[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \gen_arbiter.m_grant_enc_i[0]_i_6 
       (.I0(ss_aa_awready[1]),
        .I1(qual_reg[1]),
        .I2(m_ready_d_1),
        .I3(s_axi_awvalid[1]),
        .O(p_0_in10_in));
  FDRE \gen_arbiter.m_grant_enc_i_reg[0] 
       (.C(aclk),
        .CE(grant_hot),
        .D(f_hot2enc3_return),
        .Q(aa_wm_awgrant_enc),
        .R(SS));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_arbiter.m_mesg_i[0]_i_1 
       (.I0(aresetn_d),
        .O(SS));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[10]_i_1 
       (.I0(s_axi_awaddr[41]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awaddr[9]),
        .O(m_mesg_mux[10]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[11]_i_1 
       (.I0(s_axi_awaddr[42]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awaddr[10]),
        .O(m_mesg_mux[11]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[12]_i_1 
       (.I0(s_axi_awaddr[43]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awaddr[11]),
        .O(m_mesg_mux[12]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[13]_i_1 
       (.I0(s_axi_awaddr[44]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awaddr[12]),
        .O(m_mesg_mux[13]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[14]_i_1 
       (.I0(s_axi_awaddr[45]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awaddr[13]),
        .O(m_mesg_mux[14]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[15]_i_1 
       (.I0(s_axi_awaddr[46]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awaddr[14]),
        .O(m_mesg_mux[15]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[16]_i_1 
       (.I0(s_axi_awaddr[47]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awaddr[15]),
        .O(m_mesg_mux[16]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[17]_i_1 
       (.I0(s_axi_awaddr[48]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awaddr[16]),
        .O(m_mesg_mux[17]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[18]_i_1 
       (.I0(s_axi_awaddr[49]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awaddr[17]),
        .O(m_mesg_mux[18]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[19]_i_1 
       (.I0(s_axi_awaddr[50]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awaddr[18]),
        .O(m_mesg_mux[19]));
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[1]_i_1 
       (.I0(s_axi_awaddr[32]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awaddr[0]),
        .O(m_mesg_mux[1]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[20]_i_1 
       (.I0(s_axi_awaddr[51]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awaddr[19]),
        .O(m_mesg_mux[20]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[21]_i_1 
       (.I0(s_axi_awaddr[52]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awaddr[20]),
        .O(m_mesg_mux[21]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[22]_i_1 
       (.I0(s_axi_awaddr[53]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awaddr[21]),
        .O(m_mesg_mux[22]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[23]_i_1 
       (.I0(s_axi_awaddr[54]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awaddr[22]),
        .O(m_mesg_mux[23]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[24]_i_1 
       (.I0(s_axi_awaddr[55]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awaddr[23]),
        .O(m_mesg_mux[24]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[25]_i_1 
       (.I0(s_axi_awaddr[56]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awaddr[24]),
        .O(m_mesg_mux[25]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[26]_i_1 
       (.I0(s_axi_awaddr[57]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awaddr[25]),
        .O(m_mesg_mux[26]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[27]_i_1 
       (.I0(s_axi_awaddr[58]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awaddr[26]),
        .O(m_mesg_mux[27]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[28]_i_1 
       (.I0(s_axi_awaddr[59]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awaddr[27]),
        .O(m_mesg_mux[28]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[29]_i_1 
       (.I0(s_axi_awaddr[60]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awaddr[28]),
        .O(m_mesg_mux[29]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[2]_i_1 
       (.I0(s_axi_awaddr[33]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awaddr[1]),
        .O(m_mesg_mux[2]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[30]_i_1 
       (.I0(s_axi_awaddr[61]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awaddr[29]),
        .O(m_mesg_mux[30]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[31]_i_1 
       (.I0(s_axi_awaddr[62]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awaddr[30]),
        .O(m_mesg_mux[31]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[32]_i_1 
       (.I0(s_axi_awaddr[63]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awaddr[31]),
        .O(m_mesg_mux[32]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[33]_i_1 
       (.I0(s_axi_awlen[8]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awlen[0]),
        .O(m_mesg_mux[33]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[34]_i_1 
       (.I0(s_axi_awlen[9]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awlen[1]),
        .O(m_mesg_mux[34]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[35]_i_1 
       (.I0(s_axi_awlen[10]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awlen[2]),
        .O(m_mesg_mux[35]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[36]_i_1 
       (.I0(s_axi_awlen[11]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awlen[3]),
        .O(m_mesg_mux[36]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[37]_i_1 
       (.I0(s_axi_awlen[12]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awlen[4]),
        .O(m_mesg_mux[37]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[38]_i_1 
       (.I0(s_axi_awlen[13]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awlen[5]),
        .O(m_mesg_mux[38]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[39]_i_1 
       (.I0(s_axi_awlen[14]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awlen[6]),
        .O(m_mesg_mux[39]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[3]_i_1 
       (.I0(s_axi_awaddr[34]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awaddr[2]),
        .O(m_mesg_mux[3]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[40]_i_1 
       (.I0(s_axi_awlen[15]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awlen[7]),
        .O(m_mesg_mux[40]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[41]_i_1 
       (.I0(s_axi_awsize[3]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awsize[0]),
        .O(m_mesg_mux[41]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[42]_i_1 
       (.I0(s_axi_awsize[4]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awsize[1]),
        .O(m_mesg_mux[42]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[43]_i_1 
       (.I0(s_axi_awsize[5]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awsize[2]),
        .O(m_mesg_mux[43]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[44]_i_1 
       (.I0(s_axi_awlock[1]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awlock[0]),
        .O(m_mesg_mux[44]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[46]_i_1 
       (.I0(s_axi_awprot[3]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awprot[0]),
        .O(m_mesg_mux[46]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[47]_i_1 
       (.I0(s_axi_awprot[4]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awprot[1]),
        .O(m_mesg_mux[47]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[48]_i_1 
       (.I0(s_axi_awprot[5]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awprot[2]),
        .O(m_mesg_mux[48]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[4]_i_1 
       (.I0(s_axi_awaddr[35]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awaddr[3]),
        .O(m_mesg_mux[4]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[53]_i_1 
       (.I0(s_axi_awburst[2]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awburst[0]),
        .O(m_mesg_mux[53]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[54]_i_1 
       (.I0(s_axi_awburst[3]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awburst[1]),
        .O(m_mesg_mux[54]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[55]_i_1 
       (.I0(s_axi_awcache[4]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awcache[0]),
        .O(m_mesg_mux[55]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[56]_i_1 
       (.I0(s_axi_awcache[5]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awcache[1]),
        .O(m_mesg_mux[56]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[57]_i_1 
       (.I0(s_axi_awcache[6]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awcache[2]),
        .O(m_mesg_mux[57]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[58]_i_1 
       (.I0(s_axi_awcache[7]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awcache[3]),
        .O(m_mesg_mux[58]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[59]_i_1 
       (.I0(s_axi_awqos[4]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awqos[0]),
        .O(m_mesg_mux[59]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[5]_i_1 
       (.I0(s_axi_awaddr[36]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awaddr[4]),
        .O(m_mesg_mux[5]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[60]_i_1 
       (.I0(s_axi_awqos[5]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awqos[1]),
        .O(m_mesg_mux[60]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[61]_i_1 
       (.I0(s_axi_awqos[6]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awqos[2]),
        .O(m_mesg_mux[61]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[62]_i_1 
       (.I0(s_axi_awqos[7]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awqos[3]),
        .O(m_mesg_mux[62]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[6]_i_1 
       (.I0(s_axi_awaddr[37]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awaddr[5]),
        .O(m_mesg_mux[6]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[7]_i_1 
       (.I0(s_axi_awaddr[38]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awaddr[6]),
        .O(m_mesg_mux[7]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[8]_i_1 
       (.I0(s_axi_awaddr[39]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awaddr[7]),
        .O(m_mesg_mux[8]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[9]_i_1 
       (.I0(s_axi_awaddr[40]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awaddr[8]),
        .O(m_mesg_mux[9]));
  FDRE \gen_arbiter.m_mesg_i_reg[0] 
       (.C(aclk),
        .CE(p_1_in),
        .D(aa_wm_awgrant_enc),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [0]),
        .R(SS));
  FDRE \gen_arbiter.m_mesg_i_reg[10] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[10]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [10]),
        .R(SS));
  FDRE \gen_arbiter.m_mesg_i_reg[11] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[11]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [11]),
        .R(SS));
  FDRE \gen_arbiter.m_mesg_i_reg[12] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[12]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [12]),
        .R(SS));
  FDRE \gen_arbiter.m_mesg_i_reg[13] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[13]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [13]),
        .R(SS));
  FDRE \gen_arbiter.m_mesg_i_reg[14] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[14]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [14]),
        .R(SS));
  FDRE \gen_arbiter.m_mesg_i_reg[15] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[15]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [15]),
        .R(SS));
  FDRE \gen_arbiter.m_mesg_i_reg[16] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[16]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [16]),
        .R(SS));
  FDRE \gen_arbiter.m_mesg_i_reg[17] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[17]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [17]),
        .R(SS));
  FDRE \gen_arbiter.m_mesg_i_reg[18] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[18]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [18]),
        .R(SS));
  FDRE \gen_arbiter.m_mesg_i_reg[19] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[19]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [19]),
        .R(SS));
  FDRE \gen_arbiter.m_mesg_i_reg[1] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[1]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [1]),
        .R(SS));
  FDRE \gen_arbiter.m_mesg_i_reg[20] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[20]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [20]),
        .R(SS));
  FDRE \gen_arbiter.m_mesg_i_reg[21] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[21]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [21]),
        .R(SS));
  FDRE \gen_arbiter.m_mesg_i_reg[22] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[22]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [22]),
        .R(SS));
  FDRE \gen_arbiter.m_mesg_i_reg[23] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[23]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [23]),
        .R(SS));
  FDRE \gen_arbiter.m_mesg_i_reg[24] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[24]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [24]),
        .R(SS));
  FDRE \gen_arbiter.m_mesg_i_reg[25] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[25]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [25]),
        .R(SS));
  FDRE \gen_arbiter.m_mesg_i_reg[26] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[26]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [26]),
        .R(SS));
  FDRE \gen_arbiter.m_mesg_i_reg[27] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[27]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [27]),
        .R(SS));
  FDRE \gen_arbiter.m_mesg_i_reg[28] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[28]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [28]),
        .R(SS));
  FDRE \gen_arbiter.m_mesg_i_reg[29] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[29]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [29]),
        .R(SS));
  FDRE \gen_arbiter.m_mesg_i_reg[2] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[2]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [2]),
        .R(SS));
  FDRE \gen_arbiter.m_mesg_i_reg[30] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[30]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [30]),
        .R(SS));
  FDRE \gen_arbiter.m_mesg_i_reg[31] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[31]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [31]),
        .R(SS));
  FDRE \gen_arbiter.m_mesg_i_reg[32] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[32]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [32]),
        .R(SS));
  FDRE \gen_arbiter.m_mesg_i_reg[33] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[33]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [33]),
        .R(SS));
  FDRE \gen_arbiter.m_mesg_i_reg[34] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[34]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [34]),
        .R(SS));
  FDRE \gen_arbiter.m_mesg_i_reg[35] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[35]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [35]),
        .R(SS));
  FDRE \gen_arbiter.m_mesg_i_reg[36] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[36]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [36]),
        .R(SS));
  FDRE \gen_arbiter.m_mesg_i_reg[37] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[37]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [37]),
        .R(SS));
  FDRE \gen_arbiter.m_mesg_i_reg[38] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[38]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [38]),
        .R(SS));
  FDRE \gen_arbiter.m_mesg_i_reg[39] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[39]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [39]),
        .R(SS));
  FDRE \gen_arbiter.m_mesg_i_reg[3] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[3]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [3]),
        .R(SS));
  FDRE \gen_arbiter.m_mesg_i_reg[40] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[40]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [40]),
        .R(SS));
  FDRE \gen_arbiter.m_mesg_i_reg[41] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[41]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [41]),
        .R(SS));
  FDRE \gen_arbiter.m_mesg_i_reg[42] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[42]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [42]),
        .R(SS));
  FDRE \gen_arbiter.m_mesg_i_reg[43] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[43]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [43]),
        .R(SS));
  FDRE \gen_arbiter.m_mesg_i_reg[44] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[44]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [44]),
        .R(SS));
  FDRE \gen_arbiter.m_mesg_i_reg[46] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[46]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [45]),
        .R(SS));
  FDRE \gen_arbiter.m_mesg_i_reg[47] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[47]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [46]),
        .R(SS));
  FDRE \gen_arbiter.m_mesg_i_reg[48] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[48]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [47]),
        .R(SS));
  FDRE \gen_arbiter.m_mesg_i_reg[4] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[4]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [4]),
        .R(SS));
  FDRE \gen_arbiter.m_mesg_i_reg[53] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[53]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [48]),
        .R(SS));
  FDRE \gen_arbiter.m_mesg_i_reg[54] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[54]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [49]),
        .R(SS));
  FDRE \gen_arbiter.m_mesg_i_reg[55] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[55]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [50]),
        .R(SS));
  FDRE \gen_arbiter.m_mesg_i_reg[56] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[56]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [51]),
        .R(SS));
  FDRE \gen_arbiter.m_mesg_i_reg[57] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[57]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [52]),
        .R(SS));
  FDRE \gen_arbiter.m_mesg_i_reg[58] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[58]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [53]),
        .R(SS));
  FDRE \gen_arbiter.m_mesg_i_reg[59] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[59]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [54]),
        .R(SS));
  FDRE \gen_arbiter.m_mesg_i_reg[5] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[5]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [5]),
        .R(SS));
  FDRE \gen_arbiter.m_mesg_i_reg[60] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[60]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [55]),
        .R(SS));
  FDRE \gen_arbiter.m_mesg_i_reg[61] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[61]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [56]),
        .R(SS));
  FDRE \gen_arbiter.m_mesg_i_reg[62] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[62]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [57]),
        .R(SS));
  FDRE \gen_arbiter.m_mesg_i_reg[6] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[6]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [6]),
        .R(SS));
  FDRE \gen_arbiter.m_mesg_i_reg[7] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[7]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [7]),
        .R(SS));
  FDRE \gen_arbiter.m_mesg_i_reg[8] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[8]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [8]),
        .R(SS));
  FDRE \gen_arbiter.m_mesg_i_reg[9] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[9]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [9]),
        .R(SS));
  LUT6 #(
    .INIT(64'h0001FFFF00010000)) 
    \gen_arbiter.m_target_hot_i[0]_i_1 
       (.I0(s_axi_awaddr[61]),
        .I1(s_axi_awaddr[60]),
        .I2(s_axi_awaddr[63]),
        .I3(s_axi_awaddr[62]),
        .I4(f_hot2enc3_return),
        .I5(st_aa_awtarget_hot[0]),
        .O(m_target_hot_mux[0]));
  LUT6 #(
    .INIT(64'h0010FFFF00100000)) 
    \gen_arbiter.m_target_hot_i[1]_i_1 
       (.I0(s_axi_awaddr[62]),
        .I1(s_axi_awaddr[63]),
        .I2(s_axi_awaddr[60]),
        .I3(s_axi_awaddr[61]),
        .I4(f_hot2enc3_return),
        .I5(st_aa_awtarget_hot[1]),
        .O(m_target_hot_mux[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFE00FEFF)) 
    \gen_arbiter.m_target_hot_i[2]_i_1 
       (.I0(s_axi_awaddr[61]),
        .I1(s_axi_awaddr[63]),
        .I2(s_axi_awaddr[62]),
        .I3(f_hot2enc3_return),
        .I4(match_0),
        .O(m_target_hot_mux[2]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \gen_arbiter.m_target_hot_i[2]_i_2 
       (.I0(s_axi_awaddr[30]),
        .I1(s_axi_awaddr[31]),
        .I2(s_axi_awaddr[29]),
        .O(match_0));
  FDRE \gen_arbiter.m_target_hot_i_reg[0] 
       (.C(aclk),
        .CE(grant_hot),
        .D(m_target_hot_mux[0]),
        .Q(Q[0]),
        .R(SS));
  FDRE \gen_arbiter.m_target_hot_i_reg[1] 
       (.C(aclk),
        .CE(grant_hot),
        .D(m_target_hot_mux[1]),
        .Q(Q[1]),
        .R(SS));
  FDRE \gen_arbiter.m_target_hot_i_reg[2] 
       (.C(aclk),
        .CE(grant_hot),
        .D(m_target_hot_mux[2]),
        .Q(Q[2]),
        .R(SS));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h3A)) 
    \gen_arbiter.m_valid_i_inv_i_1 
       (.I0(aa_sa_awready),
        .I1(\gen_arbiter.any_grant_reg_n_0 ),
        .I2(p_1_in),
        .O(\gen_arbiter.m_valid_i_inv_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEEEEE0)) 
    \gen_arbiter.m_valid_i_inv_i_2 
       (.I0(m_ready_d[1]),
        .I1(mi_awready_mux__1),
        .I2(m_ready_d[0]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(aa_sa_awready));
  (* inverted = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \gen_arbiter.m_valid_i_reg_inv 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_arbiter.m_valid_i_inv_i_1_n_0 ),
        .Q(p_1_in),
        .S(SS));
  FDRE \gen_arbiter.qual_reg_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_arbiter.qual_reg_reg[1]_0 [0]),
        .Q(qual_reg[0]),
        .R(SS));
  FDRE \gen_arbiter.qual_reg_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_arbiter.qual_reg_reg[1]_0 [1]),
        .Q(qual_reg[1]),
        .R(SS));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \gen_arbiter.s_ready_i[0]_i_1 
       (.I0(\gen_arbiter.grant_hot_reg_n_0_[0] ),
        .I1(aresetn_d),
        .I2(p_1_in),
        .I3(\gen_arbiter.any_grant_reg_n_0 ),
        .O(\gen_arbiter.s_ready_i[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \gen_arbiter.s_ready_i[1]_i_1 
       (.I0(\gen_arbiter.grant_hot_reg_n_0_[1] ),
        .I1(aresetn_d),
        .I2(p_1_in),
        .I3(\gen_arbiter.any_grant_reg_n_0 ),
        .O(\gen_arbiter.s_ready_i[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_arbiter.s_ready_i_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_arbiter.s_ready_i[0]_i_1_n_0 ),
        .Q(ss_aa_awready[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_arbiter.s_ready_i_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_arbiter.s_ready_i[1]_i_1_n_0 ),
        .Q(ss_aa_awready[1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \gen_axi.s_axi_bid_i[0]_i_1 
       (.I0(\gen_arbiter.m_mesg_i_reg[62]_0 [0]),
        .I1(\gen_axi.s_axi_bid_i_reg[0] ),
        .I2(mi_awvalid_en),
        .I3(Q[2]),
        .I4(mi_awready_2),
        .I5(mi_bid_2),
        .O(\gen_arbiter.m_mesg_i_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAA95555555)) 
    \gen_master_slots[0].w_issuing_cnt[1]_i_1 
       (.I0(w_issuing_cnt[0]),
        .I1(mi_awmaxissuing129_in),
        .I2(m_axi_awready[0]),
        .I3(Q[0]),
        .I4(mi_awvalid_en),
        .I5(w_issuing_cnt[1]),
        .O(\gen_master_slots[0].w_issuing_cnt_reg[1] [0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7E81)) 
    \gen_master_slots[0].w_issuing_cnt[2]_i_1 
       (.I0(\gen_master_slots[0].w_issuing_cnt[3]_i_4_n_0 ),
        .I1(w_issuing_cnt[0]),
        .I2(w_issuing_cnt[1]),
        .I3(w_issuing_cnt[2]),
        .O(\gen_master_slots[0].w_issuing_cnt_reg[1] [1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7F80FE01)) 
    \gen_master_slots[0].w_issuing_cnt[3]_i_2 
       (.I0(w_issuing_cnt[1]),
        .I1(\gen_master_slots[0].w_issuing_cnt[3]_i_4_n_0 ),
        .I2(w_issuing_cnt[0]),
        .I3(w_issuing_cnt[3]),
        .I4(w_issuing_cnt[2]),
        .O(\gen_master_slots[0].w_issuing_cnt_reg[1] [2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \gen_master_slots[0].w_issuing_cnt[3]_i_3 
       (.I0(m_axi_awready[0]),
        .I1(Q[0]),
        .I2(m_ready_d[1]),
        .I3(p_1_in),
        .O(p_30_in));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \gen_master_slots[0].w_issuing_cnt[3]_i_4 
       (.I0(p_1_in),
        .I1(m_ready_d[1]),
        .I2(Q[0]),
        .I3(m_axi_awready[0]),
        .I4(mi_awmaxissuing129_in),
        .O(\gen_master_slots[0].w_issuing_cnt[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7E81)) 
    \gen_master_slots[1].w_issuing_cnt[10]_i_1 
       (.I0(\gen_master_slots[1].w_issuing_cnt[11]_i_4_n_0 ),
        .I1(w_issuing_cnt[4]),
        .I2(w_issuing_cnt[5]),
        .I3(w_issuing_cnt[6]),
        .O(\gen_master_slots[1].w_issuing_cnt_reg[9] [1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7F80FE01)) 
    \gen_master_slots[1].w_issuing_cnt[11]_i_2 
       (.I0(w_issuing_cnt[5]),
        .I1(\gen_master_slots[1].w_issuing_cnt[11]_i_4_n_0 ),
        .I2(w_issuing_cnt[4]),
        .I3(w_issuing_cnt[7]),
        .I4(w_issuing_cnt[6]),
        .O(\gen_master_slots[1].w_issuing_cnt_reg[9] [2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \gen_master_slots[1].w_issuing_cnt[11]_i_3 
       (.I0(m_axi_awready[1]),
        .I1(Q[1]),
        .I2(m_ready_d[1]),
        .I3(p_1_in),
        .O(p_21_in));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \gen_master_slots[1].w_issuing_cnt[11]_i_4 
       (.I0(p_1_in),
        .I1(m_ready_d[1]),
        .I2(Q[1]),
        .I3(m_axi_awready[1]),
        .I4(mi_awmaxissuing120_in),
        .O(\gen_master_slots[1].w_issuing_cnt[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAA95555555)) 
    \gen_master_slots[1].w_issuing_cnt[9]_i_1 
       (.I0(w_issuing_cnt[4]),
        .I1(mi_awmaxissuing120_in),
        .I2(m_axi_awready[1]),
        .I3(Q[1]),
        .I4(mi_awvalid_en),
        .I5(w_issuing_cnt[5]),
        .O(\gen_master_slots[1].w_issuing_cnt_reg[9] [0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \gen_master_slots[1].w_issuing_cnt[9]_i_2 
       (.I0(p_1_in),
        .I1(m_ready_d[1]),
        .O(mi_awvalid_en));
  LUT6 #(
    .INIT(64'hA9AAAAAA02000000)) 
    \gen_master_slots[2].w_issuing_cnt[16]_i_1 
       (.I0(mi_awmaxissuing1__0),
        .I1(p_1_in),
        .I2(m_ready_d[1]),
        .I3(Q[2]),
        .I4(mi_awready_2),
        .I5(w_issuing_cnt[8]),
        .O(\gen_arbiter.m_valid_i_reg_inv_0 ));
  LUT6 #(
    .INIT(64'h000C000C00040000)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_1__3 
       (.I0(m_aready__1),
        .I1(Q[2]),
        .I2(m_ready_d[0]),
        .I3(p_1_in),
        .I4(m_valid_i_reg[1]),
        .I5(m_valid_i_reg[0]),
        .O(push));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \gen_single_thread.active_target_enc[0]_i_1 
       (.I0(s_axi_awaddr[29]),
        .I1(s_axi_awaddr[28]),
        .I2(s_axi_awaddr[31]),
        .I3(s_axi_awaddr[30]),
        .O(st_aa_awtarget_enc_0));
  LUT4 #(
    .INIT(16'h0004)) 
    \gen_single_thread.active_target_enc[0]_i_1__0 
       (.I0(s_axi_awaddr[61]),
        .I1(s_axi_awaddr[60]),
        .I2(s_axi_awaddr[63]),
        .I3(s_axi_awaddr[62]),
        .O(st_aa_awtarget_enc_2));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \gen_single_thread.active_target_hot[0]_i_1 
       (.I0(s_axi_awaddr[29]),
        .I1(s_axi_awaddr[28]),
        .I2(s_axi_awaddr[31]),
        .I3(s_axi_awaddr[30]),
        .O(st_aa_awtarget_hot[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \gen_single_thread.active_target_hot[0]_i_1__0 
       (.I0(s_axi_awaddr[61]),
        .I1(s_axi_awaddr[60]),
        .I2(s_axi_awaddr[63]),
        .I3(s_axi_awaddr[62]),
        .O(st_aa_awtarget_hot[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \gen_single_thread.active_target_hot[1]_i_1 
       (.I0(s_axi_awaddr[30]),
        .I1(s_axi_awaddr[31]),
        .I2(s_axi_awaddr[28]),
        .I3(s_axi_awaddr[29]),
        .O(st_aa_awtarget_hot[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \gen_single_thread.active_target_hot[1]_i_1__0 
       (.I0(s_axi_awaddr[62]),
        .I1(s_axi_awaddr[63]),
        .I2(s_axi_awaddr[60]),
        .I3(s_axi_awaddr[61]),
        .O(st_aa_awtarget_hot[3]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \m_axi_awvalid[0]_INST_0 
       (.I0(Q[0]),
        .I1(m_ready_d[1]),
        .I2(p_1_in),
        .O(m_axi_awvalid[0]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \m_axi_awvalid[1]_INST_0 
       (.I0(Q[1]),
        .I1(m_ready_d[1]),
        .I2(p_1_in),
        .O(m_axi_awvalid[1]));
  LUT2 #(
    .INIT(4'hB)) 
    \m_ready_d[0]_i_2 
       (.I0(aa_sa_awready),
        .I1(aresetn_d),
        .O(aresetn_d_reg));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_ready_d[1]_i_2 
       (.I0(Q[0]),
        .I1(m_axi_awready[0]),
        .I2(Q[1]),
        .I3(m_axi_awready[1]),
        .I4(mi_awready_2),
        .I5(Q[2]),
        .O(mi_awready_mux__1));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_ready_d[1]_i_3 
       (.I0(m_ready_d[0]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(s_ready_i0__1));
  LUT6 #(
    .INIT(64'hFFFFFFFF01000000)) 
    m_valid_i_i_1__0
       (.I0(m_aready__1),
        .I1(p_1_in),
        .I2(m_ready_d[0]),
        .I3(Q[2]),
        .I4(m_valid_i_reg[1]),
        .I5(m_valid_i_reg_0),
        .O(\gen_arbiter.m_valid_i_reg_inv_1 ));
endmodule

(* C_AXI_ADDR_WIDTH = "32" *) (* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) 
(* C_AXI_BUSER_WIDTH = "1" *) (* C_AXI_DATA_WIDTH = "64" *) (* C_AXI_ID_WIDTH = "1" *) 
(* C_AXI_PROTOCOL = "0" *) (* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
(* C_AXI_WUSER_WIDTH = "1" *) (* C_CONNECTIVITY_MODE = "1" *) (* C_DEBUG = "1" *) 
(* C_FAMILY = "zynq" *) (* C_M_AXI_ADDR_WIDTH = "64'b0000000000000000000000000001110000000000000000000000000000011100" *) (* C_M_AXI_BASE_ADDR = "128'b00000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" *) 
(* C_M_AXI_READ_CONNECTIVITY = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) (* C_M_AXI_READ_ISSUING = "64'b0000000000000000000000000000100000000000000000000000000000001000" *) (* C_M_AXI_SECURE = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) 
(* C_M_AXI_WRITE_CONNECTIVITY = "64'b0000000000000000000000000000001100000000000000000000000000000011" *) (* C_M_AXI_WRITE_ISSUING = "64'b0000000000000000000000000000100000000000000000000000000000001000" *) (* C_NUM_ADDR_RANGES = "1" *) 
(* C_NUM_MASTER_SLOTS = "2" *) (* C_NUM_SLAVE_SLOTS = "2" *) (* C_R_REGISTER = "0" *) 
(* C_S_AXI_ARB_PRIORITY = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) (* C_S_AXI_BASE_ID = "64'b0000000000000000000000000000000100000000000000000000000000000000" *) (* C_S_AXI_READ_ACCEPTANCE = "64'b0000000000000000000000000000001000000000000000000000000000000010" *) 
(* C_S_AXI_SINGLE_THREAD = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) (* C_S_AXI_THREAD_ID_WIDTH = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) (* C_S_AXI_WRITE_ACCEPTANCE = "64'b0000000000000000000000000001000000000000000000000000000000010000" *) 
(* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_crossbar_v2_1_28_axi_crossbar" *) (* P_ADDR_DECODE = "1" *) 
(* P_AXI3 = "1" *) (* P_AXI4 = "0" *) (* P_AXILITE = "2" *) 
(* P_AXILITE_SIZE = "3'b010" *) (* P_FAMILY = "zynq" *) (* P_INCR = "2'b01" *) 
(* P_LEN = "8" *) (* P_LOCK = "1" *) (* P_M_AXI_ERR_MODE = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) 
(* P_M_AXI_SUPPORTS_READ = "2'b00" *) (* P_M_AXI_SUPPORTS_WRITE = "2'b11" *) (* P_ONES = "65'b11111111111111111111111111111111111111111111111111111111111111111" *) 
(* P_RANGE_CHECK = "1" *) (* P_S_AXI_BASE_ID = "128'b00000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000" *) (* P_S_AXI_HIGH_ID = "128'b00000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000" *) 
(* P_S_AXI_SUPPORTS_READ = "2'b00" *) (* P_S_AXI_SUPPORTS_WRITE = "2'b11" *) 
module audio_AXI_DMA_xbar_1_axi_crossbar_v2_1_28_axi_crossbar
   (aclk,
    aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [1:0]s_axi_awid;
  input [63:0]s_axi_awaddr;
  input [15:0]s_axi_awlen;
  input [5:0]s_axi_awsize;
  input [3:0]s_axi_awburst;
  input [1:0]s_axi_awlock;
  input [7:0]s_axi_awcache;
  input [5:0]s_axi_awprot;
  input [7:0]s_axi_awqos;
  input [1:0]s_axi_awuser;
  input [1:0]s_axi_awvalid;
  output [1:0]s_axi_awready;
  input [1:0]s_axi_wid;
  input [127:0]s_axi_wdata;
  input [15:0]s_axi_wstrb;
  input [1:0]s_axi_wlast;
  input [1:0]s_axi_wuser;
  input [1:0]s_axi_wvalid;
  output [1:0]s_axi_wready;
  output [1:0]s_axi_bid;
  output [3:0]s_axi_bresp;
  output [1:0]s_axi_buser;
  output [1:0]s_axi_bvalid;
  input [1:0]s_axi_bready;
  input [1:0]s_axi_arid;
  input [63:0]s_axi_araddr;
  input [15:0]s_axi_arlen;
  input [5:0]s_axi_arsize;
  input [3:0]s_axi_arburst;
  input [1:0]s_axi_arlock;
  input [7:0]s_axi_arcache;
  input [5:0]s_axi_arprot;
  input [7:0]s_axi_arqos;
  input [1:0]s_axi_aruser;
  input [1:0]s_axi_arvalid;
  output [1:0]s_axi_arready;
  output [1:0]s_axi_rid;
  output [127:0]s_axi_rdata;
  output [3:0]s_axi_rresp;
  output [1:0]s_axi_rlast;
  output [1:0]s_axi_ruser;
  output [1:0]s_axi_rvalid;
  input [1:0]s_axi_rready;
  output [1:0]m_axi_awid;
  output [63:0]m_axi_awaddr;
  output [15:0]m_axi_awlen;
  output [5:0]m_axi_awsize;
  output [3:0]m_axi_awburst;
  output [1:0]m_axi_awlock;
  output [7:0]m_axi_awcache;
  output [5:0]m_axi_awprot;
  output [7:0]m_axi_awregion;
  output [7:0]m_axi_awqos;
  output [1:0]m_axi_awuser;
  output [1:0]m_axi_awvalid;
  input [1:0]m_axi_awready;
  output [1:0]m_axi_wid;
  output [127:0]m_axi_wdata;
  output [15:0]m_axi_wstrb;
  output [1:0]m_axi_wlast;
  output [1:0]m_axi_wuser;
  output [1:0]m_axi_wvalid;
  input [1:0]m_axi_wready;
  input [1:0]m_axi_bid;
  input [3:0]m_axi_bresp;
  input [1:0]m_axi_buser;
  input [1:0]m_axi_bvalid;
  output [1:0]m_axi_bready;
  output [1:0]m_axi_arid;
  output [63:0]m_axi_araddr;
  output [15:0]m_axi_arlen;
  output [5:0]m_axi_arsize;
  output [3:0]m_axi_arburst;
  output [1:0]m_axi_arlock;
  output [7:0]m_axi_arcache;
  output [5:0]m_axi_arprot;
  output [7:0]m_axi_arregion;
  output [7:0]m_axi_arqos;
  output [1:0]m_axi_aruser;
  output [1:0]m_axi_arvalid;
  input [1:0]m_axi_arready;
  input [1:0]m_axi_rid;
  input [127:0]m_axi_rdata;
  input [3:0]m_axi_rresp;
  input [1:0]m_axi_rlast;
  input [1:0]m_axi_ruser;
  input [1:0]m_axi_rvalid;
  output [1:0]m_axi_rready;

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire [63:32]\^m_axi_awaddr ;
  wire [3:2]\^m_axi_awburst ;
  wire [7:4]\^m_axi_awcache ;
  wire [0:0]\^m_axi_awid ;
  wire [15:8]\^m_axi_awlen ;
  wire [1:1]\^m_axi_awlock ;
  wire [5:3]\^m_axi_awprot ;
  wire [7:4]\^m_axi_awqos ;
  wire [1:0]m_axi_awready;
  wire [5:3]\^m_axi_awsize ;
  wire [1:0]m_axi_awvalid;
  wire [1:0]m_axi_bid;
  wire [1:0]m_axi_bready;
  wire [3:0]m_axi_bresp;
  wire [1:0]m_axi_bvalid;
  wire [127:0]m_axi_wdata;
  wire [1:0]m_axi_wlast;
  wire [1:0]m_axi_wready;
  wire [15:0]m_axi_wstrb;
  wire [1:0]m_axi_wvalid;
  wire [63:0]s_axi_awaddr;
  wire [3:0]s_axi_awburst;
  wire [7:0]s_axi_awcache;
  wire [15:0]s_axi_awlen;
  wire [1:0]s_axi_awlock;
  wire [5:0]s_axi_awprot;
  wire [7:0]s_axi_awqos;
  wire [1:0]s_axi_awready;
  wire [5:0]s_axi_awsize;
  wire [1:0]s_axi_awvalid;
  wire [1:0]s_axi_bready;
  wire [3:0]s_axi_bresp;
  wire [1:0]s_axi_bvalid;
  wire [127:0]s_axi_wdata;
  wire [1:0]s_axi_wlast;
  wire [1:0]s_axi_wready;
  wire [15:0]s_axi_wstrb;
  wire [1:0]s_axi_wvalid;

  assign m_axi_araddr[63] = \<const0> ;
  assign m_axi_araddr[62] = \<const0> ;
  assign m_axi_araddr[61] = \<const0> ;
  assign m_axi_araddr[60] = \<const0> ;
  assign m_axi_araddr[59] = \<const0> ;
  assign m_axi_araddr[58] = \<const0> ;
  assign m_axi_araddr[57] = \<const0> ;
  assign m_axi_araddr[56] = \<const0> ;
  assign m_axi_araddr[55] = \<const0> ;
  assign m_axi_araddr[54] = \<const0> ;
  assign m_axi_araddr[53] = \<const0> ;
  assign m_axi_araddr[52] = \<const0> ;
  assign m_axi_araddr[51] = \<const0> ;
  assign m_axi_araddr[50] = \<const0> ;
  assign m_axi_araddr[49] = \<const0> ;
  assign m_axi_araddr[48] = \<const0> ;
  assign m_axi_araddr[47] = \<const0> ;
  assign m_axi_araddr[46] = \<const0> ;
  assign m_axi_araddr[45] = \<const0> ;
  assign m_axi_araddr[44] = \<const0> ;
  assign m_axi_araddr[43] = \<const0> ;
  assign m_axi_araddr[42] = \<const0> ;
  assign m_axi_araddr[41] = \<const0> ;
  assign m_axi_araddr[40] = \<const0> ;
  assign m_axi_araddr[39] = \<const0> ;
  assign m_axi_araddr[38] = \<const0> ;
  assign m_axi_araddr[37] = \<const0> ;
  assign m_axi_araddr[36] = \<const0> ;
  assign m_axi_araddr[35] = \<const0> ;
  assign m_axi_araddr[34] = \<const0> ;
  assign m_axi_araddr[33] = \<const0> ;
  assign m_axi_araddr[32] = \<const0> ;
  assign m_axi_araddr[31] = \<const0> ;
  assign m_axi_araddr[30] = \<const0> ;
  assign m_axi_araddr[29] = \<const0> ;
  assign m_axi_araddr[28] = \<const0> ;
  assign m_axi_araddr[27] = \<const0> ;
  assign m_axi_araddr[26] = \<const0> ;
  assign m_axi_araddr[25] = \<const0> ;
  assign m_axi_araddr[24] = \<const0> ;
  assign m_axi_araddr[23] = \<const0> ;
  assign m_axi_araddr[22] = \<const0> ;
  assign m_axi_araddr[21] = \<const0> ;
  assign m_axi_araddr[20] = \<const0> ;
  assign m_axi_araddr[19] = \<const0> ;
  assign m_axi_araddr[18] = \<const0> ;
  assign m_axi_araddr[17] = \<const0> ;
  assign m_axi_araddr[16] = \<const0> ;
  assign m_axi_araddr[15] = \<const0> ;
  assign m_axi_araddr[14] = \<const0> ;
  assign m_axi_araddr[13] = \<const0> ;
  assign m_axi_araddr[12] = \<const0> ;
  assign m_axi_araddr[11] = \<const0> ;
  assign m_axi_araddr[10] = \<const0> ;
  assign m_axi_araddr[9] = \<const0> ;
  assign m_axi_araddr[8] = \<const0> ;
  assign m_axi_araddr[7] = \<const0> ;
  assign m_axi_araddr[6] = \<const0> ;
  assign m_axi_araddr[5] = \<const0> ;
  assign m_axi_araddr[4] = \<const0> ;
  assign m_axi_araddr[3] = \<const0> ;
  assign m_axi_araddr[2] = \<const0> ;
  assign m_axi_araddr[1] = \<const0> ;
  assign m_axi_araddr[0] = \<const0> ;
  assign m_axi_arburst[3] = \<const0> ;
  assign m_axi_arburst[2] = \<const0> ;
  assign m_axi_arburst[1] = \<const0> ;
  assign m_axi_arburst[0] = \<const0> ;
  assign m_axi_arcache[7] = \<const0> ;
  assign m_axi_arcache[6] = \<const0> ;
  assign m_axi_arcache[5] = \<const0> ;
  assign m_axi_arcache[4] = \<const0> ;
  assign m_axi_arcache[3] = \<const0> ;
  assign m_axi_arcache[2] = \<const0> ;
  assign m_axi_arcache[1] = \<const0> ;
  assign m_axi_arcache[0] = \<const0> ;
  assign m_axi_arid[1] = \<const0> ;
  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlen[15] = \<const0> ;
  assign m_axi_arlen[14] = \<const0> ;
  assign m_axi_arlen[13] = \<const0> ;
  assign m_axi_arlen[12] = \<const0> ;
  assign m_axi_arlen[11] = \<const0> ;
  assign m_axi_arlen[10] = \<const0> ;
  assign m_axi_arlen[9] = \<const0> ;
  assign m_axi_arlen[8] = \<const0> ;
  assign m_axi_arlen[7] = \<const0> ;
  assign m_axi_arlen[6] = \<const0> ;
  assign m_axi_arlen[5] = \<const0> ;
  assign m_axi_arlen[4] = \<const0> ;
  assign m_axi_arlen[3] = \<const0> ;
  assign m_axi_arlen[2] = \<const0> ;
  assign m_axi_arlen[1] = \<const0> ;
  assign m_axi_arlen[0] = \<const0> ;
  assign m_axi_arlock[1] = \<const0> ;
  assign m_axi_arlock[0] = \<const0> ;
  assign m_axi_arprot[5] = \<const0> ;
  assign m_axi_arprot[4] = \<const0> ;
  assign m_axi_arprot[3] = \<const0> ;
  assign m_axi_arprot[2] = \<const0> ;
  assign m_axi_arprot[1] = \<const0> ;
  assign m_axi_arprot[0] = \<const0> ;
  assign m_axi_arqos[7] = \<const0> ;
  assign m_axi_arqos[6] = \<const0> ;
  assign m_axi_arqos[5] = \<const0> ;
  assign m_axi_arqos[4] = \<const0> ;
  assign m_axi_arqos[3] = \<const0> ;
  assign m_axi_arqos[2] = \<const0> ;
  assign m_axi_arqos[1] = \<const0> ;
  assign m_axi_arqos[0] = \<const0> ;
  assign m_axi_arregion[7] = \<const0> ;
  assign m_axi_arregion[6] = \<const0> ;
  assign m_axi_arregion[5] = \<const0> ;
  assign m_axi_arregion[4] = \<const0> ;
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[5] = \<const0> ;
  assign m_axi_arsize[4] = \<const0> ;
  assign m_axi_arsize[3] = \<const0> ;
  assign m_axi_arsize[2] = \<const0> ;
  assign m_axi_arsize[1] = \<const0> ;
  assign m_axi_arsize[0] = \<const0> ;
  assign m_axi_aruser[1] = \<const0> ;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_arvalid[1] = \<const0> ;
  assign m_axi_arvalid[0] = \<const0> ;
  assign m_axi_awaddr[63:32] = \^m_axi_awaddr [63:32];
  assign m_axi_awaddr[31:0] = \^m_axi_awaddr [63:32];
  assign m_axi_awburst[3:2] = \^m_axi_awburst [3:2];
  assign m_axi_awburst[1:0] = \^m_axi_awburst [3:2];
  assign m_axi_awcache[7:4] = \^m_axi_awcache [7:4];
  assign m_axi_awcache[3:0] = \^m_axi_awcache [7:4];
  assign m_axi_awid[1] = \^m_axi_awid [0];
  assign m_axi_awid[0] = \^m_axi_awid [0];
  assign m_axi_awlen[15:8] = \^m_axi_awlen [15:8];
  assign m_axi_awlen[7:0] = \^m_axi_awlen [15:8];
  assign m_axi_awlock[1] = \^m_axi_awlock [1];
  assign m_axi_awlock[0] = \^m_axi_awlock [1];
  assign m_axi_awprot[5:3] = \^m_axi_awprot [5:3];
  assign m_axi_awprot[2:0] = \^m_axi_awprot [5:3];
  assign m_axi_awqos[7:4] = \^m_axi_awqos [7:4];
  assign m_axi_awqos[3:0] = \^m_axi_awqos [7:4];
  assign m_axi_awregion[7] = \<const0> ;
  assign m_axi_awregion[6] = \<const0> ;
  assign m_axi_awregion[5] = \<const0> ;
  assign m_axi_awregion[4] = \<const0> ;
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_awsize[5:3] = \^m_axi_awsize [5:3];
  assign m_axi_awsize[2:0] = \^m_axi_awsize [5:3];
  assign m_axi_awuser[1] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_rready[1] = \<const0> ;
  assign m_axi_rready[0] = \<const0> ;
  assign m_axi_wid[1] = \<const0> ;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wuser[1] = \<const0> ;
  assign m_axi_wuser[0] = \<const0> ;
  assign s_axi_arready[1] = \<const0> ;
  assign s_axi_arready[0] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_buser[1] = \<const0> ;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_rdata[127] = \<const0> ;
  assign s_axi_rdata[126] = \<const0> ;
  assign s_axi_rdata[125] = \<const0> ;
  assign s_axi_rdata[124] = \<const0> ;
  assign s_axi_rdata[123] = \<const0> ;
  assign s_axi_rdata[122] = \<const0> ;
  assign s_axi_rdata[121] = \<const0> ;
  assign s_axi_rdata[120] = \<const0> ;
  assign s_axi_rdata[119] = \<const0> ;
  assign s_axi_rdata[118] = \<const0> ;
  assign s_axi_rdata[117] = \<const0> ;
  assign s_axi_rdata[116] = \<const0> ;
  assign s_axi_rdata[115] = \<const0> ;
  assign s_axi_rdata[114] = \<const0> ;
  assign s_axi_rdata[113] = \<const0> ;
  assign s_axi_rdata[112] = \<const0> ;
  assign s_axi_rdata[111] = \<const0> ;
  assign s_axi_rdata[110] = \<const0> ;
  assign s_axi_rdata[109] = \<const0> ;
  assign s_axi_rdata[108] = \<const0> ;
  assign s_axi_rdata[107] = \<const0> ;
  assign s_axi_rdata[106] = \<const0> ;
  assign s_axi_rdata[105] = \<const0> ;
  assign s_axi_rdata[104] = \<const0> ;
  assign s_axi_rdata[103] = \<const0> ;
  assign s_axi_rdata[102] = \<const0> ;
  assign s_axi_rdata[101] = \<const0> ;
  assign s_axi_rdata[100] = \<const0> ;
  assign s_axi_rdata[99] = \<const0> ;
  assign s_axi_rdata[98] = \<const0> ;
  assign s_axi_rdata[97] = \<const0> ;
  assign s_axi_rdata[96] = \<const0> ;
  assign s_axi_rdata[95] = \<const0> ;
  assign s_axi_rdata[94] = \<const0> ;
  assign s_axi_rdata[93] = \<const0> ;
  assign s_axi_rdata[92] = \<const0> ;
  assign s_axi_rdata[91] = \<const0> ;
  assign s_axi_rdata[90] = \<const0> ;
  assign s_axi_rdata[89] = \<const0> ;
  assign s_axi_rdata[88] = \<const0> ;
  assign s_axi_rdata[87] = \<const0> ;
  assign s_axi_rdata[86] = \<const0> ;
  assign s_axi_rdata[85] = \<const0> ;
  assign s_axi_rdata[84] = \<const0> ;
  assign s_axi_rdata[83] = \<const0> ;
  assign s_axi_rdata[82] = \<const0> ;
  assign s_axi_rdata[81] = \<const0> ;
  assign s_axi_rdata[80] = \<const0> ;
  assign s_axi_rdata[79] = \<const0> ;
  assign s_axi_rdata[78] = \<const0> ;
  assign s_axi_rdata[77] = \<const0> ;
  assign s_axi_rdata[76] = \<const0> ;
  assign s_axi_rdata[75] = \<const0> ;
  assign s_axi_rdata[74] = \<const0> ;
  assign s_axi_rdata[73] = \<const0> ;
  assign s_axi_rdata[72] = \<const0> ;
  assign s_axi_rdata[71] = \<const0> ;
  assign s_axi_rdata[70] = \<const0> ;
  assign s_axi_rdata[69] = \<const0> ;
  assign s_axi_rdata[68] = \<const0> ;
  assign s_axi_rdata[67] = \<const0> ;
  assign s_axi_rdata[66] = \<const0> ;
  assign s_axi_rdata[65] = \<const0> ;
  assign s_axi_rdata[64] = \<const0> ;
  assign s_axi_rdata[63] = \<const0> ;
  assign s_axi_rdata[62] = \<const0> ;
  assign s_axi_rdata[61] = \<const0> ;
  assign s_axi_rdata[60] = \<const0> ;
  assign s_axi_rdata[59] = \<const0> ;
  assign s_axi_rdata[58] = \<const0> ;
  assign s_axi_rdata[57] = \<const0> ;
  assign s_axi_rdata[56] = \<const0> ;
  assign s_axi_rdata[55] = \<const0> ;
  assign s_axi_rdata[54] = \<const0> ;
  assign s_axi_rdata[53] = \<const0> ;
  assign s_axi_rdata[52] = \<const0> ;
  assign s_axi_rdata[51] = \<const0> ;
  assign s_axi_rdata[50] = \<const0> ;
  assign s_axi_rdata[49] = \<const0> ;
  assign s_axi_rdata[48] = \<const0> ;
  assign s_axi_rdata[47] = \<const0> ;
  assign s_axi_rdata[46] = \<const0> ;
  assign s_axi_rdata[45] = \<const0> ;
  assign s_axi_rdata[44] = \<const0> ;
  assign s_axi_rdata[43] = \<const0> ;
  assign s_axi_rdata[42] = \<const0> ;
  assign s_axi_rdata[41] = \<const0> ;
  assign s_axi_rdata[40] = \<const0> ;
  assign s_axi_rdata[39] = \<const0> ;
  assign s_axi_rdata[38] = \<const0> ;
  assign s_axi_rdata[37] = \<const0> ;
  assign s_axi_rdata[36] = \<const0> ;
  assign s_axi_rdata[35] = \<const0> ;
  assign s_axi_rdata[34] = \<const0> ;
  assign s_axi_rdata[33] = \<const0> ;
  assign s_axi_rdata[32] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast[1] = \<const0> ;
  assign s_axi_rlast[0] = \<const0> ;
  assign s_axi_rresp[3] = \<const0> ;
  assign s_axi_rresp[2] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_ruser[1] = \<const0> ;
  assign s_axi_ruser[0] = \<const0> ;
  assign s_axi_rvalid[1] = \<const0> ;
  assign s_axi_rvalid[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  audio_AXI_DMA_xbar_1_axi_crossbar_v2_1_28_crossbar \gen_samd.crossbar_samd 
       (.Q({\^m_axi_awqos ,\^m_axi_awcache ,\^m_axi_awburst ,\^m_axi_awprot ,\^m_axi_awlock ,\^m_axi_awsize ,\^m_axi_awlen ,\^m_axi_awaddr ,\^m_axi_awid }),
        .aclk(aclk),
        .aresetn(aresetn),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bid(m_axi_bid),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wvalid(m_axi_wvalid),
        .\m_ready_d_reg[1] (s_axi_awready[0]),
        .\m_ready_d_reg[1]_0 (s_axi_awready[1]),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_28_crossbar" *) 
module audio_AXI_DMA_xbar_1_axi_crossbar_v2_1_28_crossbar
   (\m_ready_d_reg[1] ,
    \m_ready_d_reg[1]_0 ,
    Q,
    m_axi_bready,
    s_axi_wready,
    m_axi_wvalid,
    m_axi_wlast,
    s_axi_bvalid,
    s_axi_bresp,
    m_axi_awvalid,
    m_axi_wstrb,
    m_axi_wdata,
    aclk,
    s_axi_awvalid,
    m_axi_bid,
    m_axi_bresp,
    m_axi_bvalid,
    aresetn,
    s_axi_awaddr,
    s_axi_wlast,
    s_axi_wvalid,
    m_axi_wready,
    m_axi_awready,
    s_axi_bready,
    s_axi_awqos,
    s_axi_awcache,
    s_axi_awburst,
    s_axi_awprot,
    s_axi_awlock,
    s_axi_awsize,
    s_axi_awlen,
    s_axi_wstrb,
    s_axi_wdata);
  output \m_ready_d_reg[1] ;
  output \m_ready_d_reg[1]_0 ;
  output [57:0]Q;
  output [1:0]m_axi_bready;
  output [1:0]s_axi_wready;
  output [1:0]m_axi_wvalid;
  output [1:0]m_axi_wlast;
  output [1:0]s_axi_bvalid;
  output [3:0]s_axi_bresp;
  output [1:0]m_axi_awvalid;
  output [15:0]m_axi_wstrb;
  output [127:0]m_axi_wdata;
  input aclk;
  input [1:0]s_axi_awvalid;
  input [1:0]m_axi_bid;
  input [3:0]m_axi_bresp;
  input [1:0]m_axi_bvalid;
  input aresetn;
  input [63:0]s_axi_awaddr;
  input [1:0]s_axi_wlast;
  input [1:0]s_axi_wvalid;
  input [1:0]m_axi_wready;
  input [1:0]m_axi_awready;
  input [1:0]s_axi_bready;
  input [7:0]s_axi_awqos;
  input [7:0]s_axi_awcache;
  input [3:0]s_axi_awburst;
  input [5:0]s_axi_awprot;
  input [1:0]s_axi_awlock;
  input [5:0]s_axi_awsize;
  input [15:0]s_axi_awlen;
  input [15:0]s_axi_wstrb;
  input [127:0]s_axi_wdata;

  wire [57:0]Q;
  wire [2:0]aa_mi_awtarget_hot;
  wire aa_wm_awgrant_enc;
  wire aclk;
  wire addr_arbiter_aw_n_15;
  wire addr_arbiter_aw_n_20;
  wire addr_arbiter_aw_n_21;
  wire addr_arbiter_aw_n_22;
  wire addr_arbiter_aw_n_23;
  wire addr_arbiter_aw_n_24;
  wire addr_arbiter_aw_n_26;
  wire addr_arbiter_aw_n_27;
  wire addr_arbiter_aw_n_28;
  wire addr_arbiter_aw_n_3;
  wire addr_arbiter_aw_n_30;
  wire addr_arbiter_aw_n_4;
  wire addr_arbiter_aw_n_41;
  wire addr_arbiter_aw_n_9;
  wire aresetn;
  wire aresetn_d;
  wire [5:5]bready_carry;
  wire \gen_axi.write_cs01_out ;
  wire \gen_decerr_slave.decerr_slave_inst_n_4 ;
  wire \gen_master_slots[0].reg_slice_mi_n_1 ;
  wire \gen_master_slots[0].reg_slice_mi_n_3 ;
  wire \gen_master_slots[0].reg_slice_mi_n_4 ;
  wire \gen_master_slots[0].w_issuing_cnt[0]_i_1_n_0 ;
  wire \gen_master_slots[1].reg_slice_mi_n_0 ;
  wire \gen_master_slots[1].reg_slice_mi_n_1 ;
  wire \gen_master_slots[1].reg_slice_mi_n_3 ;
  wire \gen_master_slots[1].reg_slice_mi_n_4 ;
  wire \gen_master_slots[1].reg_slice_mi_n_6 ;
  wire \gen_master_slots[1].reg_slice_mi_n_7 ;
  wire \gen_master_slots[1].reg_slice_mi_n_8 ;
  wire \gen_master_slots[1].w_issuing_cnt[8]_i_1_n_0 ;
  wire \gen_master_slots[2].gen_mi_write.wdata_mux_w_n_2 ;
  wire \gen_master_slots[2].gen_mi_write.wdata_mux_w_n_4 ;
  wire \gen_master_slots[2].reg_slice_mi_n_1 ;
  wire \gen_master_slots[2].reg_slice_mi_n_6 ;
  wire \gen_master_slots[2].reg_slice_mi_n_7 ;
  wire [1:1]\gen_single_thread.active_target_enc ;
  wire [1:1]\gen_single_thread.active_target_enc_7 ;
  wire [1:0]\gen_single_thread.active_target_hot ;
  wire [1:0]\gen_single_thread.active_target_hot_6 ;
  wire \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_1 ;
  wire \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_2 ;
  wire \gen_slave_slots[0].gen_si_write.splitter_aw_si_n_3 ;
  wire \gen_slave_slots[0].gen_si_write.wdata_router_w_n_3 ;
  wire \gen_slave_slots[0].gen_si_write.wdata_router_w_n_4 ;
  wire \gen_slave_slots[0].gen_si_write.wdata_router_w_n_5 ;
  wire \gen_slave_slots[1].gen_si_write.si_transactor_aw_n_1 ;
  wire \gen_slave_slots[1].gen_si_write.si_transactor_aw_n_10 ;
  wire \gen_slave_slots[1].gen_si_write.si_transactor_aw_n_2 ;
  wire \gen_slave_slots[1].gen_si_write.si_transactor_aw_n_9 ;
  wire \gen_slave_slots[1].gen_si_write.splitter_aw_si_n_3 ;
  wire \gen_wmux.wmux_aw_fifo/p_0_in6_in ;
  wire \gen_wmux.wmux_aw_fifo/p_7_in ;
  wire \gen_wmux.wmux_aw_fifo/p_7_in_1 ;
  wire \gen_wmux.wmux_aw_fifo/push ;
  wire m_aready__1;
  wire m_avalid;
  wire m_avalid_3;
  wire m_avalid_5;
  wire [1:0]m_axi_awready;
  wire [1:0]m_axi_awvalid;
  wire [1:0]m_axi_bid;
  wire [1:0]m_axi_bready;
  wire [3:0]m_axi_bresp;
  wire [1:0]m_axi_bvalid;
  wire [127:0]m_axi_wdata;
  wire [1:0]m_axi_wlast;
  wire [1:0]m_axi_wready;
  wire [15:0]m_axi_wstrb;
  wire [1:0]m_axi_wvalid;
  wire [1:0]m_ready_d;
  wire [1:0]m_ready_d_10;
  wire [1:0]m_ready_d_8;
  wire \m_ready_d_reg[1] ;
  wire \m_ready_d_reg[1]_0 ;
  wire m_select_enc;
  wire m_select_enc_2;
  wire m_select_enc_4;
  wire match;
  wire match_0;
  wire mi_awmaxissuing120_in;
  wire mi_awmaxissuing129_in;
  wire mi_awmaxissuing1__0;
  wire mi_awready_2;
  wire mi_awready_mux__1;
  wire mi_awvalid_en;
  wire mi_bid_2;
  wire mi_bready_2;
  wire mi_bvalid_2;
  wire mi_wready_2;
  wire p_1_in;
  wire p_21_in;
  wire p_30_in;
  wire reset;
  wire [63:0]s_axi_awaddr;
  wire [3:0]s_axi_awburst;
  wire [7:0]s_axi_awcache;
  wire [15:0]s_axi_awlen;
  wire [1:0]s_axi_awlock;
  wire [5:0]s_axi_awprot;
  wire [7:0]s_axi_awqos;
  wire [5:0]s_axi_awsize;
  wire [1:0]s_axi_awvalid;
  wire [1:0]s_axi_bready;
  wire [3:0]s_axi_bresp;
  wire [1:0]s_axi_bvalid;
  wire [127:0]s_axi_wdata;
  wire [1:0]s_axi_wlast;
  wire [1:0]s_axi_wready;
  wire [15:0]s_axi_wstrb;
  wire [1:0]s_axi_wvalid;
  wire [0:0]s_ready_i0__1;
  wire [2:0]sa_wm_awvalid__2;
  wire [1:0]ss_aa_awready;
  wire ss_wr_awready_0;
  wire ss_wr_awready_1;
  wire ss_wr_awvalid_0;
  wire ss_wr_awvalid_1;
  wire [0:0]st_aa_awtarget_enc_0;
  wire [0:0]st_aa_awtarget_enc_2;
  wire [4:0]st_aa_awtarget_hot;
  wire st_mr_bid_0;
  wire st_mr_bid_1;
  wire st_mr_bid_2;
  wire [4:0]st_mr_bmesg;
  wire [2:0]st_mr_bvalid;
  wire [1:0]valid_qual_i;
  wire [16:0]w_issuing_cnt;
  wire wm_mr_wvalid_2;
  wire \wrouter_aw_fifo/areset_d1 ;
  wire \wrouter_aw_fifo/p_0_in8_in ;
  wire \wrouter_aw_fifo/p_0_in8_in_9 ;

  audio_AXI_DMA_xbar_1_axi_crossbar_v2_1_28_addr_arbiter addr_arbiter_aw
       (.D({addr_arbiter_aw_n_3,addr_arbiter_aw_n_4}),
        .\FSM_onehot_state_reg[1] (\gen_wmux.wmux_aw_fifo/p_7_in_1 ),
        .\FSM_onehot_state_reg[1]_0 (\gen_wmux.wmux_aw_fifo/p_7_in ),
        .\FSM_onehot_state_reg[3] (addr_arbiter_aw_n_20),
        .\FSM_onehot_state_reg[3]_0 (addr_arbiter_aw_n_21),
        .Q(aa_mi_awtarget_hot),
        .SS(reset),
        .aa_wm_awgrant_enc(aa_wm_awgrant_enc),
        .aclk(aclk),
        .aresetn_d(aresetn_d),
        .aresetn_d_reg(addr_arbiter_aw_n_30),
        .\gen_arbiter.m_mesg_i_reg[0]_0 (addr_arbiter_aw_n_41),
        .\gen_arbiter.m_mesg_i_reg[62]_0 (Q),
        .\gen_arbiter.m_valid_i_reg_inv_0 (addr_arbiter_aw_n_9),
        .\gen_arbiter.m_valid_i_reg_inv_1 (addr_arbiter_aw_n_15),
        .\gen_arbiter.qual_reg_reg[1]_0 ({\gen_slave_slots[1].gen_si_write.si_transactor_aw_n_2 ,\gen_slave_slots[0].gen_si_write.si_transactor_aw_n_2 }),
        .\gen_axi.s_axi_bid_i_reg[0] (\gen_decerr_slave.decerr_slave_inst_n_4 ),
        .\gen_axi.write_cs01_out (\gen_axi.write_cs01_out ),
        .\gen_master_slots[0].w_issuing_cnt_reg[1] ({addr_arbiter_aw_n_22,addr_arbiter_aw_n_23,addr_arbiter_aw_n_24}),
        .\gen_master_slots[1].w_issuing_cnt_reg[9] ({addr_arbiter_aw_n_26,addr_arbiter_aw_n_27,addr_arbiter_aw_n_28}),
        .m_aready__1(m_aready__1),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .m_ready_d(m_ready_d_10),
        .m_ready_d_1(m_ready_d_8[0]),
        .m_ready_d_2(m_ready_d[0]),
        .m_valid_i_reg({\gen_wmux.wmux_aw_fifo/p_0_in6_in ,\gen_master_slots[2].gen_mi_write.wdata_mux_w_n_4 }),
        .m_valid_i_reg_0(\gen_master_slots[2].gen_mi_write.wdata_mux_w_n_2 ),
        .match(match_0),
        .match_0(match),
        .mi_awmaxissuing120_in(mi_awmaxissuing120_in),
        .mi_awmaxissuing129_in(mi_awmaxissuing129_in),
        .mi_awmaxissuing1__0(mi_awmaxissuing1__0),
        .mi_awready_2(mi_awready_2),
        .mi_awready_mux__1(mi_awready_mux__1),
        .mi_awvalid_en(mi_awvalid_en),
        .mi_bid_2(mi_bid_2),
        .p_1_in(p_1_in),
        .p_21_in(p_21_in),
        .p_30_in(p_30_in),
        .push(\gen_wmux.wmux_aw_fifo/push ),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_ready_i0__1(s_ready_i0__1),
        .sa_wm_awvalid__2(sa_wm_awvalid__2),
        .ss_aa_awready(ss_aa_awready),
        .st_aa_awtarget_enc_0(st_aa_awtarget_enc_0),
        .st_aa_awtarget_enc_2(st_aa_awtarget_enc_2),
        .st_aa_awtarget_hot({st_aa_awtarget_hot[4:3],st_aa_awtarget_hot[1:0]}),
        .valid_qual_i(valid_qual_i),
        .w_issuing_cnt({w_issuing_cnt[16],w_issuing_cnt[11:8],w_issuing_cnt[3:0]}));
  FDRE #(
    .INIT(1'b0)) 
    aresetn_d_reg
       (.C(aclk),
        .CE(1'b1),
        .D(aresetn),
        .Q(aresetn_d),
        .R(1'b0));
  audio_AXI_DMA_xbar_1_axi_crossbar_v2_1_28_decerr_slave \gen_decerr_slave.decerr_slave_inst 
       (.\FSM_onehot_gen_axi.write_cs_reg[0]_0 (\gen_decerr_slave.decerr_slave_inst_n_4 ),
        .Q(aa_mi_awtarget_hot[2]),
        .SS(reset),
        .aclk(aclk),
        .\gen_axi.s_axi_bid_i_reg[0]_0 (addr_arbiter_aw_n_41),
        .\gen_axi.write_cs01_out (\gen_axi.write_cs01_out ),
        .m_aready__1(m_aready__1),
        .m_select_enc(m_select_enc_4),
        .mi_awready_2(mi_awready_2),
        .mi_awvalid_en(mi_awvalid_en),
        .mi_bid_2(mi_bid_2),
        .mi_bready_2(mi_bready_2),
        .mi_bvalid_2(mi_bvalid_2),
        .mi_wready_2(mi_wready_2),
        .s_axi_wlast(s_axi_wlast),
        .wm_mr_wvalid_2(wm_mr_wvalid_2));
  audio_AXI_DMA_xbar_1_axi_crossbar_v2_1_28_wdata_mux \gen_master_slots[0].gen_mi_write.wdata_mux_w 
       (.\FSM_onehot_state_reg[1] (addr_arbiter_aw_n_21),
        .\FSM_onehot_state_reg[3] (\gen_wmux.wmux_aw_fifo/p_7_in ),
        .Q(aa_mi_awtarget_hot[0]),
        .SS(reset),
        .aa_wm_awgrant_enc(aa_wm_awgrant_enc),
        .aclk(aclk),
        .areset_d1(\wrouter_aw_fifo/areset_d1 ),
        .m_avalid(m_avalid),
        .m_axi_wdata(m_axi_wdata[63:0]),
        .m_axi_wlast(m_axi_wlast[0]),
        .m_axi_wready(m_axi_wready[0]),
        .m_axi_wstrb(m_axi_wstrb[7:0]),
        .m_axi_wvalid(m_axi_wvalid[0]),
        .m_ready_d(m_ready_d_10[0]),
        .m_select_enc(m_select_enc),
        .p_1_in(p_1_in),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wstrb(s_axi_wstrb),
        .sa_wm_awvalid__2(sa_wm_awvalid__2[0]));
  audio_AXI_DMA_xbar_1_axi_register_slice_v2_1_27_axi_register_slice \gen_master_slots[0].reg_slice_mi 
       (.E(\gen_master_slots[0].reg_slice_mi_n_4 ),
        .Q(w_issuing_cnt[3:0]),
        .aclk(aclk),
        .\gen_master_slots[0].w_issuing_cnt_reg[0] (\gen_single_thread.active_target_hot [0]),
        .\gen_master_slots[0].w_issuing_cnt_reg[0]_0 (\gen_single_thread.active_target_hot_6 [0]),
        .\gen_master_slots[0].w_issuing_cnt_reg[3] (\gen_master_slots[0].reg_slice_mi_n_1 ),
        .\gen_master_slots[0].w_issuing_cnt_reg[3]_0 (\gen_master_slots[0].reg_slice_mi_n_3 ),
        .m_axi_bid(m_axi_bid[0]),
        .m_axi_bready(m_axi_bready[0]),
        .m_axi_bresp(m_axi_bresp[1:0]),
        .m_axi_bvalid(m_axi_bvalid[0]),
        .m_valid_i_reg(\gen_slave_slots[1].gen_si_write.si_transactor_aw_n_10 ),
        .mi_awmaxissuing129_in(mi_awmaxissuing129_in),
        .p_30_in(p_30_in),
        .s_axi_bready(s_axi_bready),
        .s_ready_i_reg(\gen_master_slots[2].reg_slice_mi_n_1 ),
        .s_ready_i_reg_0(\gen_master_slots[1].reg_slice_mi_n_0 ),
        .st_aa_awtarget_hot({st_aa_awtarget_hot[3],st_aa_awtarget_hot[0]}),
        .st_mr_bid_0(st_mr_bid_0),
        .st_mr_bmesg(st_mr_bmesg[1:0]),
        .st_mr_bvalid(st_mr_bvalid[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_master_slots[0].w_issuing_cnt[0]_i_1 
       (.I0(w_issuing_cnt[0]),
        .O(\gen_master_slots[0].w_issuing_cnt[0]_i_1_n_0 ));
  FDRE \gen_master_slots[0].w_issuing_cnt_reg[0] 
       (.C(aclk),
        .CE(\gen_master_slots[0].reg_slice_mi_n_4 ),
        .D(\gen_master_slots[0].w_issuing_cnt[0]_i_1_n_0 ),
        .Q(w_issuing_cnt[0]),
        .R(reset));
  FDRE \gen_master_slots[0].w_issuing_cnt_reg[1] 
       (.C(aclk),
        .CE(\gen_master_slots[0].reg_slice_mi_n_4 ),
        .D(addr_arbiter_aw_n_24),
        .Q(w_issuing_cnt[1]),
        .R(reset));
  FDRE \gen_master_slots[0].w_issuing_cnt_reg[2] 
       (.C(aclk),
        .CE(\gen_master_slots[0].reg_slice_mi_n_4 ),
        .D(addr_arbiter_aw_n_23),
        .Q(w_issuing_cnt[2]),
        .R(reset));
  FDRE \gen_master_slots[0].w_issuing_cnt_reg[3] 
       (.C(aclk),
        .CE(\gen_master_slots[0].reg_slice_mi_n_4 ),
        .D(addr_arbiter_aw_n_22),
        .Q(w_issuing_cnt[3]),
        .R(reset));
  audio_AXI_DMA_xbar_1_axi_crossbar_v2_1_28_wdata_mux_0 \gen_master_slots[1].gen_mi_write.wdata_mux_w 
       (.\FSM_onehot_state_reg[1] (addr_arbiter_aw_n_20),
        .\FSM_onehot_state_reg[3] (\gen_wmux.wmux_aw_fifo/p_7_in_1 ),
        .Q(aa_mi_awtarget_hot[1]),
        .SS(reset),
        .aa_wm_awgrant_enc(aa_wm_awgrant_enc),
        .aclk(aclk),
        .areset_d1(\wrouter_aw_fifo/areset_d1 ),
        .m_avalid(m_avalid_3),
        .m_axi_wdata(m_axi_wdata[127:64]),
        .m_axi_wlast(m_axi_wlast[1]),
        .m_axi_wready(m_axi_wready[1]),
        .m_axi_wstrb(m_axi_wstrb[15:8]),
        .m_axi_wvalid(m_axi_wvalid[1]),
        .m_ready_d(m_ready_d_10[0]),
        .m_select_enc(m_select_enc_2),
        .p_1_in(p_1_in),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wstrb(s_axi_wstrb),
        .sa_wm_awvalid__2(sa_wm_awvalid__2[1]));
  audio_AXI_DMA_xbar_1_axi_register_slice_v2_1_27_axi_register_slice_1 \gen_master_slots[1].reg_slice_mi 
       (.E(\gen_master_slots[1].reg_slice_mi_n_4 ),
        .Q(w_issuing_cnt[11:8]),
        .aclk(aclk),
        .aresetn(aresetn),
        .\aresetn_d_reg[0] (\gen_master_slots[1].reg_slice_mi_n_0 ),
        .\aresetn_d_reg[0]_0 (\gen_master_slots[1].reg_slice_mi_n_8 ),
        .\gen_master_slots[1].w_issuing_cnt_reg[11] (\gen_master_slots[1].reg_slice_mi_n_1 ),
        .\gen_master_slots[1].w_issuing_cnt_reg[11]_0 (\gen_master_slots[1].reg_slice_mi_n_3 ),
        .m_axi_bid(m_axi_bid[1]),
        .m_axi_bready(m_axi_bready[1]),
        .m_axi_bresp(m_axi_bresp[3:2]),
        .m_axi_bvalid(m_axi_bvalid[1]),
        .\m_payload_i_reg[2] (\gen_master_slots[1].reg_slice_mi_n_6 ),
        .\m_payload_i_reg[2]_0 (\gen_master_slots[1].reg_slice_mi_n_7 ),
        .m_valid_i_reg(\gen_slave_slots[1].gen_si_write.si_transactor_aw_n_9 ),
        .mi_awmaxissuing120_in(mi_awmaxissuing120_in),
        .p_21_in(p_21_in),
        .s_axi_bready(s_axi_bready),
        .\s_axi_bvalid[0] (\gen_single_thread.active_target_hot ),
        .\s_axi_bvalid[1] (st_mr_bvalid[0]),
        .\s_axi_bvalid[1]_0 (\gen_single_thread.active_target_hot_6 ),
        .s_ready_i_reg(\gen_master_slots[2].reg_slice_mi_n_1 ),
        .st_aa_awtarget_hot({st_aa_awtarget_hot[4],st_aa_awtarget_hot[1]}),
        .st_mr_bid_0(st_mr_bid_0),
        .st_mr_bid_1(st_mr_bid_1),
        .st_mr_bmesg(st_mr_bmesg[4:3]));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_master_slots[1].w_issuing_cnt[8]_i_1 
       (.I0(w_issuing_cnt[8]),
        .O(\gen_master_slots[1].w_issuing_cnt[8]_i_1_n_0 ));
  FDRE \gen_master_slots[1].w_issuing_cnt_reg[10] 
       (.C(aclk),
        .CE(\gen_master_slots[1].reg_slice_mi_n_4 ),
        .D(addr_arbiter_aw_n_27),
        .Q(w_issuing_cnt[10]),
        .R(reset));
  FDRE \gen_master_slots[1].w_issuing_cnt_reg[11] 
       (.C(aclk),
        .CE(\gen_master_slots[1].reg_slice_mi_n_4 ),
        .D(addr_arbiter_aw_n_26),
        .Q(w_issuing_cnt[11]),
        .R(reset));
  FDRE \gen_master_slots[1].w_issuing_cnt_reg[8] 
       (.C(aclk),
        .CE(\gen_master_slots[1].reg_slice_mi_n_4 ),
        .D(\gen_master_slots[1].w_issuing_cnt[8]_i_1_n_0 ),
        .Q(w_issuing_cnt[8]),
        .R(reset));
  FDRE \gen_master_slots[1].w_issuing_cnt_reg[9] 
       (.C(aclk),
        .CE(\gen_master_slots[1].reg_slice_mi_n_4 ),
        .D(addr_arbiter_aw_n_28),
        .Q(w_issuing_cnt[9]),
        .R(reset));
  audio_AXI_DMA_xbar_1_axi_crossbar_v2_1_28_wdata_mux__parameterized0 \gen_master_slots[2].gen_mi_write.wdata_mux_w 
       (.D(\gen_master_slots[2].gen_mi_write.wdata_mux_w_n_2 ),
        .\FSM_onehot_state_reg[3] ({addr_arbiter_aw_n_3,addr_arbiter_aw_n_4}),
        .Q({\gen_wmux.wmux_aw_fifo/p_0_in6_in ,\gen_master_slots[2].gen_mi_write.wdata_mux_w_n_4 }),
        .SS(reset),
        .aa_wm_awgrant_enc(aa_wm_awgrant_enc),
        .aclk(aclk),
        .areset_d1(\wrouter_aw_fifo/areset_d1 ),
        .m_aready__1(m_aready__1),
        .m_avalid(m_avalid_5),
        .m_ready_d(m_ready_d_10[0]),
        .m_select_enc(m_select_enc_4),
        .m_valid_i_reg(addr_arbiter_aw_n_15),
        .m_valid_i_reg_0(aa_mi_awtarget_hot[2]),
        .p_1_in(p_1_in),
        .push(\gen_wmux.wmux_aw_fifo/push ),
        .sa_wm_awvalid__2(sa_wm_awvalid__2[2]));
  audio_AXI_DMA_xbar_1_axi_register_slice_v2_1_27_axi_register_slice__parameterized0 \gen_master_slots[2].reg_slice_mi 
       (.aclk(aclk),
        .\aresetn_d_reg[1] (\gen_master_slots[2].reg_slice_mi_n_1 ),
        .\aresetn_d_reg[1]_0 (\gen_master_slots[1].reg_slice_mi_n_8 ),
        .bready_carry(bready_carry),
        .\gen_master_slots[2].w_issuing_cnt_reg[16] (\gen_master_slots[2].reg_slice_mi_n_6 ),
        .\gen_master_slots[2].w_issuing_cnt_reg[16]_0 (\gen_master_slots[2].reg_slice_mi_n_7 ),
        .\gen_single_thread.active_target_enc (\gen_single_thread.active_target_enc ),
        .\gen_single_thread.active_target_enc_0 (\gen_single_thread.active_target_enc_7 ),
        .mi_awmaxissuing1__0(mi_awmaxissuing1__0),
        .mi_bid_2(mi_bid_2),
        .mi_bready_2(mi_bready_2),
        .mi_bvalid_2(mi_bvalid_2),
        .s_axi_awaddr({s_axi_awaddr[63:61],s_axi_awaddr[31:29]}),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_bvalid_0_sp_1(\gen_master_slots[1].reg_slice_mi_n_6 ),
        .s_axi_bvalid_1_sp_1(\gen_master_slots[1].reg_slice_mi_n_7 ),
        .s_ready_i_reg(\gen_master_slots[1].reg_slice_mi_n_0 ),
        .st_mr_bid_2(st_mr_bid_2),
        .st_mr_bvalid(st_mr_bvalid[2]),
        .w_issuing_cnt(w_issuing_cnt[16]));
  FDRE \gen_master_slots[2].w_issuing_cnt_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(addr_arbiter_aw_n_9),
        .Q(w_issuing_cnt[16]),
        .R(reset));
  audio_AXI_DMA_xbar_1_axi_crossbar_v2_1_28_si_transactor \gen_slave_slots[0].gen_si_write.si_transactor_aw 
       (.D(st_aa_awtarget_hot[1:0]),
        .E(\m_ready_d_reg[1] ),
        .Q(\gen_single_thread.active_target_hot ),
        .SS(reset),
        .aclk(aclk),
        .\gen_arbiter.qual_reg_reg[0] (\gen_master_slots[2].reg_slice_mi_n_7 ),
        .\gen_arbiter.qual_reg_reg[0]_0 (\gen_master_slots[1].reg_slice_mi_n_1 ),
        .\gen_arbiter.qual_reg_reg[0]_1 (\gen_master_slots[0].reg_slice_mi_n_1 ),
        .\gen_single_thread.accept_cnt_reg[4]_0 (\gen_master_slots[1].reg_slice_mi_n_6 ),
        .\gen_single_thread.active_target_enc_reg[1]_0 (\gen_single_thread.active_target_enc ),
        .m_ready_d(m_ready_d),
        .\m_ready_d_reg[0] (\gen_slave_slots[0].gen_si_write.si_transactor_aw_n_2 ),
        .match(match),
        .s_axi_awaddr(s_axi_awaddr[31:29]),
        .\s_axi_awaddr[29] (\gen_slave_slots[0].gen_si_write.si_transactor_aw_n_1 ),
        .s_axi_awvalid(s_axi_awvalid[0]),
        .s_axi_bready(s_axi_bready[0]),
        .s_axi_bresp(s_axi_bresp[1:0]),
        .ss_aa_awready(ss_aa_awready[0]),
        .ss_wr_awready_0(ss_wr_awready_0),
        .st_aa_awtarget_enc_0(st_aa_awtarget_enc_0),
        .st_mr_bid_2(st_mr_bid_2),
        .st_mr_bmesg({st_mr_bmesg[4:3],st_mr_bmesg[1:0]}),
        .st_mr_bvalid(st_mr_bvalid[2]),
        .valid_qual_i(valid_qual_i[0]));
  audio_AXI_DMA_xbar_1_axi_crossbar_v2_1_28_splitter \gen_slave_slots[0].gen_si_write.splitter_aw_si 
       (.Q(\wrouter_aw_fifo/p_0_in8_in ),
        .aclk(aclk),
        .aresetn_d(aresetn_d),
        .m_ready_d(m_ready_d),
        .\m_ready_d_reg[1]_0 (\m_ready_d_reg[1] ),
        .\m_ready_d_reg[1]_1 (\gen_slave_slots[0].gen_si_write.splitter_aw_si_n_3 ),
        .s_axi_awvalid(s_axi_awvalid[0]),
        .ss_aa_awready(ss_aa_awready[0]),
        .ss_wr_awready_0(ss_wr_awready_0),
        .ss_wr_awvalid_0(ss_wr_awvalid_0));
  audio_AXI_DMA_xbar_1_axi_crossbar_v2_1_28_wdata_router \gen_slave_slots[0].gen_si_write.wdata_router_w 
       (.Q(\wrouter_aw_fifo/p_0_in8_in ),
        .SS(reset),
        .aclk(aclk),
        .areset_d1(\wrouter_aw_fifo/areset_d1 ),
        .\gen_primitive_shifter.gen_srls[0].srl_inst (\gen_slave_slots[0].gen_si_write.si_transactor_aw_n_1 ),
        .m_avalid(m_avalid_3),
        .m_avalid_0(m_avalid_5),
        .m_avalid_3(m_avalid),
        .m_axi_wready(m_axi_wready),
        .m_ready_d(m_ready_d[1]),
        .m_select_enc(m_select_enc_2),
        .m_select_enc_1(m_select_enc_4),
        .m_select_enc_2(m_select_enc),
        .mi_wready_2(mi_wready_2),
        .s_axi_awaddr(s_axi_awaddr[31:28]),
        .s_axi_awvalid(s_axi_awvalid[0]),
        .s_axi_wlast(s_axi_wlast[0]),
        .s_axi_wready(s_axi_wready[0]),
        .s_axi_wvalid(s_axi_wvalid[0]),
        .ss_wr_awready_0(ss_wr_awready_0),
        .ss_wr_awvalid_0(ss_wr_awvalid_0),
        .st_aa_awtarget_enc_0(st_aa_awtarget_enc_0),
        .\storage_data1_reg[0] (\gen_slave_slots[0].gen_si_write.wdata_router_w_n_4 ),
        .\storage_data1_reg[0]_0 (\gen_slave_slots[0].gen_si_write.wdata_router_w_n_5 ),
        .\storage_data1_reg[0]_1 (\gen_slave_slots[0].gen_si_write.splitter_aw_si_n_3 ),
        .\storage_data1_reg[1] (\gen_slave_slots[0].gen_si_write.wdata_router_w_n_3 ));
  audio_AXI_DMA_xbar_1_axi_crossbar_v2_1_28_si_transactor__parameterized0 \gen_slave_slots[1].gen_si_write.si_transactor_aw 
       (.D(st_aa_awtarget_hot[4:3]),
        .E(\m_ready_d_reg[1]_0 ),
        .Q(\gen_single_thread.active_target_hot_6 ),
        .SS(reset),
        .aclk(aclk),
        .\gen_arbiter.qual_reg_reg[1] (\gen_master_slots[2].reg_slice_mi_n_6 ),
        .\gen_arbiter.qual_reg_reg[1]_0 (\gen_master_slots[1].reg_slice_mi_n_3 ),
        .\gen_arbiter.qual_reg_reg[1]_1 (\gen_master_slots[0].reg_slice_mi_n_3 ),
        .\gen_single_thread.accept_cnt_reg[4]_0 (\gen_master_slots[1].reg_slice_mi_n_7 ),
        .\gen_single_thread.active_target_enc_reg[1]_0 (\gen_single_thread.active_target_enc_7 ),
        .m_axi_bready(m_axi_bready),
        .m_axi_bvalid(m_axi_bvalid),
        .m_ready_d(m_ready_d_8),
        .\m_ready_d_reg[0] (\gen_slave_slots[1].gen_si_write.si_transactor_aw_n_2 ),
        .m_valid_i_reg(\gen_single_thread.active_target_hot ),
        .m_valid_i_reg_0(\gen_single_thread.active_target_enc ),
        .m_valid_i_reg_1(\gen_master_slots[2].reg_slice_mi_n_1 ),
        .match(match_0),
        .s_axi_awaddr(s_axi_awaddr[63:61]),
        .\s_axi_awaddr[61] (\gen_slave_slots[1].gen_si_write.si_transactor_aw_n_1 ),
        .s_axi_awvalid(s_axi_awvalid[1]),
        .s_axi_bready(s_axi_bready),
        .\s_axi_bready[1] (bready_carry),
        .s_axi_bresp(s_axi_bresp[3:2]),
        .s_ready_i_reg(\gen_slave_slots[1].gen_si_write.si_transactor_aw_n_9 ),
        .s_ready_i_reg_0(\gen_slave_slots[1].gen_si_write.si_transactor_aw_n_10 ),
        .ss_aa_awready(ss_aa_awready[1]),
        .ss_wr_awready_1(ss_wr_awready_1),
        .st_aa_awtarget_enc_2(st_aa_awtarget_enc_2),
        .st_mr_bid_0(st_mr_bid_0),
        .st_mr_bid_1(st_mr_bid_1),
        .st_mr_bid_2(st_mr_bid_2),
        .st_mr_bmesg({st_mr_bmesg[4:3],st_mr_bmesg[1:0]}),
        .st_mr_bvalid(st_mr_bvalid[2]),
        .valid_qual_i(valid_qual_i[1]));
  audio_AXI_DMA_xbar_1_axi_crossbar_v2_1_28_splitter_2 \gen_slave_slots[1].gen_si_write.splitter_aw_si 
       (.Q(\wrouter_aw_fifo/p_0_in8_in_9 ),
        .aclk(aclk),
        .aresetn_d(aresetn_d),
        .m_ready_d(m_ready_d_8),
        .\m_ready_d_reg[1]_0 (\m_ready_d_reg[1]_0 ),
        .\m_ready_d_reg[1]_1 (\gen_slave_slots[1].gen_si_write.splitter_aw_si_n_3 ),
        .s_axi_awvalid(s_axi_awvalid[1]),
        .ss_aa_awready(ss_aa_awready[1]),
        .ss_wr_awready_1(ss_wr_awready_1),
        .ss_wr_awvalid_1(ss_wr_awvalid_1));
  audio_AXI_DMA_xbar_1_axi_crossbar_v2_1_28_wdata_router_3 \gen_slave_slots[1].gen_si_write.wdata_router_w 
       (.Q(\wrouter_aw_fifo/p_0_in8_in_9 ),
        .SS(reset),
        .aclk(aclk),
        .areset_d1(\wrouter_aw_fifo/areset_d1 ),
        .\gen_primitive_shifter.gen_srls[0].srl_inst (\gen_slave_slots[1].gen_si_write.si_transactor_aw_n_1 ),
        .\gen_primitive_shifter.gen_srls[0].srl_inst_i_2__0 (\gen_slave_slots[0].gen_si_write.wdata_router_w_n_3 ),
        .m_avalid(m_avalid_5),
        .m_avalid_0(m_avalid_3),
        .m_avalid_2(m_avalid),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .m_axi_wvalid_0_sp_1(\gen_slave_slots[0].gen_si_write.wdata_router_w_n_5 ),
        .m_axi_wvalid_1_sp_1(\gen_slave_slots[0].gen_si_write.wdata_router_w_n_4 ),
        .m_ready_d(m_ready_d_8[1]),
        .m_select_enc(m_select_enc_4),
        .m_select_enc_1(m_select_enc_2),
        .m_select_enc_3(m_select_enc),
        .mi_wready_2(mi_wready_2),
        .s_axi_awaddr(s_axi_awaddr[63:60]),
        .s_axi_awvalid(s_axi_awvalid[1]),
        .s_axi_wlast(s_axi_wlast[1]),
        .s_axi_wready(s_axi_wready[1]),
        .s_axi_wvalid(s_axi_wvalid[1]),
        .ss_wr_awready_1(ss_wr_awready_1),
        .ss_wr_awvalid_1(ss_wr_awvalid_1),
        .st_aa_awtarget_enc_2(st_aa_awtarget_enc_2),
        .\storage_data1_reg[0] (\gen_slave_slots[1].gen_si_write.splitter_aw_si_n_3 ),
        .wm_mr_wvalid_2(wm_mr_wvalid_2));
  audio_AXI_DMA_xbar_1_axi_crossbar_v2_1_28_splitter_4 splitter_aw_mi
       (.Q(aa_mi_awtarget_hot),
        .aclk(aclk),
        .aresetn_d(aresetn_d),
        .m_ready_d(m_ready_d_10),
        .\m_ready_d_reg[0]_0 (addr_arbiter_aw_n_30),
        .mi_awready_mux__1(mi_awready_mux__1),
        .p_1_in(p_1_in),
        .s_ready_i0__1(s_ready_i0__1));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_28_decerr_slave" *) 
module audio_AXI_DMA_xbar_1_axi_crossbar_v2_1_28_decerr_slave
   (mi_awready_2,
    mi_wready_2,
    mi_bid_2,
    mi_bvalid_2,
    \FSM_onehot_gen_axi.write_cs_reg[0]_0 ,
    m_aready__1,
    SS,
    aclk,
    \gen_axi.s_axi_bid_i_reg[0]_0 ,
    \gen_axi.write_cs01_out ,
    mi_bready_2,
    s_axi_wlast,
    m_select_enc,
    wm_mr_wvalid_2,
    Q,
    mi_awvalid_en);
  output mi_awready_2;
  output mi_wready_2;
  output mi_bid_2;
  output mi_bvalid_2;
  output \FSM_onehot_gen_axi.write_cs_reg[0]_0 ;
  output m_aready__1;
  input [0:0]SS;
  input aclk;
  input \gen_axi.s_axi_bid_i_reg[0]_0 ;
  input \gen_axi.write_cs01_out ;
  input mi_bready_2;
  input [1:0]s_axi_wlast;
  input m_select_enc;
  input wm_mr_wvalid_2;
  input [0:0]Q;
  input mi_awvalid_en;

  wire \FSM_onehot_gen_axi.write_cs[0]_i_1_n_0 ;
  wire \FSM_onehot_gen_axi.write_cs[1]_i_1_n_0 ;
  wire \FSM_onehot_gen_axi.write_cs[2]_i_1_n_0 ;
  wire \FSM_onehot_gen_axi.write_cs[2]_i_3_n_0 ;
  wire \FSM_onehot_gen_axi.write_cs_reg[0]_0 ;
  wire \FSM_onehot_gen_axi.write_cs_reg_n_0_[1] ;
  wire \FSM_onehot_gen_axi.write_cs_reg_n_0_[2] ;
  wire [0:0]Q;
  wire [0:0]SS;
  wire aclk;
  wire \gen_axi.s_axi_awready_i_i_1_n_0 ;
  wire \gen_axi.s_axi_bid_i_reg[0]_0 ;
  wire \gen_axi.s_axi_bvalid_i_i_1_n_0 ;
  wire \gen_axi.s_axi_wready_i_i_1_n_0 ;
  wire \gen_axi.write_cs01_out ;
  wire m_aready__1;
  wire m_select_enc;
  wire mi_awready_2;
  wire mi_awvalid_en;
  wire mi_bid_2;
  wire mi_bready_2;
  wire mi_bvalid_2;
  wire mi_wready_2;
  wire [1:0]s_axi_wlast;
  wire wm_mr_wvalid_2;

  LUT5 #(
    .INIT(32'hFF00FC44)) 
    \FSM_onehot_gen_axi.write_cs[0]_i_1 
       (.I0(\gen_axi.write_cs01_out ),
        .I1(\FSM_onehot_gen_axi.write_cs_reg[0]_0 ),
        .I2(mi_bready_2),
        .I3(\FSM_onehot_gen_axi.write_cs_reg_n_0_[2] ),
        .I4(\FSM_onehot_gen_axi.write_cs[2]_i_3_n_0 ),
        .O(\FSM_onehot_gen_axi.write_cs[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCFFFCCCCC888)) 
    \FSM_onehot_gen_axi.write_cs[1]_i_1 
       (.I0(\gen_axi.write_cs01_out ),
        .I1(\FSM_onehot_gen_axi.write_cs_reg[0]_0 ),
        .I2(mi_bready_2),
        .I3(\FSM_onehot_gen_axi.write_cs_reg_n_0_[2] ),
        .I4(\FSM_onehot_gen_axi.write_cs[2]_i_3_n_0 ),
        .I5(\FSM_onehot_gen_axi.write_cs_reg_n_0_[1] ),
        .O(\FSM_onehot_gen_axi.write_cs[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF8800000700)) 
    \FSM_onehot_gen_axi.write_cs[2]_i_1 
       (.I0(\gen_axi.write_cs01_out ),
        .I1(\FSM_onehot_gen_axi.write_cs_reg[0]_0 ),
        .I2(mi_bready_2),
        .I3(\FSM_onehot_gen_axi.write_cs_reg_n_0_[2] ),
        .I4(\FSM_onehot_gen_axi.write_cs[2]_i_3_n_0 ),
        .I5(\FSM_onehot_gen_axi.write_cs_reg_n_0_[1] ),
        .O(\FSM_onehot_gen_axi.write_cs[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8A800000)) 
    \FSM_onehot_gen_axi.write_cs[2]_i_3 
       (.I0(\FSM_onehot_gen_axi.write_cs_reg_n_0_[1] ),
        .I1(s_axi_wlast[1]),
        .I2(m_select_enc),
        .I3(s_axi_wlast[0]),
        .I4(wm_mr_wvalid_2),
        .O(\FSM_onehot_gen_axi.write_cs[2]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "P_WRITE_IDLE:001,P_WRITE_DATA:010,P_WRITE_RESP:100," *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_gen_axi.write_cs_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_axi.write_cs[0]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_axi.write_cs_reg[0]_0 ),
        .S(SS));
  (* FSM_ENCODED_STATES = "P_WRITE_IDLE:001,P_WRITE_DATA:010,P_WRITE_RESP:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_axi.write_cs_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_axi.write_cs[1]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_axi.write_cs_reg_n_0_[1] ),
        .R(SS));
  (* FSM_ENCODED_STATES = "P_WRITE_IDLE:001,P_WRITE_DATA:010,P_WRITE_RESP:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_axi.write_cs_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_axi.write_cs[2]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_axi.write_cs_reg_n_0_[2] ),
        .R(SS));
  LUT6 #(
    .INIT(64'hFFBFBFBFFFB0B0B0)) 
    \gen_axi.s_axi_awready_i_i_1 
       (.I0(\FSM_onehot_gen_axi.write_cs_reg_n_0_[1] ),
        .I1(\gen_axi.write_cs01_out ),
        .I2(\FSM_onehot_gen_axi.write_cs_reg[0]_0 ),
        .I3(mi_bready_2),
        .I4(\FSM_onehot_gen_axi.write_cs_reg_n_0_[2] ),
        .I5(mi_awready_2),
        .O(\gen_axi.s_axi_awready_i_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_axi.s_axi_awready_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.s_axi_awready_i_i_1_n_0 ),
        .Q(mi_awready_2),
        .R(SS));
  FDRE \gen_axi.s_axi_bid_i_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.s_axi_bid_i_reg[0]_0 ),
        .Q(mi_bid_2),
        .R(SS));
  LUT4 #(
    .INIT(16'hBFAA)) 
    \gen_axi.s_axi_bvalid_i_i_1 
       (.I0(\FSM_onehot_gen_axi.write_cs[2]_i_3_n_0 ),
        .I1(mi_bready_2),
        .I2(\FSM_onehot_gen_axi.write_cs_reg_n_0_[2] ),
        .I3(mi_bvalid_2),
        .O(\gen_axi.s_axi_bvalid_i_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_axi.s_axi_bvalid_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.s_axi_bvalid_i_i_1_n_0 ),
        .Q(mi_bvalid_2),
        .R(SS));
  LUT6 #(
    .INIT(64'h8000FFFF80008000)) 
    \gen_axi.s_axi_wready_i_i_1 
       (.I0(mi_awready_2),
        .I1(Q),
        .I2(mi_awvalid_en),
        .I3(\FSM_onehot_gen_axi.write_cs_reg[0]_0 ),
        .I4(\FSM_onehot_gen_axi.write_cs[2]_i_3_n_0 ),
        .I5(mi_wready_2),
        .O(\gen_axi.s_axi_wready_i_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_axi.s_axi_wready_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.s_axi_wready_i_i_1_n_0 ),
        .Q(mi_wready_2),
        .R(SS));
  LUT5 #(
    .INIT(32'h8A800000)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_2__0 
       (.I0(mi_wready_2),
        .I1(s_axi_wlast[1]),
        .I2(m_select_enc),
        .I3(s_axi_wlast[0]),
        .I4(wm_mr_wvalid_2),
        .O(m_aready__1));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_28_si_transactor" *) 
module audio_AXI_DMA_xbar_1_axi_crossbar_v2_1_28_si_transactor
   (\gen_single_thread.active_target_enc_reg[1]_0 ,
    \s_axi_awaddr[29] ,
    \m_ready_d_reg[0] ,
    valid_qual_i,
    s_axi_bresp,
    Q,
    SS,
    E,
    st_aa_awtarget_enc_0,
    aclk,
    m_ready_d,
    s_axi_awvalid,
    \gen_arbiter.qual_reg_reg[0] ,
    \gen_arbiter.qual_reg_reg[0]_0 ,
    \gen_arbiter.qual_reg_reg[0]_1 ,
    match,
    ss_aa_awready,
    ss_wr_awready_0,
    s_axi_bready,
    st_mr_bvalid,
    st_mr_bid_2,
    \gen_single_thread.accept_cnt_reg[4]_0 ,
    st_mr_bmesg,
    s_axi_awaddr,
    D);
  output [0:0]\gen_single_thread.active_target_enc_reg[1]_0 ;
  output \s_axi_awaddr[29] ;
  output [0:0]\m_ready_d_reg[0] ;
  output [0:0]valid_qual_i;
  output [1:0]s_axi_bresp;
  output [1:0]Q;
  input [0:0]SS;
  input [0:0]E;
  input [0:0]st_aa_awtarget_enc_0;
  input aclk;
  input [1:0]m_ready_d;
  input [0:0]s_axi_awvalid;
  input \gen_arbiter.qual_reg_reg[0] ;
  input \gen_arbiter.qual_reg_reg[0]_0 ;
  input \gen_arbiter.qual_reg_reg[0]_1 ;
  input match;
  input [0:0]ss_aa_awready;
  input ss_wr_awready_0;
  input [0:0]s_axi_bready;
  input [0:0]st_mr_bvalid;
  input st_mr_bid_2;
  input \gen_single_thread.accept_cnt_reg[4]_0 ;
  input [3:0]st_mr_bmesg;
  input [2:0]s_axi_awaddr;
  input [1:0]D;

  wire [1:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]SS;
  wire aclk;
  wire \gen_arbiter.m_grant_enc_i[0]_i_12_n_0 ;
  wire \gen_arbiter.qual_reg_reg[0] ;
  wire \gen_arbiter.qual_reg_reg[0]_0 ;
  wire \gen_arbiter.qual_reg_reg[0]_1 ;
  wire \gen_single_thread.accept_cnt[0]_i_1_n_0 ;
  wire \gen_single_thread.accept_cnt[1]_i_1_n_0 ;
  wire \gen_single_thread.accept_cnt[2]_i_1_n_0 ;
  wire \gen_single_thread.accept_cnt[3]_i_1_n_0 ;
  wire \gen_single_thread.accept_cnt[4]_i_1_n_0 ;
  wire \gen_single_thread.accept_cnt[4]_i_2_n_0 ;
  wire \gen_single_thread.accept_cnt[4]_i_3_n_0 ;
  wire [4:0]\gen_single_thread.accept_cnt_reg ;
  wire \gen_single_thread.accept_cnt_reg[4]_0 ;
  wire [0:0]\gen_single_thread.active_target_enc ;
  wire [0:0]\gen_single_thread.active_target_enc_reg[1]_0 ;
  wire \gen_single_thread.s_avalid_en ;
  wire [1:0]m_ready_d;
  wire [0:0]\m_ready_d_reg[0] ;
  wire match;
  wire p_2_in;
  wire [2:0]s_axi_awaddr;
  wire \s_axi_awaddr[29] ;
  wire [0:0]s_axi_awvalid;
  wire [0:0]s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire [0:0]ss_aa_awready;
  wire ss_wr_awready_0;
  wire [0:0]st_aa_awtarget_enc_0;
  wire st_mr_bid_2;
  wire [3:0]st_mr_bmesg;
  wire [0:0]st_mr_bvalid;
  wire [0:0]valid_qual_i;

  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \gen_arbiter.m_grant_enc_i[0]_i_12 
       (.I0(\gen_single_thread.accept_cnt_reg [0]),
        .I1(\gen_single_thread.accept_cnt_reg [1]),
        .I2(\gen_single_thread.accept_cnt_reg [2]),
        .I3(\gen_single_thread.accept_cnt_reg [3]),
        .I4(\gen_single_thread.accept_cnt_reg [4]),
        .O(\gen_arbiter.m_grant_enc_i[0]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hAAEBEBAA)) 
    \gen_arbiter.m_grant_enc_i[0]_i_13 
       (.I0(\gen_single_thread.accept_cnt[4]_i_3_n_0 ),
        .I1(st_aa_awtarget_enc_0),
        .I2(\gen_single_thread.active_target_enc ),
        .I3(match),
        .I4(\gen_single_thread.active_target_enc_reg[1]_0 ),
        .O(\gen_single_thread.s_avalid_en ));
  LUT6 #(
    .INIT(64'hD0D0D0D0D0D0D000)) 
    \gen_arbiter.m_grant_enc_i[0]_i_4 
       (.I0(\gen_arbiter.m_grant_enc_i[0]_i_12_n_0 ),
        .I1(p_2_in),
        .I2(\gen_single_thread.s_avalid_en ),
        .I3(\gen_arbiter.qual_reg_reg[0] ),
        .I4(\gen_arbiter.qual_reg_reg[0]_0 ),
        .I5(\gen_arbiter.qual_reg_reg[0]_1 ),
        .O(valid_qual_i));
  LUT3 #(
    .INIT(8'hEF)) 
    \gen_arbiter.qual_reg[0]_i_1 
       (.I0(valid_qual_i),
        .I1(m_ready_d[0]),
        .I2(s_axi_awvalid),
        .O(\m_ready_d_reg[0] ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_single_thread.accept_cnt[0]_i_1 
       (.I0(\gen_single_thread.accept_cnt_reg [0]),
        .O(\gen_single_thread.accept_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h565656AAA9A9A955)) 
    \gen_single_thread.accept_cnt[1]_i_1 
       (.I0(\gen_single_thread.accept_cnt_reg [0]),
        .I1(ss_aa_awready),
        .I2(m_ready_d[0]),
        .I3(ss_wr_awready_0),
        .I4(m_ready_d[1]),
        .I5(\gen_single_thread.accept_cnt_reg [1]),
        .O(\gen_single_thread.accept_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT4 #(
    .INIT(16'h78E1)) 
    \gen_single_thread.accept_cnt[2]_i_1 
       (.I0(E),
        .I1(\gen_single_thread.accept_cnt_reg [0]),
        .I2(\gen_single_thread.accept_cnt_reg [2]),
        .I3(\gen_single_thread.accept_cnt_reg [1]),
        .O(\gen_single_thread.accept_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT5 #(
    .INIT(32'h7F80FE01)) 
    \gen_single_thread.accept_cnt[3]_i_1 
       (.I0(\gen_single_thread.accept_cnt_reg [1]),
        .I1(E),
        .I2(\gen_single_thread.accept_cnt_reg [0]),
        .I3(\gen_single_thread.accept_cnt_reg [3]),
        .I4(\gen_single_thread.accept_cnt_reg [2]),
        .O(\gen_single_thread.accept_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3334333433344444)) 
    \gen_single_thread.accept_cnt[4]_i_1 
       (.I0(\gen_single_thread.accept_cnt[4]_i_3_n_0 ),
        .I1(p_2_in),
        .I2(m_ready_d[1]),
        .I3(ss_wr_awready_0),
        .I4(m_ready_d[0]),
        .I5(ss_aa_awready),
        .O(\gen_single_thread.accept_cnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF8000FFFE0001)) 
    \gen_single_thread.accept_cnt[4]_i_2 
       (.I0(\gen_single_thread.accept_cnt_reg [1]),
        .I1(E),
        .I2(\gen_single_thread.accept_cnt_reg [0]),
        .I3(\gen_single_thread.accept_cnt_reg [2]),
        .I4(\gen_single_thread.accept_cnt_reg [4]),
        .I5(\gen_single_thread.accept_cnt_reg [3]),
        .O(\gen_single_thread.accept_cnt[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \gen_single_thread.accept_cnt[4]_i_3 
       (.I0(\gen_single_thread.accept_cnt_reg [0]),
        .I1(\gen_single_thread.accept_cnt_reg [1]),
        .I2(\gen_single_thread.accept_cnt_reg [2]),
        .I3(\gen_single_thread.accept_cnt_reg [4]),
        .I4(\gen_single_thread.accept_cnt_reg [3]),
        .O(\gen_single_thread.accept_cnt[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2A2A2A2A00002000)) 
    \gen_single_thread.accept_cnt[4]_i_4 
       (.I0(s_axi_bready),
        .I1(\gen_single_thread.active_target_enc ),
        .I2(\gen_single_thread.active_target_enc_reg[1]_0 ),
        .I3(st_mr_bvalid),
        .I4(st_mr_bid_2),
        .I5(\gen_single_thread.accept_cnt_reg[4]_0 ),
        .O(p_2_in));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.accept_cnt_reg[0] 
       (.C(aclk),
        .CE(\gen_single_thread.accept_cnt[4]_i_1_n_0 ),
        .D(\gen_single_thread.accept_cnt[0]_i_1_n_0 ),
        .Q(\gen_single_thread.accept_cnt_reg [0]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.accept_cnt_reg[1] 
       (.C(aclk),
        .CE(\gen_single_thread.accept_cnt[4]_i_1_n_0 ),
        .D(\gen_single_thread.accept_cnt[1]_i_1_n_0 ),
        .Q(\gen_single_thread.accept_cnt_reg [1]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.accept_cnt_reg[2] 
       (.C(aclk),
        .CE(\gen_single_thread.accept_cnt[4]_i_1_n_0 ),
        .D(\gen_single_thread.accept_cnt[2]_i_1_n_0 ),
        .Q(\gen_single_thread.accept_cnt_reg [2]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.accept_cnt_reg[3] 
       (.C(aclk),
        .CE(\gen_single_thread.accept_cnt[4]_i_1_n_0 ),
        .D(\gen_single_thread.accept_cnt[3]_i_1_n_0 ),
        .Q(\gen_single_thread.accept_cnt_reg [3]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.accept_cnt_reg[4] 
       (.C(aclk),
        .CE(\gen_single_thread.accept_cnt[4]_i_1_n_0 ),
        .D(\gen_single_thread.accept_cnt[4]_i_2_n_0 ),
        .Q(\gen_single_thread.accept_cnt_reg [4]),
        .R(SS));
  LUT3 #(
    .INIT(8'hFE)) 
    \gen_single_thread.active_target_enc[1]_i_1__0 
       (.I0(s_axi_awaddr[0]),
        .I1(s_axi_awaddr[2]),
        .I2(s_axi_awaddr[1]),
        .O(\s_axi_awaddr[29] ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.active_target_enc_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(st_aa_awtarget_enc_0),
        .Q(\gen_single_thread.active_target_enc ),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.active_target_enc_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(\s_axi_awaddr[29] ),
        .Q(\gen_single_thread.active_target_enc_reg[1]_0 ),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.active_target_hot_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(D[0]),
        .Q(Q[0]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.active_target_hot_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(D[1]),
        .Q(Q[1]),
        .R(SS));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_bresp[0]_INST_0 
       (.I0(st_mr_bmesg[0]),
        .I1(st_mr_bmesg[2]),
        .I2(\gen_single_thread.active_target_enc ),
        .I3(\gen_single_thread.active_target_enc_reg[1]_0 ),
        .O(s_axi_bresp[0]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_bresp[1]_INST_0 
       (.I0(st_mr_bmesg[1]),
        .I1(st_mr_bmesg[3]),
        .I2(\gen_single_thread.active_target_enc ),
        .I3(\gen_single_thread.active_target_enc_reg[1]_0 ),
        .O(s_axi_bresp[1]));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_28_si_transactor" *) 
module audio_AXI_DMA_xbar_1_axi_crossbar_v2_1_28_si_transactor__parameterized0
   (\gen_single_thread.active_target_enc_reg[1]_0 ,
    \s_axi_awaddr[61] ,
    \m_ready_d_reg[0] ,
    valid_qual_i,
    \s_axi_bready[1] ,
    Q,
    s_axi_bresp,
    s_ready_i_reg,
    s_ready_i_reg_0,
    SS,
    E,
    st_aa_awtarget_enc_2,
    aclk,
    m_ready_d,
    s_axi_awvalid,
    \gen_arbiter.qual_reg_reg[1] ,
    \gen_arbiter.qual_reg_reg[1]_0 ,
    \gen_arbiter.qual_reg_reg[1]_1 ,
    match,
    ss_aa_awready,
    ss_wr_awready_1,
    s_axi_bready,
    st_mr_bid_0,
    m_valid_i_reg,
    st_mr_bid_1,
    st_mr_bid_2,
    m_valid_i_reg_0,
    st_mr_bvalid,
    \gen_single_thread.accept_cnt_reg[4]_0 ,
    st_mr_bmesg,
    s_axi_awaddr,
    m_axi_bready,
    m_axi_bvalid,
    m_valid_i_reg_1,
    D);
  output [0:0]\gen_single_thread.active_target_enc_reg[1]_0 ;
  output \s_axi_awaddr[61] ;
  output [0:0]\m_ready_d_reg[0] ;
  output [0:0]valid_qual_i;
  output [0:0]\s_axi_bready[1] ;
  output [1:0]Q;
  output [1:0]s_axi_bresp;
  output s_ready_i_reg;
  output s_ready_i_reg_0;
  input [0:0]SS;
  input [0:0]E;
  input [0:0]st_aa_awtarget_enc_2;
  input aclk;
  input [1:0]m_ready_d;
  input [0:0]s_axi_awvalid;
  input \gen_arbiter.qual_reg_reg[1] ;
  input \gen_arbiter.qual_reg_reg[1]_0 ;
  input \gen_arbiter.qual_reg_reg[1]_1 ;
  input match;
  input [0:0]ss_aa_awready;
  input ss_wr_awready_1;
  input [1:0]s_axi_bready;
  input st_mr_bid_0;
  input [1:0]m_valid_i_reg;
  input st_mr_bid_1;
  input st_mr_bid_2;
  input [0:0]m_valid_i_reg_0;
  input [0:0]st_mr_bvalid;
  input \gen_single_thread.accept_cnt_reg[4]_0 ;
  input [3:0]st_mr_bmesg;
  input [2:0]s_axi_awaddr;
  input [1:0]m_axi_bready;
  input [1:0]m_axi_bvalid;
  input m_valid_i_reg_1;
  input [1:0]D;

  wire [1:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]SS;
  wire aclk;
  wire [4:3]bready_carry;
  wire \gen_arbiter.m_grant_enc_i[0]_i_7_n_0 ;
  wire \gen_arbiter.qual_reg_reg[1] ;
  wire \gen_arbiter.qual_reg_reg[1]_0 ;
  wire \gen_arbiter.qual_reg_reg[1]_1 ;
  wire \gen_single_thread.accept_cnt[0]_i_1__0_n_0 ;
  wire \gen_single_thread.accept_cnt[1]_i_1__0_n_0 ;
  wire \gen_single_thread.accept_cnt[2]_i_1__0_n_0 ;
  wire \gen_single_thread.accept_cnt[3]_i_1__0_n_0 ;
  wire \gen_single_thread.accept_cnt[4]_i_1__0_n_0 ;
  wire \gen_single_thread.accept_cnt[4]_i_2__0_n_0 ;
  wire \gen_single_thread.accept_cnt[4]_i_3__0_n_0 ;
  wire [4:0]\gen_single_thread.accept_cnt_reg ;
  wire \gen_single_thread.accept_cnt_reg[4]_0 ;
  wire [0:0]\gen_single_thread.active_target_enc ;
  wire [0:0]\gen_single_thread.active_target_enc_reg[1]_0 ;
  wire \gen_single_thread.s_avalid_en__0 ;
  wire [1:0]m_axi_bready;
  wire [1:0]m_axi_bvalid;
  wire [1:0]m_ready_d;
  wire [0:0]\m_ready_d_reg[0] ;
  wire [1:0]m_valid_i_reg;
  wire [0:0]m_valid_i_reg_0;
  wire m_valid_i_reg_1;
  wire match;
  wire p_2_in;
  wire [2:0]s_axi_awaddr;
  wire \s_axi_awaddr[61] ;
  wire [0:0]s_axi_awvalid;
  wire [1:0]s_axi_bready;
  wire [0:0]\s_axi_bready[1] ;
  wire [1:0]s_axi_bresp;
  wire s_ready_i_reg;
  wire s_ready_i_reg_0;
  wire [0:0]ss_aa_awready;
  wire ss_wr_awready_1;
  wire [0:0]st_aa_awtarget_enc_2;
  wire st_mr_bid_0;
  wire st_mr_bid_1;
  wire st_mr_bid_2;
  wire [3:0]st_mr_bmesg;
  wire [0:0]st_mr_bvalid;
  wire [0:0]valid_qual_i;

  LUT6 #(
    .INIT(64'hD0D0D0D0D0D0D000)) 
    \gen_arbiter.m_grant_enc_i[0]_i_3 
       (.I0(\gen_arbiter.m_grant_enc_i[0]_i_7_n_0 ),
        .I1(p_2_in),
        .I2(\gen_single_thread.s_avalid_en__0 ),
        .I3(\gen_arbiter.qual_reg_reg[1] ),
        .I4(\gen_arbiter.qual_reg_reg[1]_0 ),
        .I5(\gen_arbiter.qual_reg_reg[1]_1 ),
        .O(valid_qual_i));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \gen_arbiter.m_grant_enc_i[0]_i_7 
       (.I0(\gen_single_thread.accept_cnt_reg [0]),
        .I1(\gen_single_thread.accept_cnt_reg [1]),
        .I2(\gen_single_thread.accept_cnt_reg [2]),
        .I3(\gen_single_thread.accept_cnt_reg [3]),
        .I4(\gen_single_thread.accept_cnt_reg [4]),
        .O(\gen_arbiter.m_grant_enc_i[0]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAAEBEBAA)) 
    \gen_arbiter.m_grant_enc_i[0]_i_8 
       (.I0(\gen_single_thread.accept_cnt[4]_i_3__0_n_0 ),
        .I1(st_aa_awtarget_enc_2),
        .I2(\gen_single_thread.active_target_enc ),
        .I3(match),
        .I4(\gen_single_thread.active_target_enc_reg[1]_0 ),
        .O(\gen_single_thread.s_avalid_en__0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \gen_arbiter.qual_reg[1]_i_1 
       (.I0(valid_qual_i),
        .I1(m_ready_d[0]),
        .I2(s_axi_awvalid),
        .O(\m_ready_d_reg[0] ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_single_thread.accept_cnt[0]_i_1__0 
       (.I0(\gen_single_thread.accept_cnt_reg [0]),
        .O(\gen_single_thread.accept_cnt[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h565656AAA9A9A955)) 
    \gen_single_thread.accept_cnt[1]_i_1__0 
       (.I0(\gen_single_thread.accept_cnt_reg [0]),
        .I1(ss_aa_awready),
        .I2(m_ready_d[0]),
        .I3(ss_wr_awready_1),
        .I4(m_ready_d[1]),
        .I5(\gen_single_thread.accept_cnt_reg [1]),
        .O(\gen_single_thread.accept_cnt[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT4 #(
    .INIT(16'h78E1)) 
    \gen_single_thread.accept_cnt[2]_i_1__0 
       (.I0(E),
        .I1(\gen_single_thread.accept_cnt_reg [0]),
        .I2(\gen_single_thread.accept_cnt_reg [2]),
        .I3(\gen_single_thread.accept_cnt_reg [1]),
        .O(\gen_single_thread.accept_cnt[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT5 #(
    .INIT(32'h7F80FE01)) 
    \gen_single_thread.accept_cnt[3]_i_1__0 
       (.I0(\gen_single_thread.accept_cnt_reg [1]),
        .I1(E),
        .I2(\gen_single_thread.accept_cnt_reg [0]),
        .I3(\gen_single_thread.accept_cnt_reg [3]),
        .I4(\gen_single_thread.accept_cnt_reg [2]),
        .O(\gen_single_thread.accept_cnt[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h3334333433344444)) 
    \gen_single_thread.accept_cnt[4]_i_1__0 
       (.I0(\gen_single_thread.accept_cnt[4]_i_3__0_n_0 ),
        .I1(p_2_in),
        .I2(m_ready_d[1]),
        .I3(ss_wr_awready_1),
        .I4(m_ready_d[0]),
        .I5(ss_aa_awready),
        .O(\gen_single_thread.accept_cnt[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF8000FFFE0001)) 
    \gen_single_thread.accept_cnt[4]_i_2__0 
       (.I0(\gen_single_thread.accept_cnt_reg [1]),
        .I1(E),
        .I2(\gen_single_thread.accept_cnt_reg [0]),
        .I3(\gen_single_thread.accept_cnt_reg [2]),
        .I4(\gen_single_thread.accept_cnt_reg [4]),
        .I5(\gen_single_thread.accept_cnt_reg [3]),
        .O(\gen_single_thread.accept_cnt[4]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \gen_single_thread.accept_cnt[4]_i_3__0 
       (.I0(\gen_single_thread.accept_cnt_reg [0]),
        .I1(\gen_single_thread.accept_cnt_reg [1]),
        .I2(\gen_single_thread.accept_cnt_reg [2]),
        .I3(\gen_single_thread.accept_cnt_reg [4]),
        .I4(\gen_single_thread.accept_cnt_reg [3]),
        .O(\gen_single_thread.accept_cnt[4]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h2A2A2A2A20000000)) 
    \gen_single_thread.accept_cnt[4]_i_4__0 
       (.I0(s_axi_bready[1]),
        .I1(\gen_single_thread.active_target_enc ),
        .I2(\gen_single_thread.active_target_enc_reg[1]_0 ),
        .I3(st_mr_bvalid),
        .I4(st_mr_bid_2),
        .I5(\gen_single_thread.accept_cnt_reg[4]_0 ),
        .O(p_2_in));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.accept_cnt_reg[0] 
       (.C(aclk),
        .CE(\gen_single_thread.accept_cnt[4]_i_1__0_n_0 ),
        .D(\gen_single_thread.accept_cnt[0]_i_1__0_n_0 ),
        .Q(\gen_single_thread.accept_cnt_reg [0]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.accept_cnt_reg[1] 
       (.C(aclk),
        .CE(\gen_single_thread.accept_cnt[4]_i_1__0_n_0 ),
        .D(\gen_single_thread.accept_cnt[1]_i_1__0_n_0 ),
        .Q(\gen_single_thread.accept_cnt_reg [1]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.accept_cnt_reg[2] 
       (.C(aclk),
        .CE(\gen_single_thread.accept_cnt[4]_i_1__0_n_0 ),
        .D(\gen_single_thread.accept_cnt[2]_i_1__0_n_0 ),
        .Q(\gen_single_thread.accept_cnt_reg [2]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.accept_cnt_reg[3] 
       (.C(aclk),
        .CE(\gen_single_thread.accept_cnt[4]_i_1__0_n_0 ),
        .D(\gen_single_thread.accept_cnt[3]_i_1__0_n_0 ),
        .Q(\gen_single_thread.accept_cnt_reg [3]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.accept_cnt_reg[4] 
       (.C(aclk),
        .CE(\gen_single_thread.accept_cnt[4]_i_1__0_n_0 ),
        .D(\gen_single_thread.accept_cnt[4]_i_2__0_n_0 ),
        .Q(\gen_single_thread.accept_cnt_reg [4]),
        .R(SS));
  LUT3 #(
    .INIT(8'hFE)) 
    \gen_single_thread.active_target_enc[1]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(s_axi_awaddr[2]),
        .I2(s_axi_awaddr[1]),
        .O(\s_axi_awaddr[61] ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.active_target_enc_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(st_aa_awtarget_enc_2),
        .Q(\gen_single_thread.active_target_enc ),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.active_target_enc_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(\s_axi_awaddr[61] ),
        .Q(\gen_single_thread.active_target_enc_reg[1]_0 ),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.active_target_hot_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(D[0]),
        .Q(Q[0]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.active_target_hot_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(D[1]),
        .Q(Q[1]),
        .R(SS));
  LUT4 #(
    .INIT(16'hD100)) 
    m_valid_i_i_1__4
       (.I0(bready_carry[4]),
        .I1(m_axi_bready[1]),
        .I2(m_axi_bvalid[1]),
        .I3(m_valid_i_reg_1),
        .O(s_ready_i_reg));
  LUT4 #(
    .INIT(16'hD100)) 
    m_valid_i_i_1__5
       (.I0(bready_carry[3]),
        .I1(m_axi_bready[0]),
        .I2(m_axi_bvalid[0]),
        .I3(m_valid_i_reg_1),
        .O(s_ready_i_reg_0));
  LUT5 #(
    .INIT(32'h8F808080)) 
    m_valid_i_i_2
       (.I0(s_axi_bready[1]),
        .I1(Q[0]),
        .I2(st_mr_bid_0),
        .I3(s_axi_bready[0]),
        .I4(m_valid_i_reg[0]),
        .O(bready_carry[3]));
  LUT5 #(
    .INIT(32'h8F808080)) 
    m_valid_i_i_2__0
       (.I0(s_axi_bready[1]),
        .I1(Q[1]),
        .I2(st_mr_bid_1),
        .I3(s_axi_bready[0]),
        .I4(m_valid_i_reg[1]),
        .O(bready_carry[4]));
  LUT5 #(
    .INIT(32'h8F808080)) 
    m_valid_i_i_2__1
       (.I0(s_axi_bready[1]),
        .I1(\gen_single_thread.active_target_enc_reg[1]_0 ),
        .I2(st_mr_bid_2),
        .I3(s_axi_bready[0]),
        .I4(m_valid_i_reg_0),
        .O(\s_axi_bready[1] ));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_bresp[2]_INST_0 
       (.I0(st_mr_bmesg[0]),
        .I1(st_mr_bmesg[2]),
        .I2(\gen_single_thread.active_target_enc ),
        .I3(\gen_single_thread.active_target_enc_reg[1]_0 ),
        .O(s_axi_bresp[0]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_bresp[3]_INST_0 
       (.I0(st_mr_bmesg[1]),
        .I1(st_mr_bmesg[3]),
        .I2(\gen_single_thread.active_target_enc ),
        .I3(\gen_single_thread.active_target_enc_reg[1]_0 ),
        .O(s_axi_bresp[1]));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_28_splitter" *) 
module audio_AXI_DMA_xbar_1_axi_crossbar_v2_1_28_splitter
   (\m_ready_d_reg[1]_0 ,
    m_ready_d,
    \m_ready_d_reg[1]_1 ,
    ss_wr_awvalid_0,
    ss_wr_awready_0,
    ss_aa_awready,
    s_axi_awvalid,
    Q,
    aresetn_d,
    aclk);
  output \m_ready_d_reg[1]_0 ;
  output [1:0]m_ready_d;
  output \m_ready_d_reg[1]_1 ;
  output ss_wr_awvalid_0;
  input ss_wr_awready_0;
  input [0:0]ss_aa_awready;
  input [0:0]s_axi_awvalid;
  input [0:0]Q;
  input aresetn_d;
  input aclk;

  wire [0:0]Q;
  wire aclk;
  wire aresetn_d;
  wire [1:0]m_ready_d;
  wire \m_ready_d[0]_i_1_n_0 ;
  wire \m_ready_d[1]_i_1_n_0 ;
  wire \m_ready_d_reg[1]_0 ;
  wire \m_ready_d_reg[1]_1 ;
  wire [0:0]s_axi_awvalid;
  wire [0:0]ss_aa_awready;
  wire ss_wr_awready_0;
  wire ss_wr_awvalid_0;

  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_rep[0].fifoaddr[1]_i_2 
       (.I0(s_axi_awvalid),
        .I1(m_ready_d[1]),
        .O(ss_wr_awvalid_0));
  LUT6 #(
    .INIT(64'h000C0008000C0000)) 
    \m_ready_d[0]_i_1 
       (.I0(s_axi_awvalid),
        .I1(aresetn_d),
        .I2(m_ready_d[1]),
        .I3(ss_wr_awready_0),
        .I4(m_ready_d[0]),
        .I5(ss_aa_awready),
        .O(\m_ready_d[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000C8C0)) 
    \m_ready_d[1]_i_1 
       (.I0(s_axi_awvalid),
        .I1(aresetn_d),
        .I2(m_ready_d[1]),
        .I3(ss_wr_awready_0),
        .I4(m_ready_d[0]),
        .I5(ss_aa_awready),
        .O(\m_ready_d[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_ready_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_ready_d[0]_i_1_n_0 ),
        .Q(m_ready_d[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_ready_d_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_ready_d[1]_i_1_n_0 ),
        .Q(m_ready_d[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT4 #(
    .INIT(16'hEEE0)) 
    \s_axi_awready[0]_INST_0 
       (.I0(m_ready_d[1]),
        .I1(ss_wr_awready_0),
        .I2(m_ready_d[0]),
        .I3(ss_aa_awready),
        .O(\m_ready_d_reg[1]_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \storage_data1[1]_i_3 
       (.I0(m_ready_d[1]),
        .I1(s_axi_awvalid),
        .I2(Q),
        .O(\m_ready_d_reg[1]_1 ));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_28_splitter" *) 
module audio_AXI_DMA_xbar_1_axi_crossbar_v2_1_28_splitter_2
   (\m_ready_d_reg[1]_0 ,
    m_ready_d,
    \m_ready_d_reg[1]_1 ,
    ss_wr_awvalid_1,
    ss_wr_awready_1,
    ss_aa_awready,
    s_axi_awvalid,
    Q,
    aresetn_d,
    aclk);
  output \m_ready_d_reg[1]_0 ;
  output [1:0]m_ready_d;
  output \m_ready_d_reg[1]_1 ;
  output ss_wr_awvalid_1;
  input ss_wr_awready_1;
  input [0:0]ss_aa_awready;
  input [0:0]s_axi_awvalid;
  input [0:0]Q;
  input aresetn_d;
  input aclk;

  wire [0:0]Q;
  wire aclk;
  wire aresetn_d;
  wire [1:0]m_ready_d;
  wire \m_ready_d[0]_i_1_n_0 ;
  wire \m_ready_d[1]_i_1_n_0 ;
  wire \m_ready_d_reg[1]_0 ;
  wire \m_ready_d_reg[1]_1 ;
  wire [0:0]s_axi_awvalid;
  wire [0:0]ss_aa_awready;
  wire ss_wr_awready_1;
  wire ss_wr_awvalid_1;

  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_rep[0].fifoaddr[1]_i_2__0 
       (.I0(s_axi_awvalid),
        .I1(m_ready_d[1]),
        .O(ss_wr_awvalid_1));
  LUT6 #(
    .INIT(64'h000C0008000C0000)) 
    \m_ready_d[0]_i_1 
       (.I0(s_axi_awvalid),
        .I1(aresetn_d),
        .I2(m_ready_d[1]),
        .I3(ss_wr_awready_1),
        .I4(m_ready_d[0]),
        .I5(ss_aa_awready),
        .O(\m_ready_d[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000C8C0)) 
    \m_ready_d[1]_i_1 
       (.I0(s_axi_awvalid),
        .I1(aresetn_d),
        .I2(m_ready_d[1]),
        .I3(ss_wr_awready_1),
        .I4(m_ready_d[0]),
        .I5(ss_aa_awready),
        .O(\m_ready_d[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_ready_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_ready_d[0]_i_1_n_0 ),
        .Q(m_ready_d[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_ready_d_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_ready_d[1]_i_1_n_0 ),
        .Q(m_ready_d[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT4 #(
    .INIT(16'hEEE0)) 
    \s_axi_awready[1]_INST_0 
       (.I0(m_ready_d[1]),
        .I1(ss_wr_awready_1),
        .I2(m_ready_d[0]),
        .I3(ss_aa_awready),
        .O(\m_ready_d_reg[1]_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \storage_data1[1]_i_3__0 
       (.I0(m_ready_d[1]),
        .I1(s_axi_awvalid),
        .I2(Q),
        .O(\m_ready_d_reg[1]_1 ));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_28_splitter" *) 
module audio_AXI_DMA_xbar_1_axi_crossbar_v2_1_28_splitter_4
   (m_ready_d,
    p_1_in,
    aresetn_d,
    mi_awready_mux__1,
    s_ready_i0__1,
    Q,
    \m_ready_d_reg[0]_0 ,
    aclk);
  output [1:0]m_ready_d;
  input p_1_in;
  input aresetn_d;
  input mi_awready_mux__1;
  input [0:0]s_ready_i0__1;
  input [2:0]Q;
  input \m_ready_d_reg[0]_0 ;
  input aclk;

  wire [2:0]Q;
  wire aclk;
  wire aresetn_d;
  wire [1:0]m_ready_d;
  wire \m_ready_d[0]_i_1_n_0 ;
  wire \m_ready_d[1]_i_1_n_0 ;
  wire \m_ready_d_reg[0]_0 ;
  wire mi_awready_mux__1;
  wire p_1_in;
  wire [0:0]s_ready_i0__1;

  LUT6 #(
    .INIT(64'h00000000BBBBBBBA)) 
    \m_ready_d[0]_i_1 
       (.I0(m_ready_d[0]),
        .I1(p_1_in),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(\m_ready_d_reg[0]_0 ),
        .O(\m_ready_d[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000C4C0)) 
    \m_ready_d[1]_i_1 
       (.I0(p_1_in),
        .I1(aresetn_d),
        .I2(m_ready_d[1]),
        .I3(mi_awready_mux__1),
        .I4(s_ready_i0__1),
        .O(\m_ready_d[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_ready_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_ready_d[0]_i_1_n_0 ),
        .Q(m_ready_d[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_ready_d_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_ready_d[1]_i_1_n_0 ),
        .Q(m_ready_d[1]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_28_wdata_mux" *) 
module audio_AXI_DMA_xbar_1_axi_crossbar_v2_1_28_wdata_mux
   (m_avalid,
    m_select_enc,
    \FSM_onehot_state_reg[3] ,
    m_axi_wlast,
    m_axi_wstrb,
    m_axi_wdata,
    aa_wm_awgrant_enc,
    aclk,
    areset_d1,
    p_1_in,
    m_ready_d,
    Q,
    \FSM_onehot_state_reg[1] ,
    sa_wm_awvalid__2,
    m_axi_wready,
    s_axi_wlast,
    m_axi_wvalid,
    s_axi_wstrb,
    s_axi_wdata,
    SS);
  output m_avalid;
  output m_select_enc;
  output [0:0]\FSM_onehot_state_reg[3] ;
  output [0:0]m_axi_wlast;
  output [7:0]m_axi_wstrb;
  output [63:0]m_axi_wdata;
  input aa_wm_awgrant_enc;
  input aclk;
  input areset_d1;
  input p_1_in;
  input [0:0]m_ready_d;
  input [0:0]Q;
  input \FSM_onehot_state_reg[1] ;
  input [0:0]sa_wm_awvalid__2;
  input [0:0]m_axi_wready;
  input [1:0]s_axi_wlast;
  input [0:0]m_axi_wvalid;
  input [15:0]s_axi_wstrb;
  input [127:0]s_axi_wdata;
  input [0:0]SS;

  wire \FSM_onehot_state_reg[1] ;
  wire [0:0]\FSM_onehot_state_reg[3] ;
  wire [0:0]Q;
  wire [0:0]SS;
  wire aa_wm_awgrant_enc;
  wire aclk;
  wire areset_d1;
  wire m_avalid;
  wire [63:0]m_axi_wdata;
  wire [0:0]m_axi_wlast;
  wire [0:0]m_axi_wready;
  wire [7:0]m_axi_wstrb;
  wire [0:0]m_axi_wvalid;
  wire [0:0]m_ready_d;
  wire m_select_enc;
  wire p_1_in;
  wire [127:0]s_axi_wdata;
  wire [1:0]s_axi_wlast;
  wire [15:0]s_axi_wstrb;
  wire [0:0]sa_wm_awvalid__2;

  audio_AXI_DMA_xbar_1_axi_data_fifo_v2_1_26_axic_reg_srl_fifo__parameterized0_11 \gen_wmux.wmux_aw_fifo 
       (.\FSM_onehot_state_reg[1]_0 (\FSM_onehot_state_reg[1] ),
        .\FSM_onehot_state_reg[3]_0 (\FSM_onehot_state_reg[3] ),
        .Q(Q),
        .SS(SS),
        .aa_wm_awgrant_enc(aa_wm_awgrant_enc),
        .aclk(aclk),
        .areset_d1(areset_d1),
        .m_avalid(m_avalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wvalid(m_axi_wvalid),
        .m_ready_d(m_ready_d),
        .p_1_in(p_1_in),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wstrb(s_axi_wstrb),
        .sa_wm_awvalid__2(sa_wm_awvalid__2),
        .\storage_data1_reg[0]_0 (m_select_enc));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_28_wdata_mux" *) 
module audio_AXI_DMA_xbar_1_axi_crossbar_v2_1_28_wdata_mux_0
   (m_avalid,
    m_select_enc,
    \FSM_onehot_state_reg[3] ,
    m_axi_wlast,
    m_axi_wstrb,
    m_axi_wdata,
    aa_wm_awgrant_enc,
    aclk,
    areset_d1,
    p_1_in,
    m_ready_d,
    Q,
    \FSM_onehot_state_reg[1] ,
    sa_wm_awvalid__2,
    m_axi_wready,
    s_axi_wlast,
    m_axi_wvalid,
    s_axi_wstrb,
    s_axi_wdata,
    SS);
  output m_avalid;
  output m_select_enc;
  output [0:0]\FSM_onehot_state_reg[3] ;
  output [0:0]m_axi_wlast;
  output [7:0]m_axi_wstrb;
  output [63:0]m_axi_wdata;
  input aa_wm_awgrant_enc;
  input aclk;
  input areset_d1;
  input p_1_in;
  input [0:0]m_ready_d;
  input [0:0]Q;
  input \FSM_onehot_state_reg[1] ;
  input [0:0]sa_wm_awvalid__2;
  input [0:0]m_axi_wready;
  input [1:0]s_axi_wlast;
  input [0:0]m_axi_wvalid;
  input [15:0]s_axi_wstrb;
  input [127:0]s_axi_wdata;
  input [0:0]SS;

  wire \FSM_onehot_state_reg[1] ;
  wire [0:0]\FSM_onehot_state_reg[3] ;
  wire [0:0]Q;
  wire [0:0]SS;
  wire aa_wm_awgrant_enc;
  wire aclk;
  wire areset_d1;
  wire m_avalid;
  wire [63:0]m_axi_wdata;
  wire [0:0]m_axi_wlast;
  wire [0:0]m_axi_wready;
  wire [7:0]m_axi_wstrb;
  wire [0:0]m_axi_wvalid;
  wire [0:0]m_ready_d;
  wire m_select_enc;
  wire p_1_in;
  wire [127:0]s_axi_wdata;
  wire [1:0]s_axi_wlast;
  wire [15:0]s_axi_wstrb;
  wire [0:0]sa_wm_awvalid__2;

  audio_AXI_DMA_xbar_1_axi_data_fifo_v2_1_26_axic_reg_srl_fifo__parameterized0 \gen_wmux.wmux_aw_fifo 
       (.\FSM_onehot_state_reg[1]_0 (\FSM_onehot_state_reg[1] ),
        .\FSM_onehot_state_reg[3]_0 (\FSM_onehot_state_reg[3] ),
        .Q(Q),
        .SS(SS),
        .aa_wm_awgrant_enc(aa_wm_awgrant_enc),
        .aclk(aclk),
        .areset_d1(areset_d1),
        .m_avalid(m_avalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wvalid(m_axi_wvalid),
        .m_ready_d(m_ready_d),
        .p_1_in(p_1_in),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wstrb(s_axi_wstrb),
        .sa_wm_awvalid__2(sa_wm_awvalid__2),
        .\storage_data1_reg[0]_0 (m_select_enc));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_28_wdata_mux" *) 
module audio_AXI_DMA_xbar_1_axi_crossbar_v2_1_28_wdata_mux__parameterized0
   (m_avalid,
    m_select_enc,
    D,
    Q,
    push,
    aa_wm_awgrant_enc,
    aclk,
    areset_d1,
    m_valid_i_reg,
    m_aready__1,
    sa_wm_awvalid__2,
    p_1_in,
    m_ready_d,
    m_valid_i_reg_0,
    \FSM_onehot_state_reg[3] ,
    SS);
  output m_avalid;
  output m_select_enc;
  output [0:0]D;
  output [1:0]Q;
  input push;
  input aa_wm_awgrant_enc;
  input aclk;
  input areset_d1;
  input m_valid_i_reg;
  input m_aready__1;
  input [0:0]sa_wm_awvalid__2;
  input p_1_in;
  input [0:0]m_ready_d;
  input [0:0]m_valid_i_reg_0;
  input [1:0]\FSM_onehot_state_reg[3] ;
  input [0:0]SS;

  wire [0:0]D;
  wire [1:0]\FSM_onehot_state_reg[3] ;
  wire [1:0]Q;
  wire [0:0]SS;
  wire aa_wm_awgrant_enc;
  wire aclk;
  wire areset_d1;
  wire m_aready__1;
  wire m_avalid;
  wire [0:0]m_ready_d;
  wire m_select_enc;
  wire m_valid_i_reg;
  wire [0:0]m_valid_i_reg_0;
  wire p_1_in;
  wire push;
  wire [0:0]sa_wm_awvalid__2;

  audio_AXI_DMA_xbar_1_axi_data_fifo_v2_1_26_axic_reg_srl_fifo__parameterized1 \gen_wmux.wmux_aw_fifo 
       (.D(D),
        .\FSM_onehot_state_reg[3]_0 (\FSM_onehot_state_reg[3] ),
        .Q(Q),
        .SS(SS),
        .aa_wm_awgrant_enc(aa_wm_awgrant_enc),
        .aclk(aclk),
        .areset_d1(areset_d1),
        .m_aready__1(m_aready__1),
        .m_avalid(m_avalid),
        .m_ready_d(m_ready_d),
        .m_select_enc(m_select_enc),
        .m_valid_i_reg_0(m_valid_i_reg),
        .m_valid_i_reg_1(m_valid_i_reg_0),
        .p_1_in(p_1_in),
        .push(push),
        .sa_wm_awvalid__2(sa_wm_awvalid__2));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_28_wdata_router" *) 
module audio_AXI_DMA_xbar_1_axi_crossbar_v2_1_28_wdata_router
   (ss_wr_awready_0,
    Q,
    s_axi_wready,
    \storage_data1_reg[1] ,
    \storage_data1_reg[0] ,
    \storage_data1_reg[0]_0 ,
    st_aa_awtarget_enc_0,
    aclk,
    \gen_primitive_shifter.gen_srls[0].srl_inst ,
    areset_d1,
    SS,
    s_axi_awaddr,
    ss_wr_awvalid_0,
    s_axi_wlast,
    s_axi_wvalid,
    m_ready_d,
    s_axi_awvalid,
    m_avalid,
    m_axi_wready,
    m_select_enc,
    m_avalid_0,
    mi_wready_2,
    m_select_enc_1,
    m_select_enc_2,
    m_avalid_3,
    \storage_data1_reg[0]_1 );
  output ss_wr_awready_0;
  output [0:0]Q;
  output [0:0]s_axi_wready;
  output \storage_data1_reg[1] ;
  output \storage_data1_reg[0] ;
  output \storage_data1_reg[0]_0 ;
  input [0:0]st_aa_awtarget_enc_0;
  input aclk;
  input \gen_primitive_shifter.gen_srls[0].srl_inst ;
  input areset_d1;
  input [0:0]SS;
  input [3:0]s_axi_awaddr;
  input ss_wr_awvalid_0;
  input [0:0]s_axi_wlast;
  input [0:0]s_axi_wvalid;
  input [0:0]m_ready_d;
  input [0:0]s_axi_awvalid;
  input m_avalid;
  input [1:0]m_axi_wready;
  input m_select_enc;
  input m_avalid_0;
  input mi_wready_2;
  input m_select_enc_1;
  input m_select_enc_2;
  input m_avalid_3;
  input \storage_data1_reg[0]_1 ;

  wire [0:0]Q;
  wire [0:0]SS;
  wire aclk;
  wire areset_d1;
  wire \gen_primitive_shifter.gen_srls[0].srl_inst ;
  wire m_avalid;
  wire m_avalid_0;
  wire m_avalid_3;
  wire [1:0]m_axi_wready;
  wire [0:0]m_ready_d;
  wire m_select_enc;
  wire m_select_enc_1;
  wire m_select_enc_2;
  wire mi_wready_2;
  wire [3:0]s_axi_awaddr;
  wire [0:0]s_axi_awvalid;
  wire [0:0]s_axi_wlast;
  wire [0:0]s_axi_wready;
  wire [0:0]s_axi_wvalid;
  wire ss_wr_awready_0;
  wire ss_wr_awvalid_0;
  wire [0:0]st_aa_awtarget_enc_0;
  wire \storage_data1_reg[0] ;
  wire \storage_data1_reg[0]_0 ;
  wire \storage_data1_reg[0]_1 ;
  wire \storage_data1_reg[1] ;

  audio_AXI_DMA_xbar_1_axi_data_fifo_v2_1_26_axic_reg_srl_fifo_6 wrouter_aw_fifo
       (.Q(Q),
        .SS(SS),
        .aclk(aclk),
        .areset_d1(areset_d1),
        .\gen_primitive_shifter.gen_srls[0].srl_inst (\gen_primitive_shifter.gen_srls[0].srl_inst ),
        .m_avalid(m_avalid),
        .m_avalid_0(m_avalid_0),
        .m_avalid_3(m_avalid_3),
        .m_axi_wready(m_axi_wready),
        .m_ready_d(m_ready_d),
        .m_select_enc(m_select_enc),
        .m_select_enc_1(m_select_enc_1),
        .m_select_enc_2(m_select_enc_2),
        .mi_wready_2(mi_wready_2),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid),
        .s_ready_i_reg_0(ss_wr_awready_0),
        .ss_wr_awvalid_0(ss_wr_awvalid_0),
        .st_aa_awtarget_enc_0(st_aa_awtarget_enc_0),
        .\storage_data1_reg[0]_0 (\storage_data1_reg[0] ),
        .\storage_data1_reg[0]_1 (\storage_data1_reg[0]_0 ),
        .\storage_data1_reg[0]_2 (\storage_data1_reg[0]_1 ),
        .\storage_data1_reg[1]_0 (\storage_data1_reg[1] ));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_28_wdata_router" *) 
module audio_AXI_DMA_xbar_1_axi_crossbar_v2_1_28_wdata_router_3
   (areset_d1,
    ss_wr_awready_1,
    wm_mr_wvalid_2,
    m_axi_wvalid,
    Q,
    s_axi_wready,
    st_aa_awtarget_enc_2,
    aclk,
    \gen_primitive_shifter.gen_srls[0].srl_inst ,
    SS,
    m_avalid,
    m_select_enc,
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_2__0 ,
    m_avalid_0,
    m_select_enc_1,
    m_axi_wvalid_1_sp_1,
    m_avalid_2,
    m_select_enc_3,
    m_axi_wvalid_0_sp_1,
    ss_wr_awvalid_1,
    s_axi_wlast,
    s_axi_wvalid,
    m_ready_d,
    s_axi_awvalid,
    m_axi_wready,
    mi_wready_2,
    s_axi_awaddr,
    \storage_data1_reg[0] );
  output areset_d1;
  output ss_wr_awready_1;
  output wm_mr_wvalid_2;
  output [1:0]m_axi_wvalid;
  output [0:0]Q;
  output [0:0]s_axi_wready;
  input [0:0]st_aa_awtarget_enc_2;
  input aclk;
  input \gen_primitive_shifter.gen_srls[0].srl_inst ;
  input [0:0]SS;
  input m_avalid;
  input m_select_enc;
  input \gen_primitive_shifter.gen_srls[0].srl_inst_i_2__0 ;
  input m_avalid_0;
  input m_select_enc_1;
  input m_axi_wvalid_1_sp_1;
  input m_avalid_2;
  input m_select_enc_3;
  input m_axi_wvalid_0_sp_1;
  input ss_wr_awvalid_1;
  input [0:0]s_axi_wlast;
  input [0:0]s_axi_wvalid;
  input [0:0]m_ready_d;
  input [0:0]s_axi_awvalid;
  input [1:0]m_axi_wready;
  input mi_wready_2;
  input [3:0]s_axi_awaddr;
  input \storage_data1_reg[0] ;

  wire [0:0]Q;
  wire [0:0]SS;
  wire aclk;
  wire areset_d1;
  wire \gen_primitive_shifter.gen_srls[0].srl_inst ;
  wire \gen_primitive_shifter.gen_srls[0].srl_inst_i_2__0 ;
  wire m_avalid;
  wire m_avalid_0;
  wire m_avalid_2;
  wire [1:0]m_axi_wready;
  wire [1:0]m_axi_wvalid;
  wire m_axi_wvalid_0_sn_1;
  wire m_axi_wvalid_1_sn_1;
  wire [0:0]m_ready_d;
  wire m_select_enc;
  wire m_select_enc_1;
  wire m_select_enc_3;
  wire mi_wready_2;
  wire [3:0]s_axi_awaddr;
  wire [0:0]s_axi_awvalid;
  wire [0:0]s_axi_wlast;
  wire [0:0]s_axi_wready;
  wire [0:0]s_axi_wvalid;
  wire ss_wr_awready_1;
  wire ss_wr_awvalid_1;
  wire [0:0]st_aa_awtarget_enc_2;
  wire \storage_data1_reg[0] ;
  wire wm_mr_wvalid_2;

  assign m_axi_wvalid_0_sn_1 = m_axi_wvalid_0_sp_1;
  assign m_axi_wvalid_1_sn_1 = m_axi_wvalid_1_sp_1;
  audio_AXI_DMA_xbar_1_axi_data_fifo_v2_1_26_axic_reg_srl_fifo wrouter_aw_fifo
       (.Q(Q),
        .SS(areset_d1),
        .aclk(aclk),
        .\gen_primitive_shifter.gen_srls[0].srl_inst (\gen_primitive_shifter.gen_srls[0].srl_inst ),
        .\gen_primitive_shifter.gen_srls[0].srl_inst_i_2__0 (\gen_primitive_shifter.gen_srls[0].srl_inst_i_2__0 ),
        .\gen_rep[0].fifoaddr_reg[3]_0 (SS),
        .m_avalid(m_avalid),
        .m_avalid_0(m_avalid_0),
        .m_avalid_2(m_avalid_2),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .m_axi_wvalid_0_sp_1(m_axi_wvalid_0_sn_1),
        .m_axi_wvalid_1_sp_1(m_axi_wvalid_1_sn_1),
        .m_ready_d(m_ready_d),
        .m_select_enc(m_select_enc),
        .m_select_enc_1(m_select_enc_1),
        .m_select_enc_3(m_select_enc_3),
        .mi_wready_2(mi_wready_2),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid),
        .s_ready_i_reg_0(ss_wr_awready_1),
        .ss_wr_awvalid_1(ss_wr_awvalid_1),
        .st_aa_awtarget_enc_2(st_aa_awtarget_enc_2),
        .\storage_data1_reg[0]_0 (\storage_data1_reg[0] ),
        .wm_mr_wvalid_2(wm_mr_wvalid_2));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_26_axic_reg_srl_fifo" *) 
module audio_AXI_DMA_xbar_1_axi_data_fifo_v2_1_26_axic_reg_srl_fifo
   (SS,
    s_ready_i_reg_0,
    wm_mr_wvalid_2,
    m_axi_wvalid,
    Q,
    s_axi_wready,
    st_aa_awtarget_enc_2,
    aclk,
    \gen_primitive_shifter.gen_srls[0].srl_inst ,
    \gen_rep[0].fifoaddr_reg[3]_0 ,
    m_avalid,
    m_select_enc,
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_2__0 ,
    m_avalid_0,
    m_select_enc_1,
    m_axi_wvalid_1_sp_1,
    m_avalid_2,
    m_select_enc_3,
    m_axi_wvalid_0_sp_1,
    ss_wr_awvalid_1,
    s_axi_wlast,
    s_axi_wvalid,
    m_ready_d,
    s_axi_awvalid,
    m_axi_wready,
    mi_wready_2,
    s_axi_awaddr,
    \storage_data1_reg[0]_0 );
  output [0:0]SS;
  output s_ready_i_reg_0;
  output wm_mr_wvalid_2;
  output [1:0]m_axi_wvalid;
  output [0:0]Q;
  output [0:0]s_axi_wready;
  input [0:0]st_aa_awtarget_enc_2;
  input aclk;
  input \gen_primitive_shifter.gen_srls[0].srl_inst ;
  input [0:0]\gen_rep[0].fifoaddr_reg[3]_0 ;
  input m_avalid;
  input m_select_enc;
  input \gen_primitive_shifter.gen_srls[0].srl_inst_i_2__0 ;
  input m_avalid_0;
  input m_select_enc_1;
  input m_axi_wvalid_1_sp_1;
  input m_avalid_2;
  input m_select_enc_3;
  input m_axi_wvalid_0_sp_1;
  input ss_wr_awvalid_1;
  input [0:0]s_axi_wlast;
  input [0:0]s_axi_wvalid;
  input [0:0]m_ready_d;
  input [0:0]s_axi_awvalid;
  input [1:0]m_axi_wready;
  input mi_wready_2;
  input [3:0]s_axi_awaddr;
  input \storage_data1_reg[0]_0 ;

  wire \FSM_onehot_state[0]_i_1__0_n_0 ;
  wire \FSM_onehot_state[1]_i_1__0_n_0 ;
  wire \FSM_onehot_state[1]_i_2__2_n_0 ;
  wire \FSM_onehot_state[3]_i_2__0_n_0 ;
  wire \FSM_onehot_state[3]_i_4__0_n_0 ;
  wire \FSM_onehot_state[3]_i_5__0_n_0 ;
  wire \FSM_onehot_state[3]_i_6__0_n_0 ;
  wire \FSM_onehot_state[3]_i_7__0_n_0 ;
  wire \FSM_onehot_state[3]_i_9__0_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire [0:0]Q;
  wire [0:0]SS;
  wire aclk;
  wire \gen_primitive_shifter.gen_srls[0].srl_inst ;
  wire \gen_primitive_shifter.gen_srls[0].srl_inst_i_2__0 ;
  wire \gen_rep[0].fifoaddr[0]_i_1__2_n_0 ;
  wire \gen_rep[0].fifoaddr[1]_i_1__2_n_0 ;
  wire \gen_rep[0].fifoaddr[2]_i_1__2_n_0 ;
  wire \gen_rep[0].fifoaddr[3]_i_2__0_n_0 ;
  wire [3:0]\gen_rep[0].fifoaddr_reg ;
  wire [0:0]\gen_rep[0].fifoaddr_reg[3]_0 ;
  wire \gen_srls[0].gen_rep[0].srl_nx1_n_0 ;
  wire \gen_srls[0].gen_rep[1].srl_nx1_n_3 ;
  wire in3;
  wire m_aready0__1;
  wire m_aready__1;
  wire m_avalid;
  wire m_avalid_0;
  wire m_avalid_1;
  wire m_avalid_2;
  wire [1:0]m_axi_wready;
  wire [1:0]m_axi_wvalid;
  wire m_axi_wvalid_0_sn_1;
  wire m_axi_wvalid_1_sn_1;
  wire [0:0]m_ready_d;
  wire m_select_enc;
  wire m_select_enc_1;
  wire m_select_enc_3;
  wire m_valid_i;
  wire m_valid_i_i_1__3_n_0;
  wire mi_wready_2;
  wire p_0_in;
  wire p_9_in;
  wire push;
  wire [3:0]s_axi_awaddr;
  wire [0:0]s_axi_awvalid;
  wire [0:0]s_axi_wlast;
  wire [0:0]s_axi_wready;
  wire [0:0]s_axi_wvalid;
  wire s_ready_i_i_1__0_n_0;
  wire s_ready_i_i_2__0_n_0;
  wire s_ready_i_reg_0;
  wire sel;
  wire ss_wr_awvalid_1;
  wire [0:0]st_aa_awtarget_enc_2;
  wire [1:0]storage_data1;
  wire storage_data11;
  wire storage_data1210_out;
  wire \storage_data1[0]_i_1__0_n_0 ;
  wire \storage_data1[1]_i_1__0_n_0 ;
  wire \storage_data1_reg[0]_0 ;
  wire wm_mr_wvalid_2;

  assign m_axi_wvalid_0_sn_1 = m_axi_wvalid_0_sp_1;
  assign m_axi_wvalid_1_sn_1 = m_axi_wvalid_1_sp_1;
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[0]_i_1__0 
       (.I0(Q),
        .I1(in3),
        .O(\FSM_onehot_state[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAABAAAAAAAAAAAA)) 
    \FSM_onehot_state[1]_i_1__0 
       (.I0(storage_data1210_out),
        .I1(\gen_rep[0].fifoaddr_reg [0]),
        .I2(\FSM_onehot_state[3]_i_7__0_n_0 ),
        .I3(\FSM_onehot_state[3]_i_4__0_n_0 ),
        .I4(\FSM_onehot_state[1]_i_2__2_n_0 ),
        .I5(storage_data11),
        .O(\FSM_onehot_state[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \FSM_onehot_state[1]_i_2__2 
       (.I0(\gen_rep[0].fifoaddr_reg [2]),
        .I1(\gen_rep[0].fifoaddr_reg [1]),
        .I2(\gen_rep[0].fifoaddr_reg [3]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\FSM_onehot_state[1]_i_2__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \FSM_onehot_state[1]_i_3__0 
       (.I0(m_aready0__1),
        .I1(s_axi_wvalid),
        .I2(m_avalid_1),
        .I3(s_axi_wlast),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .O(storage_data11));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFABAA)) 
    \FSM_onehot_state[3]_i_1__3 
       (.I0(storage_data1210_out),
        .I1(\gen_rep[0].fifoaddr_reg [0]),
        .I2(\FSM_onehot_state[3]_i_4__0_n_0 ),
        .I3(\FSM_onehot_state[3]_i_5__0_n_0 ),
        .I4(\FSM_onehot_state[3]_i_6__0_n_0 ),
        .I5(\FSM_onehot_state[3]_i_7__0_n_0 ),
        .O(m_valid_i));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[3]_i_2__0 
       (.I0(Q),
        .I1(in3),
        .O(\FSM_onehot_state[3]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \FSM_onehot_state[3]_i_3__0 
       (.I0(p_9_in),
        .I1(m_ready_d),
        .I2(s_axi_awvalid),
        .O(storage_data1210_out));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \FSM_onehot_state[3]_i_4__0 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(s_ready_i_reg_0),
        .I2(m_ready_d),
        .I3(s_axi_awvalid),
        .O(\FSM_onehot_state[3]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \FSM_onehot_state[3]_i_5__0 
       (.I0(\gen_rep[0].fifoaddr_reg [3]),
        .I1(\gen_rep[0].fifoaddr_reg [1]),
        .I2(\gen_rep[0].fifoaddr_reg [2]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(\FSM_onehot_state[3]_i_9__0_n_0 ),
        .I5(m_aready0__1),
        .O(\FSM_onehot_state[3]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \FSM_onehot_state[3]_i_6__0 
       (.I0(ss_wr_awvalid_1),
        .I1(s_axi_wlast),
        .I2(m_avalid_1),
        .I3(s_axi_wvalid),
        .I4(m_aready0__1),
        .I5(Q),
        .O(\FSM_onehot_state[3]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF000000000000)) 
    \FSM_onehot_state[3]_i_7__0 
       (.I0(s_axi_wlast),
        .I1(m_avalid_1),
        .I2(s_axi_wvalid),
        .I3(m_aready0__1),
        .I4(ss_wr_awvalid_1),
        .I5(Q),
        .O(\FSM_onehot_state[3]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'h8000000080008000)) 
    \FSM_onehot_state[3]_i_8__0 
       (.I0(m_aready0__1),
        .I1(s_axi_wvalid),
        .I2(m_avalid_1),
        .I3(s_axi_wlast),
        .I4(m_ready_d),
        .I5(s_axi_awvalid),
        .O(in3));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_onehot_state[3]_i_9__0 
       (.I0(s_axi_wvalid),
        .I1(m_avalid_1),
        .I2(s_axi_wlast),
        .O(\FSM_onehot_state[3]_i_9__0_n_0 ));
  (* FSM_ENCODED_STATES = "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[0] 
       (.C(aclk),
        .CE(m_valid_i),
        .D(\FSM_onehot_state[0]_i_1__0_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .R(SS));
  (* FSM_ENCODED_STATES = "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(aclk),
        .CE(m_valid_i),
        .D(\FSM_onehot_state[1]_i_1__0_n_0 ),
        .Q(Q),
        .R(SS));
  (* FSM_ENCODED_STATES = "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[3] 
       (.C(aclk),
        .CE(m_valid_i),
        .D(\FSM_onehot_state[3]_i_2__0_n_0 ),
        .Q(p_9_in),
        .S(SS));
  FDRE areset_d1_reg
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_rep[0].fifoaddr_reg[3]_0 ),
        .Q(SS),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00800000)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_3 
       (.I0(p_0_in),
        .I1(m_avalid),
        .I2(m_select_enc),
        .I3(storage_data1[0]),
        .I4(storage_data1[1]),
        .I5(\gen_primitive_shifter.gen_srls[0].srl_inst_i_2__0 ),
        .O(wm_mr_wvalid_2));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \gen_rep[0].fifoaddr[0]_i_1__2 
       (.I0(\gen_rep[0].fifoaddr_reg [0]),
        .O(\gen_rep[0].fifoaddr[0]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h55556AAAAAAA9555)) 
    \gen_rep[0].fifoaddr[1]_i_1__2 
       (.I0(\gen_rep[0].fifoaddr_reg [0]),
        .I1(ss_wr_awvalid_1),
        .I2(s_ready_i_reg_0),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(\FSM_onehot_state[3]_i_7__0_n_0 ),
        .I5(\gen_rep[0].fifoaddr_reg [1]),
        .O(\gen_rep[0].fifoaddr[1]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT5 #(
    .INIT(32'h57A8FE01)) 
    \gen_rep[0].fifoaddr[2]_i_1__2 
       (.I0(\gen_rep[0].fifoaddr_reg [0]),
        .I1(\FSM_onehot_state[3]_i_7__0_n_0 ),
        .I2(\FSM_onehot_state[3]_i_4__0_n_0 ),
        .I3(\gen_rep[0].fifoaddr_reg [2]),
        .I4(\gen_rep[0].fifoaddr_reg [1]),
        .O(\gen_rep[0].fifoaddr[2]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'hA6A60400AEAA0400)) 
    \gen_rep[0].fifoaddr[3]_i_1__0 
       (.I0(m_aready__1),
        .I1(s_axi_awvalid),
        .I2(m_ready_d),
        .I3(Q),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .I5(s_ready_i_reg_0),
        .O(sel));
  LUT6 #(
    .INIT(64'h57FFA800FFFE0001)) 
    \gen_rep[0].fifoaddr[3]_i_2__0 
       (.I0(\gen_rep[0].fifoaddr_reg [0]),
        .I1(\FSM_onehot_state[3]_i_7__0_n_0 ),
        .I2(\FSM_onehot_state[3]_i_4__0_n_0 ),
        .I3(\gen_rep[0].fifoaddr_reg [1]),
        .I4(\gen_rep[0].fifoaddr_reg [3]),
        .I5(\gen_rep[0].fifoaddr_reg [2]),
        .O(\gen_rep[0].fifoaddr[3]_i_2__0_n_0 ));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[0] 
       (.C(aclk),
        .CE(sel),
        .D(\gen_rep[0].fifoaddr[0]_i_1__2_n_0 ),
        .Q(\gen_rep[0].fifoaddr_reg [0]),
        .S(\gen_rep[0].fifoaddr_reg[3]_0 ));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[1] 
       (.C(aclk),
        .CE(sel),
        .D(\gen_rep[0].fifoaddr[1]_i_1__2_n_0 ),
        .Q(\gen_rep[0].fifoaddr_reg [1]),
        .S(\gen_rep[0].fifoaddr_reg[3]_0 ));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[2] 
       (.C(aclk),
        .CE(sel),
        .D(\gen_rep[0].fifoaddr[2]_i_1__2_n_0 ),
        .Q(\gen_rep[0].fifoaddr_reg [2]),
        .S(\gen_rep[0].fifoaddr_reg[3]_0 ));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[3] 
       (.C(aclk),
        .CE(sel),
        .D(\gen_rep[0].fifoaddr[3]_i_2__0_n_0 ),
        .Q(\gen_rep[0].fifoaddr_reg [3]),
        .S(\gen_rep[0].fifoaddr_reg[3]_0 ));
  audio_AXI_DMA_xbar_1_axi_data_fifo_v2_1_26_ndeep_srl__parameterized0 \gen_srls[0].gen_rep[0].srl_nx1 
       (.Q(\gen_rep[0].fifoaddr_reg ),
        .aclk(aclk),
        .\gen_primitive_shifter.gen_srls[0].srl_inst_0 (\gen_srls[0].gen_rep[0].srl_nx1_n_0 ),
        .push(push),
        .s_axi_awaddr(s_axi_awaddr),
        .st_aa_awtarget_enc_2(st_aa_awtarget_enc_2),
        .\storage_data1_reg[0] (\FSM_onehot_state_reg_n_0_[0] ));
  audio_AXI_DMA_xbar_1_axi_data_fifo_v2_1_26_ndeep_srl__parameterized0_5 \gen_srls[0].gen_rep[1].srl_nx1 
       (.Q(\gen_rep[0].fifoaddr_reg ),
        .aclk(aclk),
        .\gen_primitive_shifter.gen_srls[0].srl_inst_0 (\gen_srls[0].gen_rep[1].srl_nx1_n_3 ),
        .\gen_primitive_shifter.gen_srls[0].srl_inst_1 (\gen_primitive_shifter.gen_srls[0].srl_inst ),
        .\gen_primitive_shifter.gen_srls[0].srl_inst_2 (s_ready_i_reg_0),
        .\gen_primitive_shifter.gen_srls[0].srl_inst_3 ({Q,\FSM_onehot_state_reg_n_0_[0] }),
        .m_aready0__1(m_aready0__1),
        .m_aready__1(m_aready__1),
        .m_avalid(m_avalid),
        .m_avalid_0(m_avalid_0),
        .m_avalid_1(m_avalid_1),
        .m_avalid_2(m_avalid_2),
        .m_axi_wready(m_axi_wready),
        .m_ready_d(m_ready_d),
        .m_select_enc(m_select_enc),
        .m_select_enc_1(m_select_enc_1),
        .m_select_enc_3(m_select_enc_3),
        .mi_wready_2(mi_wready_2),
        .push(push),
        .s_axi_awaddr(s_axi_awaddr[3:1]),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wvalid(s_axi_wvalid),
        .storage_data1(storage_data1));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000080)) 
    \m_axi_wvalid[0]_INST_0 
       (.I0(p_0_in),
        .I1(m_avalid_2),
        .I2(m_select_enc_3),
        .I3(storage_data1[1]),
        .I4(storage_data1[0]),
        .I5(m_axi_wvalid_0_sn_1),
        .O(m_axi_wvalid[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00800000)) 
    \m_axi_wvalid[1]_INST_0 
       (.I0(p_0_in),
        .I1(m_avalid_0),
        .I2(m_select_enc_1),
        .I3(storage_data1[1]),
        .I4(storage_data1[0]),
        .I5(m_axi_wvalid_1_sn_1),
        .O(m_axi_wvalid[1]));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_wvalid[1]_INST_0_i_1 
       (.I0(m_avalid_1),
        .I1(s_axi_wvalid),
        .O(p_0_in));
  LUT6 #(
    .INIT(64'hFFFFFFFF5500550C)) 
    m_valid_i_i_1__3
       (.I0(in3),
        .I1(\FSM_onehot_state[3]_i_5__0_n_0 ),
        .I2(\FSM_onehot_state[3]_i_4__0_n_0 ),
        .I3(\FSM_onehot_state[3]_i_7__0_n_0 ),
        .I4(\gen_rep[0].fifoaddr_reg [0]),
        .I5(storage_data1210_out),
        .O(m_valid_i_i_1__3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(aclk),
        .CE(m_valid_i),
        .D(m_valid_i_i_1__3_n_0),
        .Q(m_avalid_1),
        .R(SS));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_wready[1]_INST_0 
       (.I0(m_avalid_1),
        .I1(m_aready0__1),
        .O(s_axi_wready));
  LUT6 #(
    .INIT(64'hFFFFABFFFFFFAAAA)) 
    s_ready_i_i_1__0
       (.I0(SS),
        .I1(\FSM_onehot_state[3]_i_4__0_n_0 ),
        .I2(\FSM_onehot_state[3]_i_7__0_n_0 ),
        .I3(s_ready_i_i_2__0_n_0),
        .I4(storage_data11),
        .I5(s_ready_i_reg_0),
        .O(s_ready_i_i_1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    s_ready_i_i_2__0
       (.I0(\gen_rep[0].fifoaddr_reg [0]),
        .I1(\gen_rep[0].fifoaddr_reg [1]),
        .I2(\gen_rep[0].fifoaddr_reg [3]),
        .I3(\gen_rep[0].fifoaddr_reg [2]),
        .O(s_ready_i_i_2__0_n_0));
  FDRE s_ready_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_i_i_1__0_n_0),
        .Q(s_ready_i_reg_0),
        .R(\gen_rep[0].fifoaddr_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hAAAFABAFAAA0A8A0)) 
    \storage_data1[0]_i_1__0 
       (.I0(\gen_srls[0].gen_rep[0].srl_nx1_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(storage_data1210_out),
        .I3(m_aready__1),
        .I4(\storage_data1_reg[0]_0 ),
        .I5(storage_data1[0]),
        .O(\storage_data1[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAFABAFAAA0A8A0)) 
    \storage_data1[1]_i_1__0 
       (.I0(\gen_srls[0].gen_rep[1].srl_nx1_n_3 ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(storage_data1210_out),
        .I3(m_aready__1),
        .I4(\storage_data1_reg[0]_0 ),
        .I5(storage_data1[1]),
        .O(\storage_data1[1]_i_1__0_n_0 ));
  FDRE \storage_data1_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\storage_data1[0]_i_1__0_n_0 ),
        .Q(storage_data1[0]),
        .R(1'b0));
  FDRE \storage_data1_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\storage_data1[1]_i_1__0_n_0 ),
        .Q(storage_data1[1]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_26_axic_reg_srl_fifo" *) 
module audio_AXI_DMA_xbar_1_axi_data_fifo_v2_1_26_axic_reg_srl_fifo_6
   (s_ready_i_reg_0,
    Q,
    s_axi_wready,
    \storage_data1_reg[1]_0 ,
    \storage_data1_reg[0]_0 ,
    \storage_data1_reg[0]_1 ,
    st_aa_awtarget_enc_0,
    aclk,
    \gen_primitive_shifter.gen_srls[0].srl_inst ,
    areset_d1,
    SS,
    s_axi_awaddr,
    ss_wr_awvalid_0,
    s_axi_wlast,
    s_axi_wvalid,
    m_ready_d,
    s_axi_awvalid,
    m_avalid,
    m_axi_wready,
    m_select_enc,
    m_avalid_0,
    mi_wready_2,
    m_select_enc_1,
    m_select_enc_2,
    m_avalid_3,
    \storage_data1_reg[0]_2 );
  output s_ready_i_reg_0;
  output [0:0]Q;
  output [0:0]s_axi_wready;
  output \storage_data1_reg[1]_0 ;
  output \storage_data1_reg[0]_0 ;
  output \storage_data1_reg[0]_1 ;
  input [0:0]st_aa_awtarget_enc_0;
  input aclk;
  input \gen_primitive_shifter.gen_srls[0].srl_inst ;
  input areset_d1;
  input [0:0]SS;
  input [3:0]s_axi_awaddr;
  input ss_wr_awvalid_0;
  input [0:0]s_axi_wlast;
  input [0:0]s_axi_wvalid;
  input [0:0]m_ready_d;
  input [0:0]s_axi_awvalid;
  input m_avalid;
  input [1:0]m_axi_wready;
  input m_select_enc;
  input m_avalid_0;
  input mi_wready_2;
  input m_select_enc_1;
  input m_select_enc_2;
  input m_avalid_3;
  input \storage_data1_reg[0]_2 ;

  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_2__3_n_0 ;
  wire \FSM_onehot_state[3]_i_2_n_0 ;
  wire \FSM_onehot_state[3]_i_4_n_0 ;
  wire \FSM_onehot_state[3]_i_5_n_0 ;
  wire \FSM_onehot_state[3]_i_6_n_0 ;
  wire \FSM_onehot_state[3]_i_7_n_0 ;
  wire \FSM_onehot_state[3]_i_9_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire [0:0]Q;
  wire [0:0]SS;
  wire aclk;
  wire areset_d1;
  wire \gen_primitive_shifter.gen_srls[0].srl_inst ;
  wire \gen_rep[0].fifoaddr[0]_i_1__1_n_0 ;
  wire \gen_rep[0].fifoaddr[1]_i_1__1_n_0 ;
  wire \gen_rep[0].fifoaddr[2]_i_1__1_n_0 ;
  wire \gen_rep[0].fifoaddr[3]_i_2_n_0 ;
  wire [3:0]\gen_rep[0].fifoaddr_reg ;
  wire \gen_srls[0].gen_rep[0].srl_nx1_n_0 ;
  wire \gen_srls[0].gen_rep[1].srl_nx1_n_3 ;
  wire in3;
  wire m_aready0__1;
  wire m_aready__1;
  wire m_avalid;
  wire m_avalid_0;
  wire m_avalid_1;
  wire m_avalid_3;
  wire [1:0]m_axi_wready;
  wire [0:0]m_ready_d;
  wire m_select_enc;
  wire m_select_enc_1;
  wire m_select_enc_2;
  wire m_valid_i;
  wire m_valid_i_i_1_n_0;
  wire mi_wready_2;
  wire p_9_in;
  wire push;
  wire [3:0]s_axi_awaddr;
  wire [0:0]s_axi_awvalid;
  wire [0:0]s_axi_wlast;
  wire [0:0]s_axi_wready;
  wire [0:0]s_axi_wvalid;
  wire s_ready_i_i_1_n_0;
  wire s_ready_i_i_2_n_0;
  wire s_ready_i_reg_0;
  wire sel;
  wire ss_wr_awvalid_0;
  wire [0:0]st_aa_awtarget_enc_0;
  wire [1:0]storage_data1;
  wire storage_data11;
  wire storage_data1210_out__0;
  wire \storage_data1[0]_i_1_n_0 ;
  wire \storage_data1[1]_i_1_n_0 ;
  wire \storage_data1_reg[0]_0 ;
  wire \storage_data1_reg[0]_1 ;
  wire \storage_data1_reg[0]_2 ;
  wire \storage_data1_reg[1]_0 ;

  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(Q),
        .I1(in3),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAABAAAAAAAAAAAA)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(storage_data1210_out__0),
        .I1(\gen_rep[0].fifoaddr_reg [0]),
        .I2(\FSM_onehot_state[3]_i_7_n_0 ),
        .I3(\FSM_onehot_state[3]_i_4_n_0 ),
        .I4(\FSM_onehot_state[1]_i_2__3_n_0 ),
        .I5(storage_data11),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \FSM_onehot_state[1]_i_2__3 
       (.I0(\gen_rep[0].fifoaddr_reg [2]),
        .I1(\gen_rep[0].fifoaddr_reg [1]),
        .I2(\gen_rep[0].fifoaddr_reg [3]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\FSM_onehot_state[1]_i_2__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \FSM_onehot_state[1]_i_3 
       (.I0(m_aready0__1),
        .I1(s_axi_wvalid),
        .I2(m_avalid_1),
        .I3(s_axi_wlast),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .O(storage_data11));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFABAA)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(storage_data1210_out__0),
        .I1(\gen_rep[0].fifoaddr_reg [0]),
        .I2(\FSM_onehot_state[3]_i_4_n_0 ),
        .I3(\FSM_onehot_state[3]_i_5_n_0 ),
        .I4(\FSM_onehot_state[3]_i_6_n_0 ),
        .I5(\FSM_onehot_state[3]_i_7_n_0 ),
        .O(m_valid_i));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[3]_i_2 
       (.I0(Q),
        .I1(in3),
        .O(\FSM_onehot_state[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \FSM_onehot_state[3]_i_3 
       (.I0(p_9_in),
        .I1(m_ready_d),
        .I2(s_axi_awvalid),
        .O(storage_data1210_out__0));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \FSM_onehot_state[3]_i_4 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(s_ready_i_reg_0),
        .I2(m_ready_d),
        .I3(s_axi_awvalid),
        .O(\FSM_onehot_state[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \FSM_onehot_state[3]_i_5 
       (.I0(\gen_rep[0].fifoaddr_reg [3]),
        .I1(\gen_rep[0].fifoaddr_reg [1]),
        .I2(\gen_rep[0].fifoaddr_reg [2]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(\FSM_onehot_state[3]_i_9_n_0 ),
        .I5(m_aready0__1),
        .O(\FSM_onehot_state[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \FSM_onehot_state[3]_i_6 
       (.I0(ss_wr_awvalid_0),
        .I1(s_axi_wlast),
        .I2(m_avalid_1),
        .I3(s_axi_wvalid),
        .I4(m_aready0__1),
        .I5(Q),
        .O(\FSM_onehot_state[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF000000000000)) 
    \FSM_onehot_state[3]_i_7 
       (.I0(s_axi_wlast),
        .I1(m_avalid_1),
        .I2(s_axi_wvalid),
        .I3(m_aready0__1),
        .I4(ss_wr_awvalid_0),
        .I5(Q),
        .O(\FSM_onehot_state[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8000000080008000)) 
    \FSM_onehot_state[3]_i_8 
       (.I0(m_aready0__1),
        .I1(s_axi_wvalid),
        .I2(m_avalid_1),
        .I3(s_axi_wlast),
        .I4(m_ready_d),
        .I5(s_axi_awvalid),
        .O(in3));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_onehot_state[3]_i_9 
       (.I0(s_axi_wvalid),
        .I1(m_avalid_1),
        .I2(s_axi_wlast),
        .O(\FSM_onehot_state[3]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[0] 
       (.C(aclk),
        .CE(m_valid_i),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .R(areset_d1));
  (* FSM_ENCODED_STATES = "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(aclk),
        .CE(m_valid_i),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(Q),
        .R(areset_d1));
  (* FSM_ENCODED_STATES = "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[3] 
       (.C(aclk),
        .CE(m_valid_i),
        .D(\FSM_onehot_state[3]_i_2_n_0 ),
        .Q(p_9_in),
        .S(areset_d1));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_4 
       (.I0(storage_data1[1]),
        .I1(storage_data1[0]),
        .I2(m_avalid_0),
        .I3(m_select_enc_1),
        .I4(s_axi_wvalid),
        .I5(m_avalid_1),
        .O(\storage_data1_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \gen_rep[0].fifoaddr[0]_i_1__1 
       (.I0(\gen_rep[0].fifoaddr_reg [0]),
        .O(\gen_rep[0].fifoaddr[0]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h55556AAAAAAA9555)) 
    \gen_rep[0].fifoaddr[1]_i_1__1 
       (.I0(\gen_rep[0].fifoaddr_reg [0]),
        .I1(ss_wr_awvalid_0),
        .I2(s_ready_i_reg_0),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(\FSM_onehot_state[3]_i_7_n_0 ),
        .I5(\gen_rep[0].fifoaddr_reg [1]),
        .O(\gen_rep[0].fifoaddr[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT5 #(
    .INIT(32'h57A8FE01)) 
    \gen_rep[0].fifoaddr[2]_i_1__1 
       (.I0(\gen_rep[0].fifoaddr_reg [0]),
        .I1(\FSM_onehot_state[3]_i_7_n_0 ),
        .I2(\FSM_onehot_state[3]_i_4_n_0 ),
        .I3(\gen_rep[0].fifoaddr_reg [2]),
        .I4(\gen_rep[0].fifoaddr_reg [1]),
        .O(\gen_rep[0].fifoaddr[2]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hA6A60400AEAA0400)) 
    \gen_rep[0].fifoaddr[3]_i_1 
       (.I0(m_aready__1),
        .I1(s_axi_awvalid),
        .I2(m_ready_d),
        .I3(Q),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .I5(s_ready_i_reg_0),
        .O(sel));
  LUT6 #(
    .INIT(64'h57FFA800FFFE0001)) 
    \gen_rep[0].fifoaddr[3]_i_2 
       (.I0(\gen_rep[0].fifoaddr_reg [0]),
        .I1(\FSM_onehot_state[3]_i_7_n_0 ),
        .I2(\FSM_onehot_state[3]_i_4_n_0 ),
        .I3(\gen_rep[0].fifoaddr_reg [1]),
        .I4(\gen_rep[0].fifoaddr_reg [3]),
        .I5(\gen_rep[0].fifoaddr_reg [2]),
        .O(\gen_rep[0].fifoaddr[3]_i_2_n_0 ));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[0] 
       (.C(aclk),
        .CE(sel),
        .D(\gen_rep[0].fifoaddr[0]_i_1__1_n_0 ),
        .Q(\gen_rep[0].fifoaddr_reg [0]),
        .S(SS));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[1] 
       (.C(aclk),
        .CE(sel),
        .D(\gen_rep[0].fifoaddr[1]_i_1__1_n_0 ),
        .Q(\gen_rep[0].fifoaddr_reg [1]),
        .S(SS));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[2] 
       (.C(aclk),
        .CE(sel),
        .D(\gen_rep[0].fifoaddr[2]_i_1__1_n_0 ),
        .Q(\gen_rep[0].fifoaddr_reg [2]),
        .S(SS));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[3] 
       (.C(aclk),
        .CE(sel),
        .D(\gen_rep[0].fifoaddr[3]_i_2_n_0 ),
        .Q(\gen_rep[0].fifoaddr_reg [3]),
        .S(SS));
  audio_AXI_DMA_xbar_1_axi_data_fifo_v2_1_26_ndeep_srl__parameterized0_7 \gen_srls[0].gen_rep[0].srl_nx1 
       (.Q(\gen_rep[0].fifoaddr_reg ),
        .aclk(aclk),
        .\gen_primitive_shifter.gen_srls[0].srl_inst_0 (\gen_srls[0].gen_rep[0].srl_nx1_n_0 ),
        .push(push),
        .s_axi_awaddr(s_axi_awaddr),
        .st_aa_awtarget_enc_0(st_aa_awtarget_enc_0),
        .\storage_data1_reg[0] (\FSM_onehot_state_reg_n_0_[0] ));
  audio_AXI_DMA_xbar_1_axi_data_fifo_v2_1_26_ndeep_srl__parameterized0_8 \gen_srls[0].gen_rep[1].srl_nx1 
       (.Q(\gen_rep[0].fifoaddr_reg ),
        .aclk(aclk),
        .\gen_primitive_shifter.gen_srls[0].srl_inst_0 (\gen_srls[0].gen_rep[1].srl_nx1_n_3 ),
        .\gen_primitive_shifter.gen_srls[0].srl_inst_1 (\gen_primitive_shifter.gen_srls[0].srl_inst ),
        .\gen_primitive_shifter.gen_srls[0].srl_inst_2 (s_ready_i_reg_0),
        .\gen_primitive_shifter.gen_srls[0].srl_inst_3 ({Q,\FSM_onehot_state_reg_n_0_[0] }),
        .m_aready0__1(m_aready0__1),
        .m_aready__1(m_aready__1),
        .m_avalid(m_avalid),
        .m_avalid_0(m_avalid_0),
        .m_avalid_1(m_avalid_1),
        .m_avalid_3(m_avalid_3),
        .m_axi_wready(m_axi_wready),
        .m_ready_d(m_ready_d),
        .m_select_enc(m_select_enc),
        .m_select_enc_1(m_select_enc_1),
        .m_select_enc_2(m_select_enc_2),
        .mi_wready_2(mi_wready_2),
        .push(push),
        .s_axi_awaddr(s_axi_awaddr[3:1]),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wvalid(s_axi_wvalid),
        .storage_data1(storage_data1));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \m_axi_wvalid[0]_INST_0_i_1 
       (.I0(storage_data1[0]),
        .I1(storage_data1[1]),
        .I2(m_avalid_3),
        .I3(m_select_enc_2),
        .I4(s_axi_wvalid),
        .I5(m_avalid_1),
        .O(\storage_data1_reg[0]_1 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \m_axi_wvalid[1]_INST_0_i_2 
       (.I0(storage_data1[0]),
        .I1(storage_data1[1]),
        .I2(m_avalid),
        .I3(m_select_enc),
        .I4(s_axi_wvalid),
        .I5(m_avalid_1),
        .O(\storage_data1_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF5500550C)) 
    m_valid_i_i_1
       (.I0(in3),
        .I1(\FSM_onehot_state[3]_i_5_n_0 ),
        .I2(\FSM_onehot_state[3]_i_4_n_0 ),
        .I3(\FSM_onehot_state[3]_i_7_n_0 ),
        .I4(\gen_rep[0].fifoaddr_reg [0]),
        .I5(storage_data1210_out__0),
        .O(m_valid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(aclk),
        .CE(m_valid_i),
        .D(m_valid_i_i_1_n_0),
        .Q(m_avalid_1),
        .R(areset_d1));
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_wready[0]_INST_0 
       (.I0(m_avalid_1),
        .I1(m_aready0__1),
        .O(s_axi_wready));
  LUT6 #(
    .INIT(64'hFFFFABFFFFFFAAAA)) 
    s_ready_i_i_1
       (.I0(areset_d1),
        .I1(\FSM_onehot_state[3]_i_4_n_0 ),
        .I2(\FSM_onehot_state[3]_i_7_n_0 ),
        .I3(s_ready_i_i_2_n_0),
        .I4(storage_data11),
        .I5(s_ready_i_reg_0),
        .O(s_ready_i_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    s_ready_i_i_2
       (.I0(\gen_rep[0].fifoaddr_reg [0]),
        .I1(\gen_rep[0].fifoaddr_reg [1]),
        .I2(\gen_rep[0].fifoaddr_reg [3]),
        .I3(\gen_rep[0].fifoaddr_reg [2]),
        .O(s_ready_i_i_2_n_0));
  FDRE s_ready_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_i_i_1_n_0),
        .Q(s_ready_i_reg_0),
        .R(SS));
  LUT6 #(
    .INIT(64'hAAAFABAFAAA0A8A0)) 
    \storage_data1[0]_i_1 
       (.I0(\gen_srls[0].gen_rep[0].srl_nx1_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(storage_data1210_out__0),
        .I3(m_aready__1),
        .I4(\storage_data1_reg[0]_2 ),
        .I5(storage_data1[0]),
        .O(\storage_data1[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAFABAFAAA0A8A0)) 
    \storage_data1[1]_i_1 
       (.I0(\gen_srls[0].gen_rep[1].srl_nx1_n_3 ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(storage_data1210_out__0),
        .I3(m_aready__1),
        .I4(\storage_data1_reg[0]_2 ),
        .I5(storage_data1[1]),
        .O(\storage_data1[1]_i_1_n_0 ));
  FDRE \storage_data1_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\storage_data1[0]_i_1_n_0 ),
        .Q(storage_data1[0]),
        .R(1'b0));
  FDRE \storage_data1_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\storage_data1[1]_i_1_n_0 ),
        .Q(storage_data1[1]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_26_axic_reg_srl_fifo" *) 
module audio_AXI_DMA_xbar_1_axi_data_fifo_v2_1_26_axic_reg_srl_fifo__parameterized0
   (m_avalid,
    \storage_data1_reg[0]_0 ,
    \FSM_onehot_state_reg[3]_0 ,
    m_axi_wlast,
    m_axi_wstrb,
    m_axi_wdata,
    aa_wm_awgrant_enc,
    aclk,
    areset_d1,
    p_1_in,
    m_ready_d,
    Q,
    \FSM_onehot_state_reg[1]_0 ,
    sa_wm_awvalid__2,
    m_axi_wready,
    s_axi_wlast,
    m_axi_wvalid,
    s_axi_wstrb,
    s_axi_wdata,
    SS);
  output m_avalid;
  output \storage_data1_reg[0]_0 ;
  output [0:0]\FSM_onehot_state_reg[3]_0 ;
  output [0:0]m_axi_wlast;
  output [7:0]m_axi_wstrb;
  output [63:0]m_axi_wdata;
  input aa_wm_awgrant_enc;
  input aclk;
  input areset_d1;
  input p_1_in;
  input [0:0]m_ready_d;
  input [0:0]Q;
  input \FSM_onehot_state_reg[1]_0 ;
  input [0:0]sa_wm_awvalid__2;
  input [0:0]m_axi_wready;
  input [1:0]s_axi_wlast;
  input [0:0]m_axi_wvalid;
  input [15:0]s_axi_wstrb;
  input [127:0]s_axi_wdata;
  input [0:0]SS;

  wire \FSM_onehot_state[0]_i_1__2_n_0 ;
  wire \FSM_onehot_state[1]_i_1__1_n_0 ;
  wire \FSM_onehot_state[1]_i_3__1_n_0 ;
  wire \FSM_onehot_state[3]_i_2__2_n_0 ;
  wire \FSM_onehot_state[3]_i_3__1_n_0 ;
  wire \FSM_onehot_state_reg[1]_0 ;
  wire [0:0]\FSM_onehot_state_reg[3]_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire [0:0]Q;
  wire [0:0]SS;
  wire aa_wm_awgrant_enc;
  wire aclk;
  wire areset_d1;
  wire [2:0]fifoaddr;
  wire \gen_rep[0].fifoaddr[0]_i_1__0_n_0 ;
  wire \gen_rep[0].fifoaddr[1]_i_1__0_n_0 ;
  wire \gen_rep[0].fifoaddr[2]_i_1__0_n_0 ;
  wire \gen_rep[0].fifoaddr[2]_i_2_n_0 ;
  wire \gen_srls[0].gen_rep[0].srl_nx1_n_2 ;
  wire load_s1;
  wire m_aready__1;
  wire m_avalid;
  wire [63:0]m_axi_wdata;
  wire [0:0]m_axi_wlast;
  wire [0:0]m_axi_wready;
  wire [7:0]m_axi_wstrb;
  wire [0:0]m_axi_wvalid;
  wire [0:0]m_ready_d;
  wire m_valid_i;
  wire m_valid_i_i_1__1_n_0;
  wire p_0_in6_in;
  wire p_1_in;
  wire push;
  wire [127:0]s_axi_wdata;
  wire [1:0]s_axi_wlast;
  wire [15:0]s_axi_wstrb;
  wire [0:0]sa_wm_awvalid__2;
  wire \storage_data1_reg[0]_0 ;

  LUT5 #(
    .INIT(32'h57550000)) 
    \FSM_onehot_state[0]_i_1__2 
       (.I0(m_aready__1),
        .I1(p_1_in),
        .I2(m_ready_d),
        .I3(Q),
        .I4(p_0_in6_in),
        .O(\FSM_onehot_state[0]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F0F0F0F0F8)) 
    \FSM_onehot_state[1]_i_1__1 
       (.I0(m_aready__1),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg[1]_0 ),
        .I3(push),
        .I4(\FSM_onehot_state[1]_i_3__1_n_0 ),
        .I5(fifoaddr[2]),
        .O(\FSM_onehot_state[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[1]_i_3__1 
       (.I0(fifoaddr[1]),
        .I1(fifoaddr[0]),
        .O(\FSM_onehot_state[1]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFFAAFFC00000)) 
    \FSM_onehot_state[3]_i_1__1 
       (.I0(\FSM_onehot_state_reg[3]_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_state[3]_i_3__1_n_0 ),
        .I3(p_0_in6_in),
        .I4(m_aready__1),
        .I5(sa_wm_awvalid__2),
        .O(m_valid_i));
  LUT5 #(
    .INIT(32'hA8AA0000)) 
    \FSM_onehot_state[3]_i_2__2 
       (.I0(m_aready__1),
        .I1(p_1_in),
        .I2(m_ready_d),
        .I3(Q),
        .I4(p_0_in6_in),
        .O(\FSM_onehot_state[3]_i_2__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \FSM_onehot_state[3]_i_3__1 
       (.I0(fifoaddr[2]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(fifoaddr[0]),
        .I3(fifoaddr[1]),
        .O(\FSM_onehot_state[3]_i_3__1_n_0 ));
  (* FSM_ENCODED_STATES = "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[0] 
       (.C(aclk),
        .CE(m_valid_i),
        .D(\FSM_onehot_state[0]_i_1__2_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .R(areset_d1));
  (* FSM_ENCODED_STATES = "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(aclk),
        .CE(m_valid_i),
        .D(\FSM_onehot_state[1]_i_1__1_n_0 ),
        .Q(p_0_in6_in),
        .R(areset_d1));
  (* FSM_ENCODED_STATES = "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[3] 
       (.C(aclk),
        .CE(m_valid_i),
        .D(\FSM_onehot_state[3]_i_2__2_n_0 ),
        .Q(\FSM_onehot_state_reg[3]_0 ),
        .S(areset_d1));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gen_rep[0].fifoaddr[0]_i_1__0 
       (.I0(\gen_rep[0].fifoaddr[2]_i_2_n_0 ),
        .I1(fifoaddr[0]),
        .O(\gen_rep[0].fifoaddr[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hEF77EF7F10881080)) 
    \gen_rep[0].fifoaddr[1]_i_1__0 
       (.I0(fifoaddr[0]),
        .I1(sa_wm_awvalid__2),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(m_aready__1),
        .I4(p_0_in6_in),
        .I5(fifoaddr[1]),
        .O(\gen_rep[0].fifoaddr[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT5 #(
    .INIT(32'h7EFF8100)) 
    \gen_rep[0].fifoaddr[2]_i_1__0 
       (.I0(fifoaddr[1]),
        .I1(fifoaddr[0]),
        .I2(push),
        .I3(\gen_rep[0].fifoaddr[2]_i_2_n_0 ),
        .I4(fifoaddr[2]),
        .O(\gen_rep[0].fifoaddr[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hEF001010EF001000)) 
    \gen_rep[0].fifoaddr[2]_i_2 
       (.I0(p_1_in),
        .I1(m_ready_d),
        .I2(Q),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(m_aready__1),
        .I5(p_0_in6_in),
        .O(\gen_rep[0].fifoaddr[2]_i_2_n_0 ));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_rep[0].fifoaddr[0]_i_1__0_n_0 ),
        .Q(fifoaddr[0]),
        .S(SS));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_rep[0].fifoaddr[1]_i_1__0_n_0 ),
        .Q(fifoaddr[1]),
        .S(SS));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_rep[0].fifoaddr[2]_i_1__0_n_0 ),
        .Q(fifoaddr[2]),
        .S(SS));
  audio_AXI_DMA_xbar_1_axi_data_fifo_v2_1_26_ndeep_srl__parameterized1 \gen_srls[0].gen_rep[0].srl_nx1 
       (.Q({p_0_in6_in,\FSM_onehot_state_reg_n_0_[0] }),
        .aa_wm_awgrant_enc(aa_wm_awgrant_enc),
        .aclk(aclk),
        .fifoaddr(fifoaddr),
        .\gen_primitive_shifter.gen_srls[0].srl_inst_0 (\gen_srls[0].gen_rep[0].srl_nx1_n_2 ),
        .\gen_primitive_shifter.gen_srls[0].srl_inst_1 (Q),
        .load_s1(load_s1),
        .m_aready__1(m_aready__1),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .m_ready_d(m_ready_d),
        .p_1_in(p_1_in),
        .push(push),
        .s_axi_wlast(s_axi_wlast),
        .\storage_data1_reg[0] (\storage_data1_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[100]_INST_0 
       (.I0(s_axi_wdata[100]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[36]),
        .O(m_axi_wdata[36]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[101]_INST_0 
       (.I0(s_axi_wdata[101]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[37]),
        .O(m_axi_wdata[37]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[102]_INST_0 
       (.I0(s_axi_wdata[102]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[38]),
        .O(m_axi_wdata[38]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[103]_INST_0 
       (.I0(s_axi_wdata[103]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[39]),
        .O(m_axi_wdata[39]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[104]_INST_0 
       (.I0(s_axi_wdata[104]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[40]),
        .O(m_axi_wdata[40]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[105]_INST_0 
       (.I0(s_axi_wdata[105]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[41]),
        .O(m_axi_wdata[41]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[106]_INST_0 
       (.I0(s_axi_wdata[106]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[42]),
        .O(m_axi_wdata[42]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[107]_INST_0 
       (.I0(s_axi_wdata[107]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[43]),
        .O(m_axi_wdata[43]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[108]_INST_0 
       (.I0(s_axi_wdata[108]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[44]),
        .O(m_axi_wdata[44]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[109]_INST_0 
       (.I0(s_axi_wdata[109]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[45]),
        .O(m_axi_wdata[45]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[110]_INST_0 
       (.I0(s_axi_wdata[110]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[46]),
        .O(m_axi_wdata[46]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[111]_INST_0 
       (.I0(s_axi_wdata[111]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[47]),
        .O(m_axi_wdata[47]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[112]_INST_0 
       (.I0(s_axi_wdata[112]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[48]),
        .O(m_axi_wdata[48]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[113]_INST_0 
       (.I0(s_axi_wdata[113]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[49]),
        .O(m_axi_wdata[49]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[114]_INST_0 
       (.I0(s_axi_wdata[114]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[50]),
        .O(m_axi_wdata[50]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[115]_INST_0 
       (.I0(s_axi_wdata[115]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[51]),
        .O(m_axi_wdata[51]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[116]_INST_0 
       (.I0(s_axi_wdata[116]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[52]),
        .O(m_axi_wdata[52]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[117]_INST_0 
       (.I0(s_axi_wdata[117]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[53]),
        .O(m_axi_wdata[53]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[118]_INST_0 
       (.I0(s_axi_wdata[118]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[54]),
        .O(m_axi_wdata[54]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[119]_INST_0 
       (.I0(s_axi_wdata[119]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[55]),
        .O(m_axi_wdata[55]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[120]_INST_0 
       (.I0(s_axi_wdata[120]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[56]),
        .O(m_axi_wdata[56]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[121]_INST_0 
       (.I0(s_axi_wdata[121]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[57]),
        .O(m_axi_wdata[57]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[122]_INST_0 
       (.I0(s_axi_wdata[122]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[58]),
        .O(m_axi_wdata[58]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[123]_INST_0 
       (.I0(s_axi_wdata[123]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[59]),
        .O(m_axi_wdata[59]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[124]_INST_0 
       (.I0(s_axi_wdata[124]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[60]),
        .O(m_axi_wdata[60]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[125]_INST_0 
       (.I0(s_axi_wdata[125]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[61]),
        .O(m_axi_wdata[61]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[126]_INST_0 
       (.I0(s_axi_wdata[126]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[62]),
        .O(m_axi_wdata[62]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[127]_INST_0 
       (.I0(s_axi_wdata[127]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[63]),
        .O(m_axi_wdata[63]));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[64]_INST_0 
       (.I0(s_axi_wdata[64]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[0]),
        .O(m_axi_wdata[0]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[65]_INST_0 
       (.I0(s_axi_wdata[65]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[1]),
        .O(m_axi_wdata[1]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[66]_INST_0 
       (.I0(s_axi_wdata[66]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[2]),
        .O(m_axi_wdata[2]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[67]_INST_0 
       (.I0(s_axi_wdata[67]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[3]),
        .O(m_axi_wdata[3]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[68]_INST_0 
       (.I0(s_axi_wdata[68]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[4]),
        .O(m_axi_wdata[4]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[69]_INST_0 
       (.I0(s_axi_wdata[69]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[5]),
        .O(m_axi_wdata[5]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[70]_INST_0 
       (.I0(s_axi_wdata[70]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[6]),
        .O(m_axi_wdata[6]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[71]_INST_0 
       (.I0(s_axi_wdata[71]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[7]),
        .O(m_axi_wdata[7]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[72]_INST_0 
       (.I0(s_axi_wdata[72]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[8]),
        .O(m_axi_wdata[8]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[73]_INST_0 
       (.I0(s_axi_wdata[73]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[9]),
        .O(m_axi_wdata[9]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[74]_INST_0 
       (.I0(s_axi_wdata[74]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[10]),
        .O(m_axi_wdata[10]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[75]_INST_0 
       (.I0(s_axi_wdata[75]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[11]),
        .O(m_axi_wdata[11]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[76]_INST_0 
       (.I0(s_axi_wdata[76]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[12]),
        .O(m_axi_wdata[12]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[77]_INST_0 
       (.I0(s_axi_wdata[77]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[13]),
        .O(m_axi_wdata[13]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[78]_INST_0 
       (.I0(s_axi_wdata[78]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[14]),
        .O(m_axi_wdata[14]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[79]_INST_0 
       (.I0(s_axi_wdata[79]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[15]),
        .O(m_axi_wdata[15]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[80]_INST_0 
       (.I0(s_axi_wdata[80]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[16]),
        .O(m_axi_wdata[16]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[81]_INST_0 
       (.I0(s_axi_wdata[81]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[17]),
        .O(m_axi_wdata[17]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[82]_INST_0 
       (.I0(s_axi_wdata[82]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[18]),
        .O(m_axi_wdata[18]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[83]_INST_0 
       (.I0(s_axi_wdata[83]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[19]),
        .O(m_axi_wdata[19]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[84]_INST_0 
       (.I0(s_axi_wdata[84]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[20]),
        .O(m_axi_wdata[20]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[85]_INST_0 
       (.I0(s_axi_wdata[85]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[21]),
        .O(m_axi_wdata[21]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[86]_INST_0 
       (.I0(s_axi_wdata[86]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[22]),
        .O(m_axi_wdata[22]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[87]_INST_0 
       (.I0(s_axi_wdata[87]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[23]),
        .O(m_axi_wdata[23]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[88]_INST_0 
       (.I0(s_axi_wdata[88]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[24]),
        .O(m_axi_wdata[24]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[89]_INST_0 
       (.I0(s_axi_wdata[89]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[25]),
        .O(m_axi_wdata[25]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[90]_INST_0 
       (.I0(s_axi_wdata[90]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[26]),
        .O(m_axi_wdata[26]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[91]_INST_0 
       (.I0(s_axi_wdata[91]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[27]),
        .O(m_axi_wdata[27]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[92]_INST_0 
       (.I0(s_axi_wdata[92]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[28]),
        .O(m_axi_wdata[28]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[93]_INST_0 
       (.I0(s_axi_wdata[93]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[29]),
        .O(m_axi_wdata[29]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[94]_INST_0 
       (.I0(s_axi_wdata[94]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[30]),
        .O(m_axi_wdata[30]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[95]_INST_0 
       (.I0(s_axi_wdata[95]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[31]),
        .O(m_axi_wdata[31]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[96]_INST_0 
       (.I0(s_axi_wdata[96]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[32]),
        .O(m_axi_wdata[32]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[97]_INST_0 
       (.I0(s_axi_wdata[97]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[33]),
        .O(m_axi_wdata[33]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[98]_INST_0 
       (.I0(s_axi_wdata[98]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[34]),
        .O(m_axi_wdata[34]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[99]_INST_0 
       (.I0(s_axi_wdata[99]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[35]),
        .O(m_axi_wdata[35]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wlast[1]_INST_0 
       (.I0(s_axi_wlast[1]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wlast[0]),
        .O(m_axi_wlast));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wstrb[10]_INST_0 
       (.I0(s_axi_wstrb[10]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wstrb[2]),
        .O(m_axi_wstrb[2]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wstrb[11]_INST_0 
       (.I0(s_axi_wstrb[11]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wstrb[3]),
        .O(m_axi_wstrb[3]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wstrb[12]_INST_0 
       (.I0(s_axi_wstrb[12]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wstrb[4]),
        .O(m_axi_wstrb[4]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wstrb[13]_INST_0 
       (.I0(s_axi_wstrb[13]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wstrb[5]),
        .O(m_axi_wstrb[5]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wstrb[14]_INST_0 
       (.I0(s_axi_wstrb[14]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wstrb[6]),
        .O(m_axi_wstrb[6]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wstrb[15]_INST_0 
       (.I0(s_axi_wstrb[15]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wstrb[7]),
        .O(m_axi_wstrb[7]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wstrb[8]_INST_0 
       (.I0(s_axi_wstrb[8]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wstrb[0]),
        .O(m_axi_wstrb[0]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wstrb[9]_INST_0 
       (.I0(s_axi_wstrb[9]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wstrb[1]),
        .O(m_axi_wstrb[1]));
  LUT6 #(
    .INIT(64'hECCCECCC20CC2000)) 
    m_valid_i_i_1__1
       (.I0(\FSM_onehot_state[3]_i_3__1_n_0 ),
        .I1(sa_wm_awvalid__2),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(m_aready__1),
        .I4(p_0_in6_in),
        .I5(\FSM_onehot_state_reg[3]_0 ),
        .O(m_valid_i_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(aclk),
        .CE(m_valid_i),
        .D(m_valid_i_i_1__1_n_0),
        .Q(m_avalid),
        .R(areset_d1));
  LUT5 #(
    .INIT(32'hFCA0ECA0)) 
    \storage_data1[0]_i_2__1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg[3]_0 ),
        .I2(m_aready__1),
        .I3(sa_wm_awvalid__2),
        .I4(p_0_in6_in),
        .O(load_s1));
  FDRE \storage_data1_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_srls[0].gen_rep[0].srl_nx1_n_2 ),
        .Q(\storage_data1_reg[0]_0 ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_26_axic_reg_srl_fifo" *) 
module audio_AXI_DMA_xbar_1_axi_data_fifo_v2_1_26_axic_reg_srl_fifo__parameterized0_11
   (m_avalid,
    \storage_data1_reg[0]_0 ,
    \FSM_onehot_state_reg[3]_0 ,
    m_axi_wlast,
    m_axi_wstrb,
    m_axi_wdata,
    aa_wm_awgrant_enc,
    aclk,
    areset_d1,
    p_1_in,
    m_ready_d,
    Q,
    \FSM_onehot_state_reg[1]_0 ,
    sa_wm_awvalid__2,
    m_axi_wready,
    s_axi_wlast,
    m_axi_wvalid,
    s_axi_wstrb,
    s_axi_wdata,
    SS);
  output m_avalid;
  output \storage_data1_reg[0]_0 ;
  output [0:0]\FSM_onehot_state_reg[3]_0 ;
  output [0:0]m_axi_wlast;
  output [7:0]m_axi_wstrb;
  output [63:0]m_axi_wdata;
  input aa_wm_awgrant_enc;
  input aclk;
  input areset_d1;
  input p_1_in;
  input [0:0]m_ready_d;
  input [0:0]Q;
  input \FSM_onehot_state_reg[1]_0 ;
  input [0:0]sa_wm_awvalid__2;
  input [0:0]m_axi_wready;
  input [1:0]s_axi_wlast;
  input [0:0]m_axi_wvalid;
  input [15:0]s_axi_wstrb;
  input [127:0]s_axi_wdata;
  input [0:0]SS;

  wire \FSM_onehot_state[0]_i_1__3_n_0 ;
  wire \FSM_onehot_state[1]_i_1__2_n_0 ;
  wire \FSM_onehot_state[1]_i_3__2_n_0 ;
  wire \FSM_onehot_state[3]_i_2__3_n_0 ;
  wire \FSM_onehot_state[3]_i_3__2_n_0 ;
  wire \FSM_onehot_state_reg[1]_0 ;
  wire [0:0]\FSM_onehot_state_reg[3]_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire [0:0]Q;
  wire [0:0]SS;
  wire aa_wm_awgrant_enc;
  wire aclk;
  wire areset_d1;
  wire [2:0]fifoaddr;
  wire \gen_rep[0].fifoaddr[0]_i_1_n_0 ;
  wire \gen_rep[0].fifoaddr[1]_i_1_n_0 ;
  wire \gen_rep[0].fifoaddr[2]_i_1_n_0 ;
  wire \gen_rep[0].fifoaddr[2]_i_2__0_n_0 ;
  wire \gen_srls[0].gen_rep[0].srl_nx1_n_2 ;
  wire load_s1;
  wire m_aready__1;
  wire m_avalid;
  wire [63:0]m_axi_wdata;
  wire [0:0]m_axi_wlast;
  wire [0:0]m_axi_wready;
  wire [7:0]m_axi_wstrb;
  wire [0:0]m_axi_wvalid;
  wire [0:0]m_ready_d;
  wire m_valid_i;
  wire m_valid_i_i_1__2_n_0;
  wire p_0_in6_in;
  wire p_1_in;
  wire push;
  wire [127:0]s_axi_wdata;
  wire [1:0]s_axi_wlast;
  wire [15:0]s_axi_wstrb;
  wire [0:0]sa_wm_awvalid__2;
  wire \storage_data1_reg[0]_0 ;

  LUT5 #(
    .INIT(32'h57550000)) 
    \FSM_onehot_state[0]_i_1__3 
       (.I0(m_aready__1),
        .I1(p_1_in),
        .I2(m_ready_d),
        .I3(Q),
        .I4(p_0_in6_in),
        .O(\FSM_onehot_state[0]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F0F0F0F0F8)) 
    \FSM_onehot_state[1]_i_1__2 
       (.I0(m_aready__1),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg[1]_0 ),
        .I3(push),
        .I4(\FSM_onehot_state[1]_i_3__2_n_0 ),
        .I5(fifoaddr[2]),
        .O(\FSM_onehot_state[1]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[1]_i_3__2 
       (.I0(fifoaddr[1]),
        .I1(fifoaddr[0]),
        .O(\FSM_onehot_state[1]_i_3__2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFFAAFFC00000)) 
    \FSM_onehot_state[3]_i_1__2 
       (.I0(\FSM_onehot_state_reg[3]_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_state[3]_i_3__2_n_0 ),
        .I3(p_0_in6_in),
        .I4(m_aready__1),
        .I5(sa_wm_awvalid__2),
        .O(m_valid_i));
  LUT5 #(
    .INIT(32'hA8AA0000)) 
    \FSM_onehot_state[3]_i_2__3 
       (.I0(m_aready__1),
        .I1(p_1_in),
        .I2(m_ready_d),
        .I3(Q),
        .I4(p_0_in6_in),
        .O(\FSM_onehot_state[3]_i_2__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \FSM_onehot_state[3]_i_3__2 
       (.I0(fifoaddr[2]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(fifoaddr[0]),
        .I3(fifoaddr[1]),
        .O(\FSM_onehot_state[3]_i_3__2_n_0 ));
  (* FSM_ENCODED_STATES = "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[0] 
       (.C(aclk),
        .CE(m_valid_i),
        .D(\FSM_onehot_state[0]_i_1__3_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .R(areset_d1));
  (* FSM_ENCODED_STATES = "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(aclk),
        .CE(m_valid_i),
        .D(\FSM_onehot_state[1]_i_1__2_n_0 ),
        .Q(p_0_in6_in),
        .R(areset_d1));
  (* FSM_ENCODED_STATES = "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[3] 
       (.C(aclk),
        .CE(m_valid_i),
        .D(\FSM_onehot_state[3]_i_2__3_n_0 ),
        .Q(\FSM_onehot_state_reg[3]_0 ),
        .S(areset_d1));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gen_rep[0].fifoaddr[0]_i_1 
       (.I0(\gen_rep[0].fifoaddr[2]_i_2__0_n_0 ),
        .I1(fifoaddr[0]),
        .O(\gen_rep[0].fifoaddr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEF77EF7F10881080)) 
    \gen_rep[0].fifoaddr[1]_i_1 
       (.I0(fifoaddr[0]),
        .I1(sa_wm_awvalid__2),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(m_aready__1),
        .I4(p_0_in6_in),
        .I5(fifoaddr[1]),
        .O(\gen_rep[0].fifoaddr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h7EFF8100)) 
    \gen_rep[0].fifoaddr[2]_i_1 
       (.I0(fifoaddr[1]),
        .I1(fifoaddr[0]),
        .I2(push),
        .I3(\gen_rep[0].fifoaddr[2]_i_2__0_n_0 ),
        .I4(fifoaddr[2]),
        .O(\gen_rep[0].fifoaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEF001010EF001000)) 
    \gen_rep[0].fifoaddr[2]_i_2__0 
       (.I0(p_1_in),
        .I1(m_ready_d),
        .I2(Q),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(m_aready__1),
        .I5(p_0_in6_in),
        .O(\gen_rep[0].fifoaddr[2]_i_2__0_n_0 ));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_rep[0].fifoaddr[0]_i_1_n_0 ),
        .Q(fifoaddr[0]),
        .S(SS));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_rep[0].fifoaddr[1]_i_1_n_0 ),
        .Q(fifoaddr[1]),
        .S(SS));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_rep[0].fifoaddr[2]_i_1_n_0 ),
        .Q(fifoaddr[2]),
        .S(SS));
  audio_AXI_DMA_xbar_1_axi_data_fifo_v2_1_26_ndeep_srl__parameterized1_12 \gen_srls[0].gen_rep[0].srl_nx1 
       (.Q({p_0_in6_in,\FSM_onehot_state_reg_n_0_[0] }),
        .aa_wm_awgrant_enc(aa_wm_awgrant_enc),
        .aclk(aclk),
        .fifoaddr(fifoaddr),
        .\gen_primitive_shifter.gen_srls[0].srl_inst_0 (\gen_srls[0].gen_rep[0].srl_nx1_n_2 ),
        .\gen_primitive_shifter.gen_srls[0].srl_inst_1 (Q),
        .load_s1(load_s1),
        .m_aready__1(m_aready__1),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .m_ready_d(m_ready_d),
        .p_1_in(p_1_in),
        .push(push),
        .s_axi_wlast(s_axi_wlast),
        .\storage_data1_reg[0] (\storage_data1_reg[0]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[0]_INST_0 
       (.I0(s_axi_wdata[64]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[0]),
        .O(m_axi_wdata[0]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[10]_INST_0 
       (.I0(s_axi_wdata[74]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[10]),
        .O(m_axi_wdata[10]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[11]_INST_0 
       (.I0(s_axi_wdata[75]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[11]),
        .O(m_axi_wdata[11]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[12]_INST_0 
       (.I0(s_axi_wdata[76]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[12]),
        .O(m_axi_wdata[12]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[13]_INST_0 
       (.I0(s_axi_wdata[77]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[13]),
        .O(m_axi_wdata[13]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[14]_INST_0 
       (.I0(s_axi_wdata[78]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[14]),
        .O(m_axi_wdata[14]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[15]_INST_0 
       (.I0(s_axi_wdata[79]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[15]),
        .O(m_axi_wdata[15]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[16]_INST_0 
       (.I0(s_axi_wdata[80]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[16]),
        .O(m_axi_wdata[16]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[17]_INST_0 
       (.I0(s_axi_wdata[81]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[17]),
        .O(m_axi_wdata[17]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[18]_INST_0 
       (.I0(s_axi_wdata[82]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[18]),
        .O(m_axi_wdata[18]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[19]_INST_0 
       (.I0(s_axi_wdata[83]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[19]),
        .O(m_axi_wdata[19]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[1]_INST_0 
       (.I0(s_axi_wdata[65]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[1]),
        .O(m_axi_wdata[1]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[20]_INST_0 
       (.I0(s_axi_wdata[84]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[20]),
        .O(m_axi_wdata[20]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[21]_INST_0 
       (.I0(s_axi_wdata[85]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[21]),
        .O(m_axi_wdata[21]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[22]_INST_0 
       (.I0(s_axi_wdata[86]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[22]),
        .O(m_axi_wdata[22]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[23]_INST_0 
       (.I0(s_axi_wdata[87]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[23]),
        .O(m_axi_wdata[23]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[24]_INST_0 
       (.I0(s_axi_wdata[88]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[24]),
        .O(m_axi_wdata[24]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[25]_INST_0 
       (.I0(s_axi_wdata[89]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[25]),
        .O(m_axi_wdata[25]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[26]_INST_0 
       (.I0(s_axi_wdata[90]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[26]),
        .O(m_axi_wdata[26]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[27]_INST_0 
       (.I0(s_axi_wdata[91]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[27]),
        .O(m_axi_wdata[27]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[28]_INST_0 
       (.I0(s_axi_wdata[92]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[28]),
        .O(m_axi_wdata[28]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[29]_INST_0 
       (.I0(s_axi_wdata[93]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[29]),
        .O(m_axi_wdata[29]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[2]_INST_0 
       (.I0(s_axi_wdata[66]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[2]),
        .O(m_axi_wdata[2]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[30]_INST_0 
       (.I0(s_axi_wdata[94]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[30]),
        .O(m_axi_wdata[30]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[31]_INST_0 
       (.I0(s_axi_wdata[95]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[31]),
        .O(m_axi_wdata[31]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[32]_INST_0 
       (.I0(s_axi_wdata[96]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[32]),
        .O(m_axi_wdata[32]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[33]_INST_0 
       (.I0(s_axi_wdata[97]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[33]),
        .O(m_axi_wdata[33]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[34]_INST_0 
       (.I0(s_axi_wdata[98]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[34]),
        .O(m_axi_wdata[34]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[35]_INST_0 
       (.I0(s_axi_wdata[99]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[35]),
        .O(m_axi_wdata[35]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[36]_INST_0 
       (.I0(s_axi_wdata[100]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[36]),
        .O(m_axi_wdata[36]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[37]_INST_0 
       (.I0(s_axi_wdata[101]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[37]),
        .O(m_axi_wdata[37]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[38]_INST_0 
       (.I0(s_axi_wdata[102]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[38]),
        .O(m_axi_wdata[38]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[39]_INST_0 
       (.I0(s_axi_wdata[103]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[39]),
        .O(m_axi_wdata[39]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[3]_INST_0 
       (.I0(s_axi_wdata[67]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[3]),
        .O(m_axi_wdata[3]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[40]_INST_0 
       (.I0(s_axi_wdata[104]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[40]),
        .O(m_axi_wdata[40]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[41]_INST_0 
       (.I0(s_axi_wdata[105]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[41]),
        .O(m_axi_wdata[41]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[42]_INST_0 
       (.I0(s_axi_wdata[106]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[42]),
        .O(m_axi_wdata[42]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[43]_INST_0 
       (.I0(s_axi_wdata[107]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[43]),
        .O(m_axi_wdata[43]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[44]_INST_0 
       (.I0(s_axi_wdata[108]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[44]),
        .O(m_axi_wdata[44]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[45]_INST_0 
       (.I0(s_axi_wdata[109]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[45]),
        .O(m_axi_wdata[45]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[46]_INST_0 
       (.I0(s_axi_wdata[110]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[46]),
        .O(m_axi_wdata[46]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[47]_INST_0 
       (.I0(s_axi_wdata[111]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[47]),
        .O(m_axi_wdata[47]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[48]_INST_0 
       (.I0(s_axi_wdata[112]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[48]),
        .O(m_axi_wdata[48]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[49]_INST_0 
       (.I0(s_axi_wdata[113]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[49]),
        .O(m_axi_wdata[49]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[4]_INST_0 
       (.I0(s_axi_wdata[68]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[4]),
        .O(m_axi_wdata[4]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[50]_INST_0 
       (.I0(s_axi_wdata[114]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[50]),
        .O(m_axi_wdata[50]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[51]_INST_0 
       (.I0(s_axi_wdata[115]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[51]),
        .O(m_axi_wdata[51]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[52]_INST_0 
       (.I0(s_axi_wdata[116]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[52]),
        .O(m_axi_wdata[52]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[53]_INST_0 
       (.I0(s_axi_wdata[117]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[53]),
        .O(m_axi_wdata[53]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[54]_INST_0 
       (.I0(s_axi_wdata[118]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[54]),
        .O(m_axi_wdata[54]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[55]_INST_0 
       (.I0(s_axi_wdata[119]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[55]),
        .O(m_axi_wdata[55]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[56]_INST_0 
       (.I0(s_axi_wdata[120]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[56]),
        .O(m_axi_wdata[56]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[57]_INST_0 
       (.I0(s_axi_wdata[121]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[57]),
        .O(m_axi_wdata[57]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[58]_INST_0 
       (.I0(s_axi_wdata[122]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[58]),
        .O(m_axi_wdata[58]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[59]_INST_0 
       (.I0(s_axi_wdata[123]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[59]),
        .O(m_axi_wdata[59]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[5]_INST_0 
       (.I0(s_axi_wdata[69]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[5]),
        .O(m_axi_wdata[5]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[60]_INST_0 
       (.I0(s_axi_wdata[124]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[60]),
        .O(m_axi_wdata[60]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[61]_INST_0 
       (.I0(s_axi_wdata[125]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[61]),
        .O(m_axi_wdata[61]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[62]_INST_0 
       (.I0(s_axi_wdata[126]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[62]),
        .O(m_axi_wdata[62]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[63]_INST_0 
       (.I0(s_axi_wdata[127]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[63]),
        .O(m_axi_wdata[63]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[6]_INST_0 
       (.I0(s_axi_wdata[70]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[6]),
        .O(m_axi_wdata[6]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[7]_INST_0 
       (.I0(s_axi_wdata[71]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[7]),
        .O(m_axi_wdata[7]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[8]_INST_0 
       (.I0(s_axi_wdata[72]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[8]),
        .O(m_axi_wdata[8]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[9]_INST_0 
       (.I0(s_axi_wdata[73]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wdata[9]),
        .O(m_axi_wdata[9]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wlast[0]_INST_0 
       (.I0(s_axi_wlast[1]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wlast[0]),
        .O(m_axi_wlast));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wstrb[0]_INST_0 
       (.I0(s_axi_wstrb[8]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wstrb[0]),
        .O(m_axi_wstrb[0]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wstrb[1]_INST_0 
       (.I0(s_axi_wstrb[9]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wstrb[1]),
        .O(m_axi_wstrb[1]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wstrb[2]_INST_0 
       (.I0(s_axi_wstrb[10]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wstrb[2]),
        .O(m_axi_wstrb[2]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wstrb[3]_INST_0 
       (.I0(s_axi_wstrb[11]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wstrb[3]),
        .O(m_axi_wstrb[3]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wstrb[4]_INST_0 
       (.I0(s_axi_wstrb[12]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wstrb[4]),
        .O(m_axi_wstrb[4]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wstrb[5]_INST_0 
       (.I0(s_axi_wstrb[13]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wstrb[5]),
        .O(m_axi_wstrb[5]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wstrb[6]_INST_0 
       (.I0(s_axi_wstrb[14]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wstrb[6]),
        .O(m_axi_wstrb[6]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wstrb[7]_INST_0 
       (.I0(s_axi_wstrb[15]),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(s_axi_wstrb[7]),
        .O(m_axi_wstrb[7]));
  LUT6 #(
    .INIT(64'hECCCECCC20CC2000)) 
    m_valid_i_i_1__2
       (.I0(\FSM_onehot_state[3]_i_3__2_n_0 ),
        .I1(sa_wm_awvalid__2),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(m_aready__1),
        .I4(p_0_in6_in),
        .I5(\FSM_onehot_state_reg[3]_0 ),
        .O(m_valid_i_i_1__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(aclk),
        .CE(m_valid_i),
        .D(m_valid_i_i_1__2_n_0),
        .Q(m_avalid),
        .R(areset_d1));
  LUT5 #(
    .INIT(32'hFCA0ECA0)) 
    \storage_data1[0]_i_2__2 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg[3]_0 ),
        .I2(m_aready__1),
        .I3(sa_wm_awvalid__2),
        .I4(p_0_in6_in),
        .O(load_s1));
  FDRE \storage_data1_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_srls[0].gen_rep[0].srl_nx1_n_2 ),
        .Q(\storage_data1_reg[0]_0 ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_26_axic_reg_srl_fifo" *) 
module audio_AXI_DMA_xbar_1_axi_data_fifo_v2_1_26_axic_reg_srl_fifo__parameterized1
   (m_avalid,
    m_select_enc,
    D,
    Q,
    push,
    aa_wm_awgrant_enc,
    aclk,
    areset_d1,
    m_valid_i_reg_0,
    m_aready__1,
    sa_wm_awvalid__2,
    p_1_in,
    m_ready_d,
    m_valid_i_reg_1,
    \FSM_onehot_state_reg[3]_0 ,
    SS);
  output m_avalid;
  output m_select_enc;
  output [0:0]D;
  output [1:0]Q;
  input push;
  input aa_wm_awgrant_enc;
  input aclk;
  input areset_d1;
  input m_valid_i_reg_0;
  input m_aready__1;
  input [0:0]sa_wm_awvalid__2;
  input p_1_in;
  input [0:0]m_ready_d;
  input [0:0]m_valid_i_reg_1;
  input [1:0]\FSM_onehot_state_reg[3]_0 ;
  input [0:0]SS;

  wire [0:0]D;
  wire [1:0]\FSM_onehot_state_reg[3]_0 ;
  wire [1:0]Q;
  wire [0:0]SS;
  wire aa_wm_awgrant_enc;
  wire aclk;
  wire areset_d1;
  wire [1:0]fifoaddr;
  wire \gen_rep[0].fifoaddr[0]_i_1_n_0 ;
  wire \gen_rep[0].fifoaddr[1]_i_1_n_0 ;
  wire \gen_srls[0].gen_rep[0].srl_nx1_n_0 ;
  wire load_s1;
  wire m_aready__1;
  wire m_avalid;
  wire [0:0]m_ready_d;
  wire m_select_enc;
  wire m_valid_i;
  wire m_valid_i_reg_0;
  wire [0:0]m_valid_i_reg_1;
  wire p_1_in;
  wire p_7_in;
  wire push;
  wire [0:0]sa_wm_awvalid__2;

  LUT6 #(
    .INIT(64'hFF00FF0004040000)) 
    \FSM_onehot_state[1]_i_1__3 
       (.I0(fifoaddr[1]),
        .I1(Q[0]),
        .I2(fifoaddr[0]),
        .I3(p_7_in),
        .I4(m_aready__1),
        .I5(sa_wm_awvalid__2),
        .O(D));
  LUT6 #(
    .INIT(64'hEAEAEAAEEAEAEAEA)) 
    \FSM_onehot_state[3]_i_1__0 
       (.I0(D),
        .I1(Q[1]),
        .I2(m_aready__1),
        .I3(p_1_in),
        .I4(m_ready_d),
        .I5(m_valid_i_reg_1),
        .O(m_valid_i));
  (* FSM_ENCODED_STATES = "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[0] 
       (.C(aclk),
        .CE(m_valid_i),
        .D(\FSM_onehot_state_reg[3]_0 [0]),
        .Q(Q[0]),
        .R(areset_d1));
  (* FSM_ENCODED_STATES = "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(aclk),
        .CE(m_valid_i),
        .D(D),
        .Q(Q[1]),
        .R(areset_d1));
  (* FSM_ENCODED_STATES = "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[3] 
       (.C(aclk),
        .CE(m_valid_i),
        .D(\FSM_onehot_state_reg[3]_0 [1]),
        .Q(p_7_in),
        .S(areset_d1));
  LUT5 #(
    .INIT(32'hCD3F32C0)) 
    \gen_rep[0].fifoaddr[0]_i_1 
       (.I0(Q[1]),
        .I1(m_aready__1),
        .I2(Q[0]),
        .I3(sa_wm_awvalid__2),
        .I4(fifoaddr[0]),
        .O(\gen_rep[0].fifoaddr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEF77EF7F10881080)) 
    \gen_rep[0].fifoaddr[1]_i_1 
       (.I0(fifoaddr[0]),
        .I1(sa_wm_awvalid__2),
        .I2(Q[0]),
        .I3(m_aready__1),
        .I4(Q[1]),
        .I5(fifoaddr[1]),
        .O(\gen_rep[0].fifoaddr[1]_i_1_n_0 ));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_rep[0].fifoaddr[0]_i_1_n_0 ),
        .Q(fifoaddr[0]),
        .S(SS));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_rep[0].fifoaddr[1]_i_1_n_0 ),
        .Q(fifoaddr[1]),
        .S(SS));
  audio_AXI_DMA_xbar_1_axi_data_fifo_v2_1_26_ndeep_srl__parameterized2 \gen_srls[0].gen_rep[0].srl_nx1 
       (.A(fifoaddr),
        .Q(Q[0]),
        .aa_wm_awgrant_enc(aa_wm_awgrant_enc),
        .aclk(aclk),
        .\gen_primitive_shifter.gen_srls[0].srl_inst_0 (\gen_srls[0].gen_rep[0].srl_nx1_n_0 ),
        .load_s1(load_s1),
        .m_select_enc(m_select_enc),
        .push(push));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(aclk),
        .CE(m_valid_i),
        .D(m_valid_i_reg_0),
        .Q(m_avalid),
        .R(areset_d1));
  LUT5 #(
    .INIT(32'hFCA0ECA0)) 
    \storage_data1[0]_i_2__0 
       (.I0(Q[0]),
        .I1(p_7_in),
        .I2(m_aready__1),
        .I3(sa_wm_awvalid__2),
        .I4(Q[1]),
        .O(load_s1));
  FDRE \storage_data1_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_srls[0].gen_rep[0].srl_nx1_n_0 ),
        .Q(m_select_enc),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_26_ndeep_srl" *) 
module audio_AXI_DMA_xbar_1_axi_data_fifo_v2_1_26_ndeep_srl__parameterized0
   (\gen_primitive_shifter.gen_srls[0].srl_inst_0 ,
    push,
    st_aa_awtarget_enc_2,
    Q,
    aclk,
    \storage_data1_reg[0] ,
    s_axi_awaddr);
  output \gen_primitive_shifter.gen_srls[0].srl_inst_0 ;
  input push;
  input [0:0]st_aa_awtarget_enc_2;
  input [3:0]Q;
  input aclk;
  input [0:0]\storage_data1_reg[0] ;
  input [3:0]s_axi_awaddr;

  wire [3:0]Q;
  wire aclk;
  wire \gen_primitive_shifter.gen_srls[0].srl_inst_0 ;
  wire push;
  wire [3:0]s_axi_awaddr;
  wire [0:0]st_aa_awtarget_enc_2;
  wire [0:0]\storage_data1_reg[0] ;
  wire [0:0]storage_data2;
  wire \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls " *) 
  (* srl_name = "inst/\gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls[0].srl_inst " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst 
       (.A({1'b0,Q}),
        .CE(push),
        .CLK(aclk),
        .D(st_aa_awtarget_enc_2),
        .Q(storage_data2),
        .Q31(\NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ));
  LUT6 #(
    .INIT(64'h8888888888888B88)) 
    \storage_data1[0]_i_2__3 
       (.I0(storage_data2),
        .I1(\storage_data1_reg[0] ),
        .I2(s_axi_awaddr[1]),
        .I3(s_axi_awaddr[0]),
        .I4(s_axi_awaddr[3]),
        .I5(s_axi_awaddr[2]),
        .O(\gen_primitive_shifter.gen_srls[0].srl_inst_0 ));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_26_ndeep_srl" *) 
module audio_AXI_DMA_xbar_1_axi_data_fifo_v2_1_26_ndeep_srl__parameterized0_5
   (push,
    m_aready__1,
    m_aready0__1,
    \gen_primitive_shifter.gen_srls[0].srl_inst_0 ,
    \gen_primitive_shifter.gen_srls[0].srl_inst_1 ,
    Q,
    aclk,
    \gen_primitive_shifter.gen_srls[0].srl_inst_2 ,
    \gen_primitive_shifter.gen_srls[0].srl_inst_3 ,
    m_ready_d,
    s_axi_awvalid,
    s_axi_wlast,
    m_avalid_1,
    s_axi_wvalid,
    m_avalid_0,
    m_axi_wready,
    storage_data1,
    m_select_enc_1,
    m_avalid,
    mi_wready_2,
    m_select_enc,
    m_select_enc_3,
    m_avalid_2,
    s_axi_awaddr);
  output push;
  output m_aready__1;
  output m_aready0__1;
  output \gen_primitive_shifter.gen_srls[0].srl_inst_0 ;
  input \gen_primitive_shifter.gen_srls[0].srl_inst_1 ;
  input [3:0]Q;
  input aclk;
  input \gen_primitive_shifter.gen_srls[0].srl_inst_2 ;
  input [1:0]\gen_primitive_shifter.gen_srls[0].srl_inst_3 ;
  input [0:0]m_ready_d;
  input [0:0]s_axi_awvalid;
  input [0:0]s_axi_wlast;
  input m_avalid_1;
  input [0:0]s_axi_wvalid;
  input m_avalid_0;
  input [1:0]m_axi_wready;
  input [1:0]storage_data1;
  input m_select_enc_1;
  input m_avalid;
  input mi_wready_2;
  input m_select_enc;
  input m_select_enc_3;
  input m_avalid_2;
  input [2:0]s_axi_awaddr;

  wire [3:0]Q;
  wire aclk;
  wire \gen_primitive_shifter.gen_srls[0].srl_inst_0 ;
  wire \gen_primitive_shifter.gen_srls[0].srl_inst_1 ;
  wire \gen_primitive_shifter.gen_srls[0].srl_inst_2 ;
  wire [1:0]\gen_primitive_shifter.gen_srls[0].srl_inst_3 ;
  wire m_aready0__1;
  wire m_aready__1;
  wire m_avalid;
  wire m_avalid_0;
  wire m_avalid_1;
  wire m_avalid_2;
  wire [1:0]m_axi_wready;
  wire [0:0]m_ready_d;
  wire m_select_enc;
  wire m_select_enc_1;
  wire m_select_enc_3;
  wire mi_wready_2;
  wire push;
  wire [2:0]s_axi_awaddr;
  wire [0:0]s_axi_awvalid;
  wire [0:0]s_axi_wlast;
  wire \s_axi_wready[1]_INST_0_i_2_n_0 ;
  wire \s_axi_wready[1]_INST_0_i_3_n_0 ;
  wire [0:0]s_axi_wvalid;
  wire [1:0]storage_data1;
  wire [1:1]storage_data2;
  wire \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/gen_primitive_shifter.gen_srls " *) 
  (* srl_name = "inst/\gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/gen_primitive_shifter.gen_srls[0].srl_inst " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst 
       (.A({1'b0,Q}),
        .CE(push),
        .CLK(aclk),
        .D(\gen_primitive_shifter.gen_srls[0].srl_inst_1 ),
        .Q(storage_data2),
        .Q31(\NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ));
  LUT6 #(
    .INIT(64'h0088000000F80000)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_1__2 
       (.I0(\gen_primitive_shifter.gen_srls[0].srl_inst_2 ),
        .I1(\gen_primitive_shifter.gen_srls[0].srl_inst_3 [0]),
        .I2(\gen_primitive_shifter.gen_srls[0].srl_inst_3 [1]),
        .I3(m_ready_d),
        .I4(s_axi_awvalid),
        .I5(m_aready__1),
        .O(push));
  LUT4 #(
    .INIT(16'h8000)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_2__3 
       (.I0(s_axi_wlast),
        .I1(m_avalid_1),
        .I2(s_axi_wvalid),
        .I3(m_aready0__1),
        .O(m_aready__1));
  LUT6 #(
    .INIT(64'hAAEAAAAAAAAAAAAA)) 
    \s_axi_wready[1]_INST_0_i_1 
       (.I0(\s_axi_wready[1]_INST_0_i_2_n_0 ),
        .I1(m_avalid_0),
        .I2(m_axi_wready[1]),
        .I3(storage_data1[1]),
        .I4(m_select_enc_1),
        .I5(storage_data1[0]),
        .O(m_aready0__1));
  LUT6 #(
    .INIT(64'hFFFFFFFF00008000)) 
    \s_axi_wready[1]_INST_0_i_2 
       (.I0(m_avalid),
        .I1(mi_wready_2),
        .I2(m_select_enc),
        .I3(storage_data1[1]),
        .I4(storage_data1[0]),
        .I5(\s_axi_wready[1]_INST_0_i_3_n_0 ),
        .O(\s_axi_wready[1]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h04000000)) 
    \s_axi_wready[1]_INST_0_i_3 
       (.I0(storage_data1[0]),
        .I1(m_select_enc_3),
        .I2(storage_data1[1]),
        .I3(m_axi_wready[0]),
        .I4(m_avalid_2),
        .O(\s_axi_wready[1]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hBBBBBBB8)) 
    \storage_data1[1]_i_2 
       (.I0(storage_data2),
        .I1(\gen_primitive_shifter.gen_srls[0].srl_inst_3 [0]),
        .I2(s_axi_awaddr[0]),
        .I3(s_axi_awaddr[2]),
        .I4(s_axi_awaddr[1]),
        .O(\gen_primitive_shifter.gen_srls[0].srl_inst_0 ));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_26_ndeep_srl" *) 
module audio_AXI_DMA_xbar_1_axi_data_fifo_v2_1_26_ndeep_srl__parameterized0_7
   (\gen_primitive_shifter.gen_srls[0].srl_inst_0 ,
    push,
    st_aa_awtarget_enc_0,
    Q,
    aclk,
    \storage_data1_reg[0] ,
    s_axi_awaddr);
  output \gen_primitive_shifter.gen_srls[0].srl_inst_0 ;
  input push;
  input [0:0]st_aa_awtarget_enc_0;
  input [3:0]Q;
  input aclk;
  input [0:0]\storage_data1_reg[0] ;
  input [3:0]s_axi_awaddr;

  wire [3:0]Q;
  wire aclk;
  wire \gen_primitive_shifter.gen_srls[0].srl_inst_0 ;
  wire push;
  wire [3:0]s_axi_awaddr;
  wire [0:0]st_aa_awtarget_enc_0;
  wire [0:0]\storage_data1_reg[0] ;
  wire [0:0]storage_data2;
  wire \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls " *) 
  (* srl_name = "inst/\gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls[0].srl_inst " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst 
       (.A({1'b0,Q}),
        .CE(push),
        .CLK(aclk),
        .D(st_aa_awtarget_enc_0),
        .Q(storage_data2),
        .Q31(\NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ));
  LUT6 #(
    .INIT(64'h8888888888888B88)) 
    \storage_data1[0]_i_2 
       (.I0(storage_data2),
        .I1(\storage_data1_reg[0] ),
        .I2(s_axi_awaddr[1]),
        .I3(s_axi_awaddr[0]),
        .I4(s_axi_awaddr[3]),
        .I5(s_axi_awaddr[2]),
        .O(\gen_primitive_shifter.gen_srls[0].srl_inst_0 ));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_26_ndeep_srl" *) 
module audio_AXI_DMA_xbar_1_axi_data_fifo_v2_1_26_ndeep_srl__parameterized0_8
   (push,
    m_aready__1,
    m_aready0__1,
    \gen_primitive_shifter.gen_srls[0].srl_inst_0 ,
    \gen_primitive_shifter.gen_srls[0].srl_inst_1 ,
    Q,
    aclk,
    \gen_primitive_shifter.gen_srls[0].srl_inst_2 ,
    \gen_primitive_shifter.gen_srls[0].srl_inst_3 ,
    m_ready_d,
    s_axi_awvalid,
    s_axi_wlast,
    m_avalid_1,
    s_axi_wvalid,
    m_avalid,
    m_axi_wready,
    m_select_enc,
    storage_data1,
    m_avalid_0,
    mi_wready_2,
    m_select_enc_1,
    m_select_enc_2,
    m_avalid_3,
    s_axi_awaddr);
  output push;
  output m_aready__1;
  output m_aready0__1;
  output \gen_primitive_shifter.gen_srls[0].srl_inst_0 ;
  input \gen_primitive_shifter.gen_srls[0].srl_inst_1 ;
  input [3:0]Q;
  input aclk;
  input \gen_primitive_shifter.gen_srls[0].srl_inst_2 ;
  input [1:0]\gen_primitive_shifter.gen_srls[0].srl_inst_3 ;
  input [0:0]m_ready_d;
  input [0:0]s_axi_awvalid;
  input [0:0]s_axi_wlast;
  input m_avalid_1;
  input [0:0]s_axi_wvalid;
  input m_avalid;
  input [1:0]m_axi_wready;
  input m_select_enc;
  input [1:0]storage_data1;
  input m_avalid_0;
  input mi_wready_2;
  input m_select_enc_1;
  input m_select_enc_2;
  input m_avalid_3;
  input [2:0]s_axi_awaddr;

  wire [3:0]Q;
  wire aclk;
  wire \gen_primitive_shifter.gen_srls[0].srl_inst_0 ;
  wire \gen_primitive_shifter.gen_srls[0].srl_inst_1 ;
  wire \gen_primitive_shifter.gen_srls[0].srl_inst_2 ;
  wire [1:0]\gen_primitive_shifter.gen_srls[0].srl_inst_3 ;
  wire m_aready0__1;
  wire m_aready__1;
  wire m_avalid;
  wire m_avalid_0;
  wire m_avalid_1;
  wire m_avalid_3;
  wire [1:0]m_axi_wready;
  wire [0:0]m_ready_d;
  wire m_select_enc;
  wire m_select_enc_1;
  wire m_select_enc_2;
  wire mi_wready_2;
  wire push;
  wire [2:0]s_axi_awaddr;
  wire [0:0]s_axi_awvalid;
  wire [0:0]s_axi_wlast;
  wire \s_axi_wready[0]_INST_0_i_2_n_0 ;
  wire \s_axi_wready[0]_INST_0_i_3_n_0 ;
  wire [0:0]s_axi_wvalid;
  wire [1:0]storage_data1;
  wire [1:1]storage_data2;
  wire \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/gen_primitive_shifter.gen_srls " *) 
  (* srl_name = "inst/\gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/gen_primitive_shifter.gen_srls[0].srl_inst " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst 
       (.A({1'b0,Q}),
        .CE(push),
        .CLK(aclk),
        .D(\gen_primitive_shifter.gen_srls[0].srl_inst_1 ),
        .Q(storage_data2),
        .Q31(\NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ));
  LUT6 #(
    .INIT(64'h0088000000F80000)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_1 
       (.I0(\gen_primitive_shifter.gen_srls[0].srl_inst_2 ),
        .I1(\gen_primitive_shifter.gen_srls[0].srl_inst_3 [0]),
        .I2(\gen_primitive_shifter.gen_srls[0].srl_inst_3 [1]),
        .I3(m_ready_d),
        .I4(s_axi_awvalid),
        .I5(m_aready__1),
        .O(push));
  LUT4 #(
    .INIT(16'h8000)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_2 
       (.I0(s_axi_wlast),
        .I1(m_avalid_1),
        .I2(s_axi_wvalid),
        .I3(m_aready0__1),
        .O(m_aready__1));
  LUT6 #(
    .INIT(64'hAAAAAAEAAAAAAAAA)) 
    \s_axi_wready[0]_INST_0_i_1 
       (.I0(\s_axi_wready[0]_INST_0_i_2_n_0 ),
        .I1(m_avalid),
        .I2(m_axi_wready[1]),
        .I3(m_select_enc),
        .I4(storage_data1[1]),
        .I5(storage_data1[0]),
        .O(m_aready0__1));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000800)) 
    \s_axi_wready[0]_INST_0_i_2 
       (.I0(m_avalid_0),
        .I1(mi_wready_2),
        .I2(m_select_enc_1),
        .I3(storage_data1[1]),
        .I4(storage_data1[0]),
        .I5(\s_axi_wready[0]_INST_0_i_3_n_0 ),
        .O(\s_axi_wready[0]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h01000000)) 
    \s_axi_wready[0]_INST_0_i_3 
       (.I0(storage_data1[0]),
        .I1(storage_data1[1]),
        .I2(m_select_enc_2),
        .I3(m_axi_wready[0]),
        .I4(m_avalid_3),
        .O(\s_axi_wready[0]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hBBBBBBB8)) 
    \storage_data1[1]_i_2__0 
       (.I0(storage_data2),
        .I1(\gen_primitive_shifter.gen_srls[0].srl_inst_3 [0]),
        .I2(s_axi_awaddr[0]),
        .I3(s_axi_awaddr[2]),
        .I4(s_axi_awaddr[1]),
        .O(\gen_primitive_shifter.gen_srls[0].srl_inst_0 ));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_26_ndeep_srl" *) 
module audio_AXI_DMA_xbar_1_axi_data_fifo_v2_1_26_ndeep_srl__parameterized1
   (push,
    m_aready__1,
    \gen_primitive_shifter.gen_srls[0].srl_inst_0 ,
    aa_wm_awgrant_enc,
    fifoaddr,
    aclk,
    Q,
    \gen_primitive_shifter.gen_srls[0].srl_inst_1 ,
    m_ready_d,
    p_1_in,
    m_axi_wready,
    s_axi_wlast,
    \storage_data1_reg[0] ,
    m_axi_wvalid,
    load_s1);
  output push;
  output m_aready__1;
  output \gen_primitive_shifter.gen_srls[0].srl_inst_0 ;
  input aa_wm_awgrant_enc;
  input [2:0]fifoaddr;
  input aclk;
  input [1:0]Q;
  input [0:0]\gen_primitive_shifter.gen_srls[0].srl_inst_1 ;
  input [0:0]m_ready_d;
  input p_1_in;
  input [0:0]m_axi_wready;
  input [1:0]s_axi_wlast;
  input \storage_data1_reg[0] ;
  input [0:0]m_axi_wvalid;
  input load_s1;

  wire [1:0]Q;
  wire aa_wm_awgrant_enc;
  wire aclk;
  wire [2:0]fifoaddr;
  wire \gen_primitive_shifter.gen_srls[0].srl_inst_0 ;
  wire [0:0]\gen_primitive_shifter.gen_srls[0].srl_inst_1 ;
  wire load_s1;
  wire m_aready__1;
  wire [0:0]m_axi_wready;
  wire [0:0]m_axi_wvalid;
  wire [0:0]m_ready_d;
  wire p_1_in;
  wire push;
  wire [1:0]s_axi_wlast;
  wire \storage_data1_reg[0] ;
  wire storage_data2;
  wire \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\gen_samd.crossbar_samd/gen_master_slots[1].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls " *) 
  (* srl_name = "inst/\gen_samd.crossbar_samd/gen_master_slots[1].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls[0].srl_inst " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst 
       (.A({1'b0,1'b0,fifoaddr}),
        .CE(push),
        .CLK(aclk),
        .D(aa_wm_awgrant_enc),
        .Q(storage_data2),
        .Q31(\NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ));
  LUT6 #(
    .INIT(64'h000000000000F200)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_1__0 
       (.I0(Q[1]),
        .I1(m_aready__1),
        .I2(Q[0]),
        .I3(\gen_primitive_shifter.gen_srls[0].srl_inst_1 ),
        .I4(m_ready_d),
        .I5(p_1_in),
        .O(push));
  LUT5 #(
    .INIT(32'h8A800000)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_2__1 
       (.I0(m_axi_wready),
        .I1(s_axi_wlast[1]),
        .I2(\storage_data1_reg[0] ),
        .I3(s_axi_wlast[0]),
        .I4(m_axi_wvalid),
        .O(m_aready__1));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \storage_data1[0]_i_1__0 
       (.I0(storage_data2),
        .I1(Q[0]),
        .I2(aa_wm_awgrant_enc),
        .I3(load_s1),
        .I4(\storage_data1_reg[0] ),
        .O(\gen_primitive_shifter.gen_srls[0].srl_inst_0 ));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_26_ndeep_srl" *) 
module audio_AXI_DMA_xbar_1_axi_data_fifo_v2_1_26_ndeep_srl__parameterized1_12
   (push,
    m_aready__1,
    \gen_primitive_shifter.gen_srls[0].srl_inst_0 ,
    aa_wm_awgrant_enc,
    fifoaddr,
    aclk,
    Q,
    \gen_primitive_shifter.gen_srls[0].srl_inst_1 ,
    m_ready_d,
    p_1_in,
    m_axi_wready,
    s_axi_wlast,
    \storage_data1_reg[0] ,
    m_axi_wvalid,
    load_s1);
  output push;
  output m_aready__1;
  output \gen_primitive_shifter.gen_srls[0].srl_inst_0 ;
  input aa_wm_awgrant_enc;
  input [2:0]fifoaddr;
  input aclk;
  input [1:0]Q;
  input [0:0]\gen_primitive_shifter.gen_srls[0].srl_inst_1 ;
  input [0:0]m_ready_d;
  input p_1_in;
  input [0:0]m_axi_wready;
  input [1:0]s_axi_wlast;
  input \storage_data1_reg[0] ;
  input [0:0]m_axi_wvalid;
  input load_s1;

  wire [1:0]Q;
  wire aa_wm_awgrant_enc;
  wire aclk;
  wire [2:0]fifoaddr;
  wire \gen_primitive_shifter.gen_srls[0].srl_inst_0 ;
  wire [0:0]\gen_primitive_shifter.gen_srls[0].srl_inst_1 ;
  wire load_s1;
  wire m_aready__1;
  wire [0:0]m_axi_wready;
  wire [0:0]m_axi_wvalid;
  wire [0:0]m_ready_d;
  wire p_1_in;
  wire push;
  wire [1:0]s_axi_wlast;
  wire \storage_data1_reg[0] ;
  wire storage_data2;
  wire \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\gen_samd.crossbar_samd/gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls " *) 
  (* srl_name = "inst/\gen_samd.crossbar_samd/gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls[0].srl_inst " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst 
       (.A({1'b0,1'b0,fifoaddr}),
        .CE(push),
        .CLK(aclk),
        .D(aa_wm_awgrant_enc),
        .Q(storage_data2),
        .Q31(\NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ));
  LUT6 #(
    .INIT(64'h000000000000F200)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_1__1 
       (.I0(Q[1]),
        .I1(m_aready__1),
        .I2(Q[0]),
        .I3(\gen_primitive_shifter.gen_srls[0].srl_inst_1 ),
        .I4(m_ready_d),
        .I5(p_1_in),
        .O(push));
  LUT5 #(
    .INIT(32'h8A800000)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_2__2 
       (.I0(m_axi_wready),
        .I1(s_axi_wlast[1]),
        .I2(\storage_data1_reg[0] ),
        .I3(s_axi_wlast[0]),
        .I4(m_axi_wvalid),
        .O(m_aready__1));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \storage_data1[0]_i_1 
       (.I0(storage_data2),
        .I1(Q[0]),
        .I2(aa_wm_awgrant_enc),
        .I3(load_s1),
        .I4(\storage_data1_reg[0] ),
        .O(\gen_primitive_shifter.gen_srls[0].srl_inst_0 ));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_26_ndeep_srl" *) 
module audio_AXI_DMA_xbar_1_axi_data_fifo_v2_1_26_ndeep_srl__parameterized2
   (\gen_primitive_shifter.gen_srls[0].srl_inst_0 ,
    push,
    aa_wm_awgrant_enc,
    A,
    aclk,
    Q,
    load_s1,
    m_select_enc);
  output \gen_primitive_shifter.gen_srls[0].srl_inst_0 ;
  input push;
  input aa_wm_awgrant_enc;
  input [1:0]A;
  input aclk;
  input [0:0]Q;
  input load_s1;
  input m_select_enc;

  wire [1:0]A;
  wire [0:0]Q;
  wire aa_wm_awgrant_enc;
  wire aclk;
  wire \gen_primitive_shifter.gen_srls[0].srl_inst_0 ;
  wire load_s1;
  wire m_select_enc;
  wire push;
  wire storage_data2;
  wire \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls " *) 
  (* srl_name = "inst/\gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls[0].srl_inst " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst 
       (.A({1'b0,1'b0,1'b0,A}),
        .CE(push),
        .CLK(aclk),
        .D(aa_wm_awgrant_enc),
        .Q(storage_data2),
        .Q31(\NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \storage_data1[0]_i_1__1 
       (.I0(storage_data2),
        .I1(Q),
        .I2(aa_wm_awgrant_enc),
        .I3(load_s1),
        .I4(m_select_enc),
        .O(\gen_primitive_shifter.gen_srls[0].srl_inst_0 ));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_27_axi_register_slice" *) 
module audio_AXI_DMA_xbar_1_axi_register_slice_v2_1_27_axi_register_slice
   (st_mr_bvalid,
    \gen_master_slots[0].w_issuing_cnt_reg[3] ,
    mi_awmaxissuing129_in,
    \gen_master_slots[0].w_issuing_cnt_reg[3]_0 ,
    E,
    st_mr_bid_0,
    st_mr_bmesg,
    m_axi_bready,
    m_valid_i_reg,
    aclk,
    st_aa_awtarget_hot,
    Q,
    p_30_in,
    \gen_master_slots[0].w_issuing_cnt_reg[0] ,
    s_axi_bready,
    \gen_master_slots[0].w_issuing_cnt_reg[0]_0 ,
    m_axi_bid,
    m_axi_bresp,
    s_ready_i_reg,
    m_axi_bvalid,
    s_ready_i_reg_0);
  output [0:0]st_mr_bvalid;
  output \gen_master_slots[0].w_issuing_cnt_reg[3] ;
  output mi_awmaxissuing129_in;
  output \gen_master_slots[0].w_issuing_cnt_reg[3]_0 ;
  output [0:0]E;
  output st_mr_bid_0;
  output [1:0]st_mr_bmesg;
  output [0:0]m_axi_bready;
  input m_valid_i_reg;
  input aclk;
  input [1:0]st_aa_awtarget_hot;
  input [3:0]Q;
  input p_30_in;
  input [0:0]\gen_master_slots[0].w_issuing_cnt_reg[0] ;
  input [1:0]s_axi_bready;
  input [0:0]\gen_master_slots[0].w_issuing_cnt_reg[0]_0 ;
  input [0:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input s_ready_i_reg;
  input [0:0]m_axi_bvalid;
  input s_ready_i_reg_0;

  wire [0:0]E;
  wire [3:0]Q;
  wire aclk;
  wire [0:0]\gen_master_slots[0].w_issuing_cnt_reg[0] ;
  wire [0:0]\gen_master_slots[0].w_issuing_cnt_reg[0]_0 ;
  wire \gen_master_slots[0].w_issuing_cnt_reg[3] ;
  wire \gen_master_slots[0].w_issuing_cnt_reg[3]_0 ;
  wire [0:0]m_axi_bid;
  wire [0:0]m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire [0:0]m_axi_bvalid;
  wire m_valid_i_reg;
  wire mi_awmaxissuing129_in;
  wire p_30_in;
  wire [1:0]s_axi_bready;
  wire s_ready_i_reg;
  wire s_ready_i_reg_0;
  wire [1:0]st_aa_awtarget_hot;
  wire st_mr_bid_0;
  wire [1:0]st_mr_bmesg;
  wire [0:0]st_mr_bvalid;

  audio_AXI_DMA_xbar_1_axi_register_slice_v2_1_27_axic_register_slice__parameterized1_10 \b.b_pipe 
       (.E(E),
        .Q(Q),
        .aclk(aclk),
        .\gen_master_slots[0].w_issuing_cnt_reg[0] (\gen_master_slots[0].w_issuing_cnt_reg[0] ),
        .\gen_master_slots[0].w_issuing_cnt_reg[0]_0 (\gen_master_slots[0].w_issuing_cnt_reg[0]_0 ),
        .\gen_master_slots[0].w_issuing_cnt_reg[3] (\gen_master_slots[0].w_issuing_cnt_reg[3] ),
        .\gen_master_slots[0].w_issuing_cnt_reg[3]_0 (\gen_master_slots[0].w_issuing_cnt_reg[3]_0 ),
        .m_axi_bid(m_axi_bid),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_bvalid(m_axi_bvalid),
        .m_valid_i_reg_0(st_mr_bvalid),
        .m_valid_i_reg_1(mi_awmaxissuing129_in),
        .m_valid_i_reg_2(m_valid_i_reg),
        .p_30_in(p_30_in),
        .s_axi_bready(s_axi_bready),
        .s_ready_i_reg_0(s_ready_i_reg),
        .s_ready_i_reg_1(s_ready_i_reg_0),
        .st_aa_awtarget_hot(st_aa_awtarget_hot),
        .st_mr_bid_0(st_mr_bid_0),
        .st_mr_bmesg(st_mr_bmesg));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_27_axi_register_slice" *) 
module audio_AXI_DMA_xbar_1_axi_register_slice_v2_1_27_axi_register_slice_1
   (\aresetn_d_reg[0] ,
    \gen_master_slots[1].w_issuing_cnt_reg[11] ,
    mi_awmaxissuing120_in,
    \gen_master_slots[1].w_issuing_cnt_reg[11]_0 ,
    E,
    st_mr_bid_1,
    \m_payload_i_reg[2] ,
    \m_payload_i_reg[2]_0 ,
    \aresetn_d_reg[0]_0 ,
    m_axi_bready,
    st_mr_bmesg,
    \s_axi_bvalid[1] ,
    m_valid_i_reg,
    aclk,
    aresetn,
    st_aa_awtarget_hot,
    Q,
    p_21_in,
    \s_axi_bvalid[0] ,
    s_axi_bready,
    \s_axi_bvalid[1]_0 ,
    st_mr_bid_0,
    s_ready_i_reg,
    m_axi_bvalid,
    m_axi_bid,
    m_axi_bresp);
  output \aresetn_d_reg[0] ;
  output \gen_master_slots[1].w_issuing_cnt_reg[11] ;
  output mi_awmaxissuing120_in;
  output \gen_master_slots[1].w_issuing_cnt_reg[11]_0 ;
  output [0:0]E;
  output st_mr_bid_1;
  output \m_payload_i_reg[2] ;
  output \m_payload_i_reg[2]_0 ;
  output \aresetn_d_reg[0]_0 ;
  output [0:0]m_axi_bready;
  output [1:0]st_mr_bmesg;
  input [0:0]\s_axi_bvalid[1] ;
  input m_valid_i_reg;
  input aclk;
  input aresetn;
  input [1:0]st_aa_awtarget_hot;
  input [3:0]Q;
  input p_21_in;
  input [1:0]\s_axi_bvalid[0] ;
  input [1:0]s_axi_bready;
  input [1:0]\s_axi_bvalid[1]_0 ;
  input st_mr_bid_0;
  input s_ready_i_reg;
  input [0:0]m_axi_bvalid;
  input [0:0]m_axi_bid;
  input [1:0]m_axi_bresp;

  wire [0:0]E;
  wire [3:0]Q;
  wire aclk;
  wire aresetn;
  wire \aresetn_d_reg[0] ;
  wire \aresetn_d_reg[0]_0 ;
  wire \gen_master_slots[1].w_issuing_cnt_reg[11] ;
  wire \gen_master_slots[1].w_issuing_cnt_reg[11]_0 ;
  wire [0:0]m_axi_bid;
  wire [0:0]m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire [0:0]m_axi_bvalid;
  wire \m_payload_i_reg[2] ;
  wire \m_payload_i_reg[2]_0 ;
  wire m_valid_i_reg;
  wire mi_awmaxissuing120_in;
  wire p_21_in;
  wire [1:0]s_axi_bready;
  wire [1:0]\s_axi_bvalid[0] ;
  wire [0:0]\s_axi_bvalid[1] ;
  wire [1:0]\s_axi_bvalid[1]_0 ;
  wire s_ready_i_reg;
  wire [1:0]st_aa_awtarget_hot;
  wire st_mr_bid_0;
  wire st_mr_bid_1;
  wire [1:0]st_mr_bmesg;

  audio_AXI_DMA_xbar_1_axi_register_slice_v2_1_27_axic_register_slice__parameterized1_9 \b.b_pipe 
       (.E(E),
        .Q(Q),
        .aclk(aclk),
        .aresetn(aresetn),
        .\aresetn_d_reg[0]_0 (\aresetn_d_reg[0] ),
        .\aresetn_d_reg[0]_1 (\aresetn_d_reg[0]_0 ),
        .\gen_master_slots[1].w_issuing_cnt_reg[11] (\gen_master_slots[1].w_issuing_cnt_reg[11] ),
        .\gen_master_slots[1].w_issuing_cnt_reg[11]_0 (\gen_master_slots[1].w_issuing_cnt_reg[11]_0 ),
        .m_axi_bid(m_axi_bid),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_bvalid(m_axi_bvalid),
        .\m_payload_i_reg[2]_0 (st_mr_bid_1),
        .\m_payload_i_reg[2]_1 (\m_payload_i_reg[2] ),
        .\m_payload_i_reg[2]_2 (\m_payload_i_reg[2]_0 ),
        .m_valid_i_reg_0(mi_awmaxissuing120_in),
        .m_valid_i_reg_1(m_valid_i_reg),
        .p_21_in(p_21_in),
        .s_axi_bready(s_axi_bready),
        .\s_axi_bvalid[0] (\s_axi_bvalid[0] ),
        .\s_axi_bvalid[1] (\s_axi_bvalid[1]_0 ),
        .\s_axi_bvalid[1]_0 (\s_axi_bvalid[1] ),
        .s_ready_i_reg_0(s_ready_i_reg),
        .st_aa_awtarget_hot(st_aa_awtarget_hot),
        .st_mr_bid_0(st_mr_bid_0),
        .st_mr_bmesg(st_mr_bmesg));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_27_axi_register_slice" *) 
module audio_AXI_DMA_xbar_1_axi_register_slice_v2_1_27_axi_register_slice__parameterized0
   (st_mr_bvalid,
    \aresetn_d_reg[1] ,
    mi_awmaxissuing1__0,
    st_mr_bid_2,
    s_axi_bvalid,
    \gen_master_slots[2].w_issuing_cnt_reg[16] ,
    \gen_master_slots[2].w_issuing_cnt_reg[16]_0 ,
    mi_bready_2,
    aclk,
    \aresetn_d_reg[1]_0 ,
    \gen_single_thread.active_target_enc ,
    s_axi_bready,
    \gen_single_thread.active_target_enc_0 ,
    s_axi_bvalid_0_sp_1,
    s_axi_bvalid_1_sp_1,
    w_issuing_cnt,
    s_axi_awaddr,
    bready_carry,
    mi_bvalid_2,
    s_ready_i_reg,
    mi_bid_2);
  output [0:0]st_mr_bvalid;
  output \aresetn_d_reg[1] ;
  output mi_awmaxissuing1__0;
  output st_mr_bid_2;
  output [1:0]s_axi_bvalid;
  output \gen_master_slots[2].w_issuing_cnt_reg[16] ;
  output \gen_master_slots[2].w_issuing_cnt_reg[16]_0 ;
  output mi_bready_2;
  input aclk;
  input \aresetn_d_reg[1]_0 ;
  input [0:0]\gen_single_thread.active_target_enc ;
  input [1:0]s_axi_bready;
  input [0:0]\gen_single_thread.active_target_enc_0 ;
  input s_axi_bvalid_0_sp_1;
  input s_axi_bvalid_1_sp_1;
  input [0:0]w_issuing_cnt;
  input [5:0]s_axi_awaddr;
  input [0:0]bready_carry;
  input mi_bvalid_2;
  input s_ready_i_reg;
  input mi_bid_2;

  wire aclk;
  wire \aresetn_d_reg[1] ;
  wire \aresetn_d_reg[1]_0 ;
  wire [0:0]bready_carry;
  wire \gen_master_slots[2].w_issuing_cnt_reg[16] ;
  wire \gen_master_slots[2].w_issuing_cnt_reg[16]_0 ;
  wire [0:0]\gen_single_thread.active_target_enc ;
  wire [0:0]\gen_single_thread.active_target_enc_0 ;
  wire mi_awmaxissuing1__0;
  wire mi_bid_2;
  wire mi_bready_2;
  wire mi_bvalid_2;
  wire [5:0]s_axi_awaddr;
  wire [1:0]s_axi_bready;
  wire [1:0]s_axi_bvalid;
  wire s_axi_bvalid_0_sn_1;
  wire s_axi_bvalid_1_sn_1;
  wire s_ready_i_reg;
  wire st_mr_bid_2;
  wire [0:0]st_mr_bvalid;
  wire [0:0]w_issuing_cnt;

  assign s_axi_bvalid_0_sn_1 = s_axi_bvalid_0_sp_1;
  assign s_axi_bvalid_1_sn_1 = s_axi_bvalid_1_sp_1;
  audio_AXI_DMA_xbar_1_axi_register_slice_v2_1_27_axic_register_slice__parameterized1 \b.b_pipe 
       (.aclk(aclk),
        .\aresetn_d_reg[1]_0 (\aresetn_d_reg[1] ),
        .\aresetn_d_reg[1]_1 (\aresetn_d_reg[1]_0 ),
        .bready_carry(bready_carry),
        .\gen_master_slots[2].w_issuing_cnt_reg[16] (\gen_master_slots[2].w_issuing_cnt_reg[16] ),
        .\gen_master_slots[2].w_issuing_cnt_reg[16]_0 (\gen_master_slots[2].w_issuing_cnt_reg[16]_0 ),
        .\gen_single_thread.active_target_enc (\gen_single_thread.active_target_enc ),
        .\gen_single_thread.active_target_enc_0 (\gen_single_thread.active_target_enc_0 ),
        .\m_payload_i_reg[2]_0 (st_mr_bid_2),
        .m_valid_i_reg_0(st_mr_bvalid),
        .m_valid_i_reg_1(mi_awmaxissuing1__0),
        .mi_bid_2(mi_bid_2),
        .mi_bready_2(mi_bready_2),
        .mi_bvalid_2(mi_bvalid_2),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_bvalid_0_sp_1(s_axi_bvalid_0_sn_1),
        .s_axi_bvalid_1_sp_1(s_axi_bvalid_1_sn_1),
        .s_ready_i_reg_0(s_ready_i_reg),
        .w_issuing_cnt(w_issuing_cnt));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_27_axic_register_slice" *) 
module audio_AXI_DMA_xbar_1_axi_register_slice_v2_1_27_axic_register_slice__parameterized1
   (m_valid_i_reg_0,
    \aresetn_d_reg[1]_0 ,
    m_valid_i_reg_1,
    \m_payload_i_reg[2]_0 ,
    s_axi_bvalid,
    \gen_master_slots[2].w_issuing_cnt_reg[16] ,
    \gen_master_slots[2].w_issuing_cnt_reg[16]_0 ,
    mi_bready_2,
    aclk,
    \aresetn_d_reg[1]_1 ,
    \gen_single_thread.active_target_enc ,
    s_axi_bready,
    \gen_single_thread.active_target_enc_0 ,
    s_axi_bvalid_0_sp_1,
    s_axi_bvalid_1_sp_1,
    w_issuing_cnt,
    s_axi_awaddr,
    bready_carry,
    mi_bvalid_2,
    s_ready_i_reg_0,
    mi_bid_2);
  output m_valid_i_reg_0;
  output \aresetn_d_reg[1]_0 ;
  output m_valid_i_reg_1;
  output \m_payload_i_reg[2]_0 ;
  output [1:0]s_axi_bvalid;
  output \gen_master_slots[2].w_issuing_cnt_reg[16] ;
  output \gen_master_slots[2].w_issuing_cnt_reg[16]_0 ;
  output mi_bready_2;
  input aclk;
  input \aresetn_d_reg[1]_1 ;
  input [0:0]\gen_single_thread.active_target_enc ;
  input [1:0]s_axi_bready;
  input [0:0]\gen_single_thread.active_target_enc_0 ;
  input s_axi_bvalid_0_sp_1;
  input s_axi_bvalid_1_sp_1;
  input [0:0]w_issuing_cnt;
  input [5:0]s_axi_awaddr;
  input [0:0]bready_carry;
  input mi_bvalid_2;
  input s_ready_i_reg_0;
  input mi_bid_2;

  wire aclk;
  wire \aresetn_d_reg[1]_0 ;
  wire \aresetn_d_reg[1]_1 ;
  wire [0:0]bready_carry;
  wire \gen_master_slots[2].w_issuing_cnt_reg[16] ;
  wire \gen_master_slots[2].w_issuing_cnt_reg[16]_0 ;
  wire [0:0]\gen_single_thread.active_target_enc ;
  wire [0:0]\gen_single_thread.active_target_enc_0 ;
  wire \m_payload_i[2]_i_1_n_0 ;
  wire \m_payload_i_reg[2]_0 ;
  wire m_valid_i_i_1__6_n_0;
  wire m_valid_i_reg_0;
  wire m_valid_i_reg_1;
  wire mi_bid_2;
  wire mi_bready_2;
  wire mi_bvalid_2;
  wire [5:0]s_axi_awaddr;
  wire [1:0]s_axi_bready;
  wire [1:0]s_axi_bvalid;
  wire s_axi_bvalid_0_sn_1;
  wire s_axi_bvalid_1_sn_1;
  wire s_ready_i_i_1_n_0;
  wire s_ready_i_reg_0;
  wire [0:0]w_issuing_cnt;

  assign s_axi_bvalid_0_sn_1 = s_axi_bvalid_0_sp_1;
  assign s_axi_bvalid_1_sn_1 = s_axi_bvalid_1_sp_1;
  FDRE #(
    .INIT(1'b0)) 
    \aresetn_d_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\aresetn_d_reg[1]_1 ),
        .Q(\aresetn_d_reg[1]_0 ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h77777770)) 
    \gen_arbiter.m_grant_enc_i[0]_i_14 
       (.I0(m_valid_i_reg_1),
        .I1(w_issuing_cnt),
        .I2(s_axi_awaddr[0]),
        .I3(s_axi_awaddr[2]),
        .I4(s_axi_awaddr[1]),
        .O(\gen_master_slots[2].w_issuing_cnt_reg[16]_0 ));
  LUT5 #(
    .INIT(32'h77777770)) 
    \gen_arbiter.m_grant_enc_i[0]_i_9 
       (.I0(m_valid_i_reg_1),
        .I1(w_issuing_cnt),
        .I2(s_axi_awaddr[3]),
        .I3(s_axi_awaddr[5]),
        .I4(s_axi_awaddr[4]),
        .O(\gen_master_slots[2].w_issuing_cnt_reg[16] ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[2]_i_1 
       (.I0(\m_payload_i_reg[2]_0 ),
        .I1(m_valid_i_reg_0),
        .I2(mi_bid_2),
        .O(\m_payload_i[2]_i_1_n_0 ));
  FDRE \m_payload_i_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_payload_i[2]_i_1_n_0 ),
        .Q(\m_payload_i_reg[2]_0 ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hD100)) 
    m_valid_i_i_1__6
       (.I0(bready_carry),
        .I1(mi_bready_2),
        .I2(mi_bvalid_2),
        .I3(\aresetn_d_reg[1]_0 ),
        .O(m_valid_i_i_1__6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_valid_i_i_1__6_n_0),
        .Q(m_valid_i_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT4 #(
    .INIT(16'hBAAA)) 
    \s_axi_bvalid[0]_INST_0 
       (.I0(s_axi_bvalid_0_sn_1),
        .I1(\m_payload_i_reg[2]_0 ),
        .I2(m_valid_i_reg_0),
        .I3(\gen_single_thread.active_target_enc ),
        .O(s_axi_bvalid[0]));
  LUT4 #(
    .INIT(16'hEAAA)) 
    \s_axi_bvalid[1]_INST_0 
       (.I0(s_axi_bvalid_1_sn_1),
        .I1(\m_payload_i_reg[2]_0 ),
        .I2(m_valid_i_reg_0),
        .I3(\gen_single_thread.active_target_enc_0 ),
        .O(s_axi_bvalid[1]));
  LUT5 #(
    .INIT(32'h57FF0000)) 
    s_ready_i_i_1
       (.I0(\aresetn_d_reg[1]_0 ),
        .I1(mi_bvalid_2),
        .I2(m_valid_i_reg_0),
        .I3(m_valid_i_reg_1),
        .I4(s_ready_i_reg_0),
        .O(s_ready_i_i_1_n_0));
  LUT6 #(
    .INIT(64'h557FFF7FFF7FFF7F)) 
    s_ready_i_i_2__3
       (.I0(m_valid_i_reg_0),
        .I1(\gen_single_thread.active_target_enc ),
        .I2(s_axi_bready[0]),
        .I3(\m_payload_i_reg[2]_0 ),
        .I4(\gen_single_thread.active_target_enc_0 ),
        .I5(s_axi_bready[1]),
        .O(m_valid_i_reg_1));
  FDRE #(
    .INIT(1'b0)) 
    s_ready_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_i_i_1_n_0),
        .Q(mi_bready_2),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_27_axic_register_slice" *) 
module audio_AXI_DMA_xbar_1_axi_register_slice_v2_1_27_axic_register_slice__parameterized1_10
   (m_valid_i_reg_0,
    \gen_master_slots[0].w_issuing_cnt_reg[3] ,
    m_valid_i_reg_1,
    \gen_master_slots[0].w_issuing_cnt_reg[3]_0 ,
    E,
    st_mr_bid_0,
    st_mr_bmesg,
    m_axi_bready,
    m_valid_i_reg_2,
    aclk,
    st_aa_awtarget_hot,
    Q,
    p_30_in,
    \gen_master_slots[0].w_issuing_cnt_reg[0] ,
    s_axi_bready,
    \gen_master_slots[0].w_issuing_cnt_reg[0]_0 ,
    m_axi_bid,
    m_axi_bresp,
    s_ready_i_reg_0,
    m_axi_bvalid,
    s_ready_i_reg_1);
  output m_valid_i_reg_0;
  output \gen_master_slots[0].w_issuing_cnt_reg[3] ;
  output m_valid_i_reg_1;
  output \gen_master_slots[0].w_issuing_cnt_reg[3]_0 ;
  output [0:0]E;
  output st_mr_bid_0;
  output [1:0]st_mr_bmesg;
  output [0:0]m_axi_bready;
  input m_valid_i_reg_2;
  input aclk;
  input [1:0]st_aa_awtarget_hot;
  input [3:0]Q;
  input p_30_in;
  input [0:0]\gen_master_slots[0].w_issuing_cnt_reg[0] ;
  input [1:0]s_axi_bready;
  input [0:0]\gen_master_slots[0].w_issuing_cnt_reg[0]_0 ;
  input [0:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input s_ready_i_reg_0;
  input [0:0]m_axi_bvalid;
  input s_ready_i_reg_1;

  wire [0:0]E;
  wire [3:0]Q;
  wire aclk;
  wire [0:0]\gen_master_slots[0].w_issuing_cnt_reg[0] ;
  wire [0:0]\gen_master_slots[0].w_issuing_cnt_reg[0]_0 ;
  wire \gen_master_slots[0].w_issuing_cnt_reg[3] ;
  wire \gen_master_slots[0].w_issuing_cnt_reg[3]_0 ;
  wire [0:0]m_axi_bid;
  wire [0:0]m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire [0:0]m_axi_bvalid;
  wire \m_payload_i[0]_i_1_n_0 ;
  wire \m_payload_i[1]_i_1_n_0 ;
  wire \m_payload_i[2]_i_1_n_0 ;
  wire m_valid_i_reg_0;
  wire m_valid_i_reg_1;
  wire m_valid_i_reg_2;
  wire p_30_in;
  wire [1:0]s_axi_bready;
  wire s_ready_i_i_1_n_0;
  wire s_ready_i_reg_0;
  wire s_ready_i_reg_1;
  wire [1:0]st_aa_awtarget_hot;
  wire st_mr_bid_0;
  wire [1:0]st_mr_bmesg;

  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAA2A)) 
    \gen_arbiter.m_grant_enc_i[0]_i_11 
       (.I0(st_aa_awtarget_hot[1]),
        .I1(m_valid_i_reg_1),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(\gen_master_slots[0].w_issuing_cnt_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAA2A)) 
    \gen_arbiter.m_grant_enc_i[0]_i_16 
       (.I0(st_aa_awtarget_hot[0]),
        .I1(m_valid_i_reg_1),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(\gen_master_slots[0].w_issuing_cnt_reg[3] ));
  LUT6 #(
    .INIT(64'hFFFF00000000FFFE)) 
    \gen_master_slots[0].w_issuing_cnt[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(m_valid_i_reg_1),
        .I5(p_30_in),
        .O(E));
  LUT3 #(
    .INIT(8'hE2)) 
    \m_payload_i[0]_i_1 
       (.I0(m_axi_bresp[0]),
        .I1(m_valid_i_reg_0),
        .I2(st_mr_bmesg[0]),
        .O(\m_payload_i[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \m_payload_i[1]_i_1 
       (.I0(m_axi_bresp[1]),
        .I1(m_valid_i_reg_0),
        .I2(st_mr_bmesg[1]),
        .O(\m_payload_i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \m_payload_i[2]_i_1 
       (.I0(m_axi_bid),
        .I1(m_valid_i_reg_0),
        .I2(st_mr_bid_0),
        .O(\m_payload_i[2]_i_1_n_0 ));
  FDRE \m_payload_i_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_payload_i[0]_i_1_n_0 ),
        .Q(st_mr_bmesg[0]),
        .R(1'b0));
  FDRE \m_payload_i_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_payload_i[1]_i_1_n_0 ),
        .Q(st_mr_bmesg[1]),
        .R(1'b0));
  FDRE \m_payload_i_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_payload_i[2]_i_1_n_0 ),
        .Q(st_mr_bid_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_valid_i_reg_2),
        .Q(m_valid_i_reg_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h57FF0000)) 
    s_ready_i_i_1
       (.I0(s_ready_i_reg_0),
        .I1(m_axi_bvalid),
        .I2(m_valid_i_reg_0),
        .I3(m_valid_i_reg_1),
        .I4(s_ready_i_reg_1),
        .O(s_ready_i_i_1_n_0));
  LUT6 #(
    .INIT(64'h557FFF7FFF7FFF7F)) 
    s_ready_i_i_2__1
       (.I0(m_valid_i_reg_0),
        .I1(\gen_master_slots[0].w_issuing_cnt_reg[0] ),
        .I2(s_axi_bready[0]),
        .I3(st_mr_bid_0),
        .I4(\gen_master_slots[0].w_issuing_cnt_reg[0]_0 ),
        .I5(s_axi_bready[1]),
        .O(m_valid_i_reg_1));
  FDRE #(
    .INIT(1'b0)) 
    s_ready_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_i_i_1_n_0),
        .Q(m_axi_bready),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_27_axic_register_slice" *) 
module audio_AXI_DMA_xbar_1_axi_register_slice_v2_1_27_axic_register_slice__parameterized1_9
   (\aresetn_d_reg[0]_0 ,
    \gen_master_slots[1].w_issuing_cnt_reg[11] ,
    m_valid_i_reg_0,
    \gen_master_slots[1].w_issuing_cnt_reg[11]_0 ,
    E,
    \m_payload_i_reg[2]_0 ,
    \m_payload_i_reg[2]_1 ,
    \m_payload_i_reg[2]_2 ,
    \aresetn_d_reg[0]_1 ,
    m_axi_bready,
    st_mr_bmesg,
    m_valid_i_reg_1,
    aclk,
    aresetn,
    st_aa_awtarget_hot,
    Q,
    p_21_in,
    \s_axi_bvalid[0] ,
    s_axi_bready,
    \s_axi_bvalid[1] ,
    st_mr_bid_0,
    \s_axi_bvalid[1]_0 ,
    s_ready_i_reg_0,
    m_axi_bvalid,
    m_axi_bid,
    m_axi_bresp);
  output \aresetn_d_reg[0]_0 ;
  output \gen_master_slots[1].w_issuing_cnt_reg[11] ;
  output m_valid_i_reg_0;
  output \gen_master_slots[1].w_issuing_cnt_reg[11]_0 ;
  output [0:0]E;
  output \m_payload_i_reg[2]_0 ;
  output \m_payload_i_reg[2]_1 ;
  output \m_payload_i_reg[2]_2 ;
  output \aresetn_d_reg[0]_1 ;
  output [0:0]m_axi_bready;
  output [1:0]st_mr_bmesg;
  input m_valid_i_reg_1;
  input aclk;
  input aresetn;
  input [1:0]st_aa_awtarget_hot;
  input [3:0]Q;
  input p_21_in;
  input [1:0]\s_axi_bvalid[0] ;
  input [1:0]s_axi_bready;
  input [1:0]\s_axi_bvalid[1] ;
  input st_mr_bid_0;
  input [0:0]\s_axi_bvalid[1]_0 ;
  input s_ready_i_reg_0;
  input [0:0]m_axi_bvalid;
  input [0:0]m_axi_bid;
  input [1:0]m_axi_bresp;

  wire [0:0]E;
  wire [3:0]Q;
  wire aclk;
  wire aresetn;
  wire \aresetn_d_reg[0]_0 ;
  wire \aresetn_d_reg[0]_1 ;
  wire \gen_master_slots[1].w_issuing_cnt_reg[11] ;
  wire \gen_master_slots[1].w_issuing_cnt_reg[11]_0 ;
  wire [0:0]m_axi_bid;
  wire [0:0]m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire [0:0]m_axi_bvalid;
  wire \m_payload_i[0]_i_1_n_0 ;
  wire \m_payload_i[1]_i_1_n_0 ;
  wire \m_payload_i[2]_i_1_n_0 ;
  wire \m_payload_i_reg[2]_0 ;
  wire \m_payload_i_reg[2]_1 ;
  wire \m_payload_i_reg[2]_2 ;
  wire m_valid_i_reg_0;
  wire m_valid_i_reg_1;
  wire p_21_in;
  wire [1:0]s_axi_bready;
  wire [1:0]\s_axi_bvalid[0] ;
  wire [1:0]\s_axi_bvalid[1] ;
  wire [0:0]\s_axi_bvalid[1]_0 ;
  wire s_ready_i_i_1_n_0;
  wire s_ready_i_reg_0;
  wire [1:0]st_aa_awtarget_hot;
  wire st_mr_bid_0;
  wire [1:0]st_mr_bmesg;
  wire [1:1]st_mr_bvalid;

  LUT2 #(
    .INIT(4'h8)) 
    \aresetn_d[1]_i_1 
       (.I0(\aresetn_d_reg[0]_0 ),
        .I1(aresetn),
        .O(\aresetn_d_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \aresetn_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(aresetn),
        .Q(\aresetn_d_reg[0]_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAA2A)) 
    \gen_arbiter.m_grant_enc_i[0]_i_10 
       (.I0(st_aa_awtarget_hot[1]),
        .I1(m_valid_i_reg_0),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(\gen_master_slots[1].w_issuing_cnt_reg[11]_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAA2A)) 
    \gen_arbiter.m_grant_enc_i[0]_i_15 
       (.I0(st_aa_awtarget_hot[0]),
        .I1(m_valid_i_reg_0),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(\gen_master_slots[1].w_issuing_cnt_reg[11] ));
  LUT6 #(
    .INIT(64'hFFFF00000000FFFE)) 
    \gen_master_slots[1].w_issuing_cnt[11]_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(m_valid_i_reg_0),
        .I5(p_21_in),
        .O(E));
  LUT3 #(
    .INIT(8'hE2)) 
    \m_payload_i[0]_i_1 
       (.I0(m_axi_bresp[0]),
        .I1(st_mr_bvalid),
        .I2(st_mr_bmesg[0]),
        .O(\m_payload_i[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \m_payload_i[1]_i_1 
       (.I0(m_axi_bresp[1]),
        .I1(st_mr_bvalid),
        .I2(st_mr_bmesg[1]),
        .O(\m_payload_i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \m_payload_i[2]_i_1 
       (.I0(m_axi_bid),
        .I1(st_mr_bvalid),
        .I2(\m_payload_i_reg[2]_0 ),
        .O(\m_payload_i[2]_i_1_n_0 ));
  FDRE \m_payload_i_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_payload_i[0]_i_1_n_0 ),
        .Q(st_mr_bmesg[0]),
        .R(1'b0));
  FDRE \m_payload_i_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_payload_i[1]_i_1_n_0 ),
        .Q(st_mr_bmesg[1]),
        .R(1'b0));
  FDRE \m_payload_i_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_payload_i[2]_i_1_n_0 ),
        .Q(\m_payload_i_reg[2]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_valid_i_reg_1),
        .Q(st_mr_bvalid),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h40FF404040404040)) 
    \s_axi_bvalid[0]_INST_0_i_1 
       (.I0(\m_payload_i_reg[2]_0 ),
        .I1(st_mr_bvalid),
        .I2(\s_axi_bvalid[0] [1]),
        .I3(st_mr_bid_0),
        .I4(\s_axi_bvalid[1]_0 ),
        .I5(\s_axi_bvalid[0] [0]),
        .O(\m_payload_i_reg[2]_1 ));
  LUT6 #(
    .INIT(64'hFF80808080808080)) 
    \s_axi_bvalid[1]_INST_0_i_1 
       (.I0(\m_payload_i_reg[2]_0 ),
        .I1(st_mr_bvalid),
        .I2(\s_axi_bvalid[1] [1]),
        .I3(st_mr_bid_0),
        .I4(\s_axi_bvalid[1]_0 ),
        .I5(\s_axi_bvalid[1] [0]),
        .O(\m_payload_i_reg[2]_2 ));
  LUT5 #(
    .INIT(32'h57FF0000)) 
    s_ready_i_i_1
       (.I0(s_ready_i_reg_0),
        .I1(m_axi_bvalid),
        .I2(st_mr_bvalid),
        .I3(m_valid_i_reg_0),
        .I4(\aresetn_d_reg[0]_0 ),
        .O(s_ready_i_i_1_n_0));
  LUT6 #(
    .INIT(64'h557FFF7FFF7FFF7F)) 
    s_ready_i_i_2__2
       (.I0(st_mr_bvalid),
        .I1(\s_axi_bvalid[0] [1]),
        .I2(s_axi_bready[0]),
        .I3(\m_payload_i_reg[2]_0 ),
        .I4(\s_axi_bvalid[1] [1]),
        .I5(s_axi_bready[1]),
        .O(m_valid_i_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    s_ready_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_i_i_1_n_0),
        .Q(m_axi_bready),
        .R(1'b0));
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
