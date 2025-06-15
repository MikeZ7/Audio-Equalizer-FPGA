
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity fft_top_module is
    Port (
        -- Clock and Reset
        clk                 : in  std_logic;   -- System clock
        clk_fft : in  std_logic;
        reset_n             : in  std_logic;   -- Active-low reset

        -- Input Data
        audio_in            : in  std_logic_vector(31 downto 0); -- 24-bit audio input
        data_valid_in       : in  std_logic;                    -- Input valid signal

        -- Serialized Output
        serialized_out      : out std_logic_vector(7 downto 0); -- Serialized 8-bit output
        serial_valid_out    : out std_logic
        
--        m_axis_data_tdata_out   : out  std_logic_vector(47 downto 0)                        -- Serialized output valid signal
    );
end fft_top_module;

architecture Behavioral of fft_top_module is

    -- FFT IP Core Signals
    signal s_axis_config_tdata : std_logic_vector(15 downto 0);
    signal s_axis_config_tvalid: std_logic;
    signal s_axis_config_tready: std_logic;

    signal s_axis_data_tdata   : std_logic_vector(47 downto 0); -- 48-bit input (24 real, 24 imag)
    signal s_axis_data_tvalid  : std_logic;
    signal s_axis_data_tready  : std_logic;
    signal s_axis_data_tlast   : std_logic;

    signal m_axis_data_tdata   : std_logic_vector(47 downto 0); -- 48-bit output (24 real, 24 imag)
    signal m_axis_data_tvalid  : std_logic;
    signal m_axis_data_tready  : std_logic;             -- Always ready to consume output let see what happens
    signal m_axis_data_tlast   : std_logic;

    -- Event Signals (Optional, for debugging or error checking)
    signal event_frame_started : std_logic;
    signal event_tlast_unexpected : std_logic;
    signal event_tlast_missing : std_logic;
    signal event_status_channel_halt : std_logic;
    signal event_data_in_channel_halt : std_logic;
    signal event_data_out_channel_halt : std_logic;
    
    
COMPONENT xfft_0
  PORT (
    aclk : IN STD_LOGIC;
    aresetn : IN STD_LOGIC;
    s_axis_config_tdata : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    s_axis_config_tvalid : IN STD_LOGIC;
    s_axis_config_tready : OUT STD_LOGIC;
    s_axis_data_tdata : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
    s_axis_data_tvalid : IN STD_LOGIC;
    s_axis_data_tready : OUT STD_LOGIC;
    s_axis_data_tlast : IN STD_LOGIC;
    m_axis_data_tdata : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
    m_axis_data_tvalid : OUT STD_LOGIC;
    m_axis_data_tready : IN STD_LOGIC;
    m_axis_data_tlast : OUT STD_LOGIC;
    event_frame_started : OUT STD_LOGIC;
    event_tlast_unexpected : OUT STD_LOGIC;
    event_tlast_missing : OUT STD_LOGIC;
    event_status_channel_halt : OUT STD_LOGIC;
    event_data_in_channel_halt : OUT STD_LOGIC;
    event_data_out_channel_halt : OUT STD_LOGIC 
  );
END COMPONENT;
    

begin

    -- Instantiate FFT Input Handler
    fft_input_inst : entity work.fft_input_handler
        port map (
            clk                 => clk,
            reset_n             => reset_n,
            audio_in            => audio_in,
            data_valid_in       => data_valid_in,
            s_axis_config_tdata => s_axis_config_tdata,
            s_axis_config_tvalid=> s_axis_config_tvalid,
            s_axis_config_tready=> s_axis_config_tready,
            s_axis_data_tdata   => s_axis_data_tdata,
            s_axis_data_tvalid  => s_axis_data_tvalid,
            s_axis_data_tready  => s_axis_data_tready,
            s_axis_data_tlast   => s_axis_data_tlast
        );

    -- Instantiate FFT IP Core

your_instance_name : xfft_0
  PORT MAP (
    aclk => clk_fft,
    aresetn => reset_n,
    s_axis_config_tdata => s_axis_config_tdata,
    s_axis_config_tvalid => s_axis_config_tvalid,
    s_axis_config_tready => s_axis_config_tready,
    s_axis_data_tdata => s_axis_data_tdata,
    s_axis_data_tvalid => s_axis_data_tvalid,
    s_axis_data_tready => s_axis_data_tready,
    s_axis_data_tlast => s_axis_data_tlast,
    m_axis_data_tdata => m_axis_data_tdata,
    m_axis_data_tvalid => m_axis_data_tvalid,
    m_axis_data_tready => m_axis_data_tready,
    m_axis_data_tlast => m_axis_data_tlast,
    event_frame_started => event_frame_started,
    event_tlast_unexpected => event_tlast_unexpected,
    event_tlast_missing => event_tlast_missing,
    event_status_channel_halt => event_status_channel_halt,
    event_data_in_channel_halt => event_data_in_channel_halt,
    event_data_out_channel_halt => event_data_out_channel_halt
  );

    -- Instantiate FFT Output Serializer
    fft_output_inst : entity work.fft_output_serializer
        port map (
            clk                 => clk,
            reset_n             => reset_n,
            m_axis_data_tdata   => m_axis_data_tdata,
            m_axis_data_tvalid  => m_axis_data_tvalid,
            m_axis_data_tlast   => m_axis_data_tlast,
            m_axis_data_tready => m_axis_data_tready,
            serialized_out      => serialized_out,
            serial_valid_out    => serial_valid_out
--            m_axis_data_tdata_out => m_axis_data_tdata_out
        );

end Behavioral;
