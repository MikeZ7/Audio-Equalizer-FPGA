-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Fri Jun 20 15:38:09 2025
-- Host        : DESKTOP-SR46PLT running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ audio_AXI_DMA_audio_axis_tx_1_0_sim_netlist.vhdl
-- Design      : audio_AXI_DMA_audio_axis_tx_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_axis_tx is
  port (
    m_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 63 downto 0 );
    clk : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    resetn : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_axis_tx;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_axis_tx is
  signal count : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \count_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_reg_n_0_[10]\ : STD_LOGIC;
  signal \count_reg_n_0_[11]\ : STD_LOGIC;
  signal \count_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_reg_n_0_[4]\ : STD_LOGIC;
  signal \count_reg_n_0_[5]\ : STD_LOGIC;
  signal \count_reg_n_0_[6]\ : STD_LOGIC;
  signal \count_reg_n_0_[7]\ : STD_LOGIC;
  signal \count_reg_n_0_[8]\ : STD_LOGIC;
  signal \count_reg_n_0_[9]\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 11 downto 1 );
  signal \m_axis_tdata[63]_i_1_n_0\ : STD_LOGIC;
  signal \^m_axis_tlast\ : STD_LOGIC;
  signal m_axis_tlast_i_1_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_2_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_3_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_4_n_0 : STD_LOGIC;
  signal m_axis_tvalid_i_1_n_0 : STD_LOGIC;
  signal \plusOp_carry__0_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_n_1\ : STD_LOGIC;
  signal \plusOp_carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_carry__0_n_3\ : STD_LOGIC;
  signal \plusOp_carry__1_n_2\ : STD_LOGIC;
  signal \plusOp_carry__1_n_3\ : STD_LOGIC;
  signal plusOp_carry_n_0 : STD_LOGIC;
  signal plusOp_carry_n_1 : STD_LOGIC;
  signal plusOp_carry_n_2 : STD_LOGIC;
  signal plusOp_carry_n_3 : STD_LOGIC;
  signal \NLW_plusOp_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_plusOp_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count[10]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count[5]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count[7]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \count[8]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \count[9]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of m_axis_tlast_i_4 : label is "soft_lutpair0";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of plusOp_carry : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__1\ : label is 35;
begin
  m_axis_tlast <= \^m_axis_tlast\;
\count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg_n_0_[0]\,
      O => count(0)
    );
\count[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_axis_tlast_i_2_n_0,
      I1 => data0(10),
      O => count(10)
    );
\count[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_axis_tlast_i_2_n_0,
      I1 => data0(11),
      O => count(11)
    );
\count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_axis_tlast_i_2_n_0,
      I1 => data0(1),
      O => count(1)
    );
\count[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_axis_tlast_i_2_n_0,
      I1 => data0(2),
      O => count(2)
    );
\count[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_axis_tlast_i_2_n_0,
      I1 => data0(3),
      O => count(3)
    );
\count[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_axis_tlast_i_2_n_0,
      I1 => data0(4),
      O => count(4)
    );
\count[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_axis_tlast_i_2_n_0,
      I1 => data0(5),
      O => count(5)
    );
\count[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_axis_tlast_i_2_n_0,
      I1 => data0(6),
      O => count(6)
    );
\count[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_axis_tlast_i_2_n_0,
      I1 => data0(7),
      O => count(7)
    );
\count[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_axis_tlast_i_2_n_0,
      I1 => data0(8),
      O => count(8)
    );
\count[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_axis_tlast_i_2_n_0,
      I1 => data0(9),
      O => count(9)
    );
\count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tready,
      D => count(0),
      Q => \count_reg_n_0_[0]\,
      R => m_axis_tvalid_i_1_n_0
    );
\count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tready,
      D => count(10),
      Q => \count_reg_n_0_[10]\,
      R => m_axis_tvalid_i_1_n_0
    );
\count_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tready,
      D => count(11),
      Q => \count_reg_n_0_[11]\,
      R => m_axis_tvalid_i_1_n_0
    );
\count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tready,
      D => count(1),
      Q => \count_reg_n_0_[1]\,
      R => m_axis_tvalid_i_1_n_0
    );
\count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tready,
      D => count(2),
      Q => \count_reg_n_0_[2]\,
      R => m_axis_tvalid_i_1_n_0
    );
\count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tready,
      D => count(3),
      Q => \count_reg_n_0_[3]\,
      R => m_axis_tvalid_i_1_n_0
    );
\count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tready,
      D => count(4),
      Q => \count_reg_n_0_[4]\,
      R => m_axis_tvalid_i_1_n_0
    );
\count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tready,
      D => count(5),
      Q => \count_reg_n_0_[5]\,
      R => m_axis_tvalid_i_1_n_0
    );
