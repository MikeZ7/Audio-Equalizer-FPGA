-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Mon Jun 16 08:28:04 2025
-- Host        : DESKTOP-SR46PLT running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/Engineering/projekt_sdup/projekt_sdup.gen/sources_1/bd/design_AdjustCoeffsAXI/ip/design_AdjustCoeffsAXI_myip_v1_0_S00_AXI_0_1/design_AdjustCoeffsAXI_myip_v1_0_S00_AXI_0_1_stub.vhdl
-- Design      : design_AdjustCoeffsAXI_myip_v1_0_S00_AXI_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_AdjustCoeffsAXI_myip_v1_0_S00_AXI_0_1 is
  Port ( 
    clk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    i2s_mclk_adc : out STD_LOGIC;
    i2s_bclk_adc : out STD_LOGIC;
    i2s_lr_adc : out STD_LOGIC;
    i2s_din : in STD_LOGIC;
    i2s_mclk_dac : out STD_LOGIC;
    i2s_bclk_dac : out STD_LOGIC;
    i2s_lr_dac : out STD_LOGIC;
    i2s_dout : out STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC
  );

end design_AdjustCoeffsAXI_myip_v1_0_S00_AXI_0_1;

architecture stub of design_AdjustCoeffsAXI_myip_v1_0_S00_AXI_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,reset_n,i2s_mclk_adc,i2s_bclk_adc,i2s_lr_adc,i2s_din,i2s_mclk_dac,i2s_bclk_dac,i2s_lr_dac,i2s_dout,S_AXI_ACLK,S_AXI_ARESETN,S_AXI_AWADDR[7:0],S_AXI_AWPROT[2:0],S_AXI_AWVALID,S_AXI_AWREADY,S_AXI_WDATA[31:0],S_AXI_WSTRB[3:0],S_AXI_WVALID,S_AXI_WREADY,S_AXI_BRESP[1:0],S_AXI_BVALID,S_AXI_BREADY,S_AXI_ARADDR[7:0],S_AXI_ARPROT[2:0],S_AXI_ARVALID,S_AXI_ARREADY,S_AXI_RDATA[31:0],S_AXI_RRESP[1:0],S_AXI_RVALID,S_AXI_RREADY";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "myip_v1_0_S00_AXI,Vivado 2022.2";
begin
end;
