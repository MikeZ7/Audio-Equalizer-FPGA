-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Mon Jun 16 08:27:22 2025
-- Host        : DESKTOP-SR46PLT running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/Engineering/projekt_sdup/projekt_sdup.gen/sources_1/bd/design_AdjustCoeffsAXI/ip/design_AdjustCoeffsAXI_clk_wiz_0_1/design_AdjustCoeffsAXI_clk_wiz_0_1_stub.vhdl
-- Design      : design_AdjustCoeffsAXI_clk_wiz_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_AdjustCoeffsAXI_clk_wiz_0_1 is
  Port ( 
    clk_out1 : out STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end design_AdjustCoeffsAXI_clk_wiz_0_1;

architecture stub of design_AdjustCoeffsAXI_clk_wiz_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_out1,locked,clk_in1";
begin
end;