\count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tready,
      D => count(6),
      Q => \count_reg_n_0_[6]\,
      R => m_axis_tvalid_i_1_n_0
    );
\count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tready,
      D => count(7),
      Q => \count_reg_n_0_[7]\,
      R => m_axis_tvalid_i_1_n_0
    );
\count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tready,
      D => count(8),
      Q => \count_reg_n_0_[8]\,
      R => m_axis_tvalid_i_1_n_0
    );
\count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tready,
      D => count(9),
      Q => \count_reg_n_0_[9]\,
      R => m_axis_tvalid_i_1_n_0
    );
\m_axis_tdata[63]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => resetn,
      I1 => m_axis_tready,
      O => \m_axis_tdata[63]_i_1_n_0\
    );
\m_axis_tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[63]_i_1_n_0\,
      D => D(0),
      Q => m_axis_tdata(0),
      R => '0'
    );
\m_axis_tdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[63]_i_1_n_0\,
      D => D(10),
      Q => m_axis_tdata(10),
      R => '0'
    );
\m_axis_tdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[63]_i_1_n_0\,
      D => D(11),
      Q => m_axis_tdata(11),
      R => '0'
    );
\m_axis_tdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[63]_i_1_n_0\,
      D => D(12),
      Q => m_axis_tdata(12),
      R => '0'
    );
\m_axis_tdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[63]_i_1_n_0\,
      D => D(13),
      Q => m_axis_tdata(13),
      R => '0'
    );
\m_axis_tdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[63]_i_1_n_0\,
      D => D(14),
      Q => m_axis_tdata(14),
      R => '0'
    );
\m_axis_tdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[63]_i_1_n_0\,
      D => D(15),
      Q => m_axis_tdata(15),
      R => '0'
    );
\m_axis_tdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[63]_i_1_n_0\,
      D => D(16),
      Q => m_axis_tdata(16),
      R => '0'
    );
\m_axis_tdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[63]_i_1_n_0\,
      D => D(17),
      Q => m_axis_tdata(17),
      R => '0'
    );
\m_axis_tdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[63]_i_1_n_0\,
      D => D(18),
      Q => m_axis_tdata(18),
      R => '0'
    );
\m_axis_tdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[63]_i_1_n_0\,
      D => D(19),
      Q => m_axis_tdata(19),
      R => '0'
    );
\m_axis_tdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[63]_i_1_n_0\,
      D => D(1),
      Q => m_axis_tdata(1),
      R => '0'
    );
\m_axis_tdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[63]_i_1_n_0\,
      D => D(20),
      Q => m_axis_tdata(20),
      R => '0'
    );
\m_axis_tdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[63]_i_1_n_0\,
      D => D(21),
      Q => m_axis_tdata(21),
      R => '0'
    );
\m_axis_tdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[63]_i_1_n_0\,
      D => D(22),
      Q => m_axis_tdata(22),
      R => '0'
    );
\m_axis_tdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[63]_i_1_n_0\,
      D => D(23),
      Q => m_axis_tdata(23),
      R => '0'
    );
\m_axis_tdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[63]_i_1_n_0\,
      D => D(24),
      Q => m_axis_tdata(24),
      R => '0'
    );
\m_axis_tdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[63]_i_1_n_0\,
      D => D(25),
      Q => m_axis_tdata(25),
      R => '0'
    );
\m_axis_tdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[63]_i_1_n_0\,
      D => D(26),
      Q => m_axis_tdata(26),
      R => '0'
    );
\m_axis_tdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[63]_i_1_n_0\,
      D => D(27),
      Q => m_axis_tdata(27),
      R => '0'
    );
\m_axis_tdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[63]_i_1_n_0\,
      D => D(28),
      Q => m_axis_tdata(28),
      R => '0'
    );
\m_axis_tdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[63]_i_1_n_0\,
      D => D(29),
      Q => m_axis_tdata(29),
      R => '0'
    );
\m_axis_tdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[63]_i_1_n_0\,
      D => D(2),
      Q => m_axis_tdata(2),
      R => '0'
    );
\m_axis_tdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[63]_i_1_n_0\,
      D => D(30),
      Q => m_axis_tdata(30),
      R => '0'
    );
\m_axis_tdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[63]_i_1_n_0\,
      D => D(31),
      Q => m_axis_tdata(31),
      R => '0'
    );
\m_axis_tdata_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[63]_i_1_n_0\,
      D => D(32),
      Q => m_axis_tdata(32),
      R => '0'
    );
\m_axis_tdata_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[63]_i_1_n_0\,
      D => D(33),
      Q => m_axis_tdata(33),
      R => '0'
    );
