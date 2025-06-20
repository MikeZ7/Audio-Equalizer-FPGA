--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
--Date        : Mon Jun 16 08:25:40 2025
--Host        : DESKTOP-SR46PLT running 64-bit major release  (build 9200)
--Command     : generate_target design_AdjustCoeffsAXI_wrapper.bd
--Design      : design_AdjustCoeffsAXI_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_AdjustCoeffsAXI_wrapper is
  port (
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    i2s_bclk_adc_0 : out STD_LOGIC;
    i2s_bclk_dac_0 : out STD_LOGIC;
    i2s_din_0 : in STD_LOGIC;
    i2s_dout_0 : out STD_LOGIC;
    i2s_lr_adc_0 : out STD_LOGIC;
    i2s_lr_dac_0 : out STD_LOGIC;
    i2s_mclk_adc_0 : out STD_LOGIC;
    i2s_mclk_dac_0 : out STD_LOGIC;
    sys_clock : in STD_LOGIC
  );
end design_AdjustCoeffsAXI_wrapper;

architecture STRUCTURE of design_AdjustCoeffsAXI_wrapper is
  component design_AdjustCoeffsAXI is
  port (
    sys_clock : in STD_LOGIC;
    DDR_cas_n : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    i2s_lr_dac_0 : out STD_LOGIC;
    i2s_din_0 : in STD_LOGIC;
    i2s_lr_adc_0 : out STD_LOGIC;
    i2s_bclk_dac_0 : out STD_LOGIC;
    i2s_mclk_dac_0 : out STD_LOGIC;
    i2s_bclk_adc_0 : out STD_LOGIC;
    i2s_mclk_adc_0 : out STD_LOGIC;
    i2s_dout_0 : out STD_LOGIC
  );
  end component design_AdjustCoeffsAXI;
begin
design_AdjustCoeffsAXI_i: component design_AdjustCoeffsAXI
     port map (
      DDR_addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_ba(2 downto 0) => DDR_ba(2 downto 0),
      DDR_cas_n => DDR_cas_n,
      DDR_ck_n => DDR_ck_n,
      DDR_ck_p => DDR_ck_p,
      DDR_cke => DDR_cke,
      DDR_cs_n => DDR_cs_n,
      DDR_dm(3 downto 0) => DDR_dm(3 downto 0),
      DDR_dq(31 downto 0) => DDR_dq(31 downto 0),
      DDR_dqs_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_dqs_p(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_odt => DDR_odt,
      DDR_ras_n => DDR_ras_n,
      DDR_reset_n => DDR_reset_n,
      DDR_we_n => DDR_we_n,
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      i2s_bclk_adc_0 => i2s_bclk_adc_0,
      i2s_bclk_dac_0 => i2s_bclk_dac_0,
      i2s_din_0 => i2s_din_0,
      i2s_dout_0 => i2s_dout_0,
      i2s_lr_adc_0 => i2s_lr_adc_0,
      i2s_lr_dac_0 => i2s_lr_dac_0,
      i2s_mclk_adc_0 => i2s_mclk_adc_0,
      i2s_mclk_dac_0 => i2s_mclk_dac_0,
      sys_clock => sys_clock
    );
end STRUCTURE;
