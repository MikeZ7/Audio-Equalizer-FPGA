-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Fri Jun 20 15:38:09 2025
-- Host        : DESKTOP-SR46PLT running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/Engineering/projekt_sdup/projekt_sdup.gen/sources_1/bd/audio_AXI_DMA/ip/audio_AXI_DMA_audio_axis_tx_1_0/audio_AXI_DMA_audio_axis_tx_1_0_stub.vhdl
-- Design      : audio_AXI_DMA_audio_axis_tx_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity audio_AXI_DMA_audio_axis_tx_1_0 is
  Port ( 
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    sample_l : in STD_LOGIC_VECTOR ( 31 downto 0 );
    sample_r : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC
  );

end audio_AXI_DMA_audio_axis_tx_1_0;

architecture stub of audio_AXI_DMA_audio_axis_tx_1_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,resetn,sample_l[31:0],sample_r[31:0],m_axis_tdata[63:0],m_axis_tvalid,m_axis_tlast,m_axis_tready";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "audio_axis_tx,Vivado 2022.2";
begin
end;