\m_axis_tdata_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[63]_i_1_n_0\,
      D => D(34),
      Q => m_axis_tdata(34),
      R => '0'
    );
\m_axis_tdata_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[63]_i_1_n_0\,
      D => D(35),
      Q => m_axis_tdata(35),
      R => '0'
    );
\m_axis_tdata_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[63]_i_1_n_0\,
      D => D(36),
      Q => m_axis_tdata(36),
      R => '0'
    );
\m_axis_tdata_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[63]_i_1_n_0\,
      D => D(37),
      Q => m_axis_tdata(37),
      R => '0'
    );
\m_axis_tdata_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[63]_i_1_n_0\,
      D => D(38),
      Q => m_axis_tdata(38),
      R => '0'
    );
\m_axis_tdata_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[63]_i_1_n_0\,
      D => D(39),
      Q => m_axis_tdata(39),
      R => '0'
    );
\m_axis_tdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[63]_i_1_n_0\,
      D => D(3),
      Q => m_axis_tdata(3),
      R => '0'
    );
\m_axis_tdata_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[63]_i_1_n_0\,
      D => D(40),
      Q => m_axis_tdata(40),
      R => '0'
    );
\m_axis_tdata_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[63]_i_1_n_0\,
      D => D(41),
      Q => m_axis_tdata(41),
      R => '0'
    );
\m_axis_tdata_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[63]_i_1_n_0\,
      D => D(42),
      Q => m_axis_tdata(42),
      R => '0'
    );
\m_axis_tdata_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[63]_i_1_n_0\,
      D => D(43),
      Q => m_axis_tdata(43),
      R => '0'
    );
\m_axis_tdata_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[63]_i_1_n_0\,
      D => D(44),
      Q => m_axis_tdata(44),
      R => '0'
    );
\m_axis_tdata_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[63]_i_1_n_0\,
      D => D(45),
      Q => m_axis_tdata(45),
      R => '0'
    );
\m_axis_tdata_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[63]_i_1_n_0\,
      D => D(46),
      Q => m_axis_tdata(46),
      R => '0'
    );
\m_axis_tdata_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[63]_i_1_n_0\,
      D => D(47),
      Q => m_axis_tdata(47),
      R => '0'
    );
\m_axis_tdata_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[63]_i_1_n_0\,
      D => D(48),
      Q => m_axis_tdata(48),
      R => '0'
    );
\m_axis_tdata_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[63]_i_1_n_0\,
      D => D(49),
      Q => m_axis_tdata(49),
      R => '0'
    );
\m_axis_tdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[63]_i_1_n_0\,
      D => D(4),
      Q => m_axis_tdata(4),
      R => '0'
    );
\m_axis_tdata_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[63]_i_1_n_0\,
      D => D(50),
      Q => m_axis_tdata(50),
      R => '0'
    );
\m_axis_tdata_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[63]_i_1_n_0\,
      D => D(51),
      Q => m_axis_tdata(51),
      R => '0'
    );
\m_axis_tdata_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[63]_i_1_n_0\,
      D => D(52),
      Q => m_axis_tdata(52),
      R => '0'
    );
\m_axis_tdata_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[63]_i_1_n_0\,
      D => D(53),
      Q => m_axis_tdata(53),
      R => '0'
    );
\m_axis_tdata_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[63]_i_1_n_0\,
      D => D(54),
      Q => m_axis_tdata(54),
      R => '0'
    );
\m_axis_tdata_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[63]_i_1_n_0\,
      D => D(55),
      Q => m_axis_tdata(55),
      R => '0'
    );
\m_axis_tdata_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[63]_i_1_n_0\,
      D => D(56),
      Q => m_axis_tdata(56),
      R => '0'
    );
\m_axis_tdata_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[63]_i_1_n_0\,
      D => D(57),
      Q => m_axis_tdata(57),
      R => '0'
    );
\m_axis_tdata_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[63]_i_1_n_0\,
      D => D(58),
      Q => m_axis_tdata(58),
      R => '0'
    );
\m_axis_tdata_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[63]_i_1_n_0\,
      D => D(59),
      Q => m_axis_tdata(59),
      R => '0'
    );
\m_axis_tdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[63]_i_1_n_0\,
      D => D(5),
      Q => m_axis_tdata(5),
      R => '0'
    );
\m_axis_tdata_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[63]_i_1_n_0\,
      D => D(60),
      Q => m_axis_tdata(60),
      R => '0'
    );
\m_axis_tdata_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[63]_i_1_n_0\,
      D => D(61),
      Q => m_axis_tdata(61),
      R => '0'
    );
\m_axis_tdata_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[63]_i_1_n_0\,
      D => D(62),
      Q => m_axis_tdata(62),
      R => '0'
    );
\m_axis_tdata_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[63]_i_1_n_0\,
      D => D(63),
      Q => m_axis_tdata(63),
      R => '0'
    );
\m_axis_tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[63]_i_1_n_0\,
      D => D(6),
      Q => m_axis_tdata(6),
      R => '0'
    );
\m_axis_tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[63]_i_1_n_0\,
      D => D(7),
      Q => m_axis_tdata(7),
      R => '0'
    );
\m_axis_tdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[63]_i_1_n_0\,
      D => D(8),
      Q => m_axis_tdata(8),
      R => '0'
    );
\m_axis_tdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[63]_i_1_n_0\,
      D => D(9),
      Q => m_axis_tdata(9),
      R => '0'
    );
m_axis_tlast_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F40"
    )
        port map (
      I0 => m_axis_tlast_i_2_n_0,
      I1 => resetn,
      I2 => m_axis_tready,
      I3 => \^m_axis_tlast\,
      O => m_axis_tlast_i_1_n_0
    );
m_axis_tlast_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBFFFFFFF"
    )
        port map (
      I0 => m_axis_tlast_i_3_n_0,
      I1 => \count_reg_n_0_[5]\,
      I2 => \count_reg_n_0_[4]\,
      I3 => \count_reg_n_0_[7]\,
      I4 => \count_reg_n_0_[6]\,
      I5 => m_axis_tlast_i_4_n_0,
      O => m_axis_tlast_i_2_n_0
    );
m_axis_tlast_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => \count_reg_n_0_[9]\,
      I1 => \count_reg_n_0_[8]\,
      I2 => \count_reg_n_0_[11]\,
      I3 => \count_reg_n_0_[10]\,
      O => m_axis_tlast_i_3_n_0
    );
m_axis_tlast_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \count_reg_n_0_[1]\,
      I1 => \count_reg_n_0_[0]\,
      I2 => \count_reg_n_0_[3]\,
      I3 => \count_reg_n_0_[2]\,
      O => m_axis_tlast_i_4_n_0
    );
m_axis_tlast_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => m_axis_tlast_i_1_n_0,
      Q => \^m_axis_tlast\,
      R => '0'
    );
m_axis_tvalid_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => resetn,
      O => m_axis_tvalid_i_1_n_0
    );
m_axis_tvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tready,
      D => m_axis_tready,
      Q => m_axis_tvalid,
      R => m_axis_tvalid_i_1_n_0
    );
plusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => plusOp_carry_n_0,
      CO(2) => plusOp_carry_n_1,
      CO(1) => plusOp_carry_n_2,
      CO(0) => plusOp_carry_n_3,
      CYINIT => \count_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3) => \count_reg_n_0_[4]\,
      S(2) => \count_reg_n_0_[3]\,
      S(1) => \count_reg_n_0_[2]\,
      S(0) => \count_reg_n_0_[1]\
    );
\plusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => plusOp_carry_n_0,
      CO(3) => \plusOp_carry__0_n_0\,
      CO(2) => \plusOp_carry__0_n_1\,
      CO(1) => \plusOp_carry__0_n_2\,
      CO(0) => \plusOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3) => \count_reg_n_0_[8]\,
      S(2) => \count_reg_n_0_[7]\,
      S(1) => \count_reg_n_0_[6]\,
      S(0) => \count_reg_n_0_[5]\
    );
\plusOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__0_n_0\,
      CO(3 downto 2) => \NLW_plusOp_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \plusOp_carry__1_n_2\,
      CO(0) => \plusOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_plusOp_carry__1_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(11 downto 9),
      S(3) => '0',
      S(2) => \count_reg_n_0_[11]\,
      S(1) => \count_reg_n_0_[10]\,
      S(0) => \count_reg_n_0_[9]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    sample_l : in STD_LOGIC_VECTOR ( 31 downto 0 );
    sample_r : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "audio_AXI_DMA_audio_axis_tx_1_0,audio_axis_tx,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "audio_axis_tx,Vivado 2022.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axis, ASSOCIATED_RESET resetn, FREQ_HZ 25800000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis TLAST";
  attribute x_interface_info of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute x_interface_info of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute x_interface_info of resetn : signal is "xilinx.com:signal:reset:1.0 resetn RST";
  attribute x_interface_parameter of resetn : signal is "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute x_interface_parameter of m_axis_tdata : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 25800000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_axis_tx
     port map (
      D(63 downto 32) => sample_r(31 downto 0),
      D(31 downto 0) => sample_l(31 downto 0),
      clk => clk,
      m_axis_tdata(63 downto 0) => m_axis_tdata(63 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      resetn => resetn
    );
end STRUCTURE;
