library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity fft_input_handler is
    Port (
        -- Clock and Reset
        clk                 : in  std_logic;
        reset_n             : in  std_logic;

        -- Input Data
        audio_in            : in  std_logic_vector(31 downto 0);
        data_valid_in       : in  std_logic;

        -- FFT Core Ports
        s_axis_config_tdata : out std_logic_vector(15 downto 0) := (others => '0');
        s_axis_config_tvalid: out std_logic;
        s_axis_config_tready: in  std_logic;

        s_axis_data_tdata   : out std_logic_vector(47 downto 0); -- Updated to 48 bits
        s_axis_data_tvalid  : out std_logic;
        s_axis_data_tready  : in  std_logic;
        s_axis_data_tlast   : out std_logic
    );
end fft_input_handler;

architecture Behavioral of fft_input_handler is
    constant FFT_SIZE : integer := 1024;
    -- Buffer to store N samples
    type sample_array is array (0 to FFT_SIZE-1) of std_logic_vector(23 downto 0);
    signal sample_buffer : sample_array;
    signal sample_write_count : integer range 0 to FFT_SIZE := 0;
    signal sample_read_count : integer range 0 to FFT_SIZE := 0;

    signal sampling_rate_divider : integer range 0 to 235 := 0;
    signal write_enable : std_logic := '0';
    
    signal scaling_sch_1024 : std_logic_vector(15 downto 0) := "0000001100011101";
    signal scaling_sch_conservative : std_logic_vector(15 downto 0) := "0000010101010111";
    signal scaling_sch_zero : std_logic_vector(15 downto 0) := "0000000000000001";
    signal scaling_sch_full : std_logic_vector(15 downto 0) := "0000011111111111";
    -- State Machine
    type state_type is (IDLE, CONFIGURE, BUFFERING, TRANSFER);
    signal state : state_type := IDLE;

    -- Configuration Latching
    signal config_done : std_logic := '0'; -- Ensure configuration is only done once

begin
    
    
    
    buffering_enable : process (clk, reset_n)
    begin
        if reset_n = '0' then
            write_enable <= '0';
            sampling_rate_divider <= 0;
        elsif rising_edge(clk) then
            if sampling_rate_divider = 235 then -- 100MHz / 44100Hz = 2267
                sampling_rate_divider <= 0;
                write_enable <= '1';
            else
                sampling_rate_divider <= sampling_rate_divider + 1;
                write_enable <= '0';
            end if;
        end if;
    end process;    

    fsm : process (clk, reset_n)
    begin
        if reset_n = '0' then
            -- Reset state
            state <= IDLE;
            sample_write_count <= 0;
            sample_read_count <= 0;
            s_axis_config_tvalid <= '0';
            s_axis_data_tvalid <= '0';
            s_axis_data_tlast <= '0';
            config_done <= '0'; -- Reset configuration flag
        elsif rising_edge(clk) then
            case state is
                when IDLE =>
                    s_axis_data_tlast <= '0';
                    if config_done = '0' then
                        state <= CONFIGURE; -- Go to configure if not already done
                    elsif data_valid_in = '1' then
                        state <= BUFFERING; -- Start buffering when valid data comes in
                    else
                        state <= IDLE; -- Stay in IDLE if no valid data
                    end if;

                when CONFIGURE =>
                    -- Configure FFT (log2(1024) = 10, Forward FFT, SCALE_SCH)
                    s_axis_config_tdata <= scaling_sch_conservative; -- Example from SCALE_SCH
                    s_axis_config_tvalid <= '1';
                    if s_axis_config_tready = '1' then
                        s_axis_config_tvalid <= '0';
                        config_done <= '1'; -- Mark configuration as complete
                        state <= IDLE; -- Return to IDLE after configuring
                    else
                        s_axis_config_tvalid <= '1'; -- Keep valid signal high until ready
                        config_done <= '0'; -- Ensure config_done is not set prematurely
                        state <= CONFIGURE; -- Stay in CONFIGURE state
                    end if;

                when BUFFERING =>
                    if data_valid_in = '1' and write_enable = '1' then
                        if sample_write_count = FFT_SIZE then -- Full buffer ready
                            sample_write_count <= 0;
                            state <= TRANSFER;
                        else
                            sample_buffer(sample_write_count) <= audio_in(23 downto 0); -- Store sample
                            sample_write_count <= sample_write_count + 1;
                        end if;
                   else
                       -- Return to IDLE if data is no longer valid
                       state <= BUFFERING;
                    end if;
                    
                  when TRANSFER =>
                  
                  if s_axis_data_tready = '1' then
                    
                    if sample_read_count < 1024 then
                        s_axis_data_tdata(47 downto 24) <= (others => '0'); -- Clear signal first
                        s_axis_data_tdata(23 downto 0) <= sample_buffer(sample_read_count); -- Real part
                        s_axis_data_tvalid <= '1';
                        
                        if sample_read_count = 1023 then
                            s_axis_data_tlast <= '1';
                            sample_read_count <= 0;
                            s_axis_data_tvalid <= '0';
                            state <= IDLE;
                        else
                            sample_read_count <= sample_read_count + 1;
                            s_axis_data_tlast <= '0';
                        end if;
                    else
                        s_axis_data_tvalid <= '0';
                        s_axis_data_tlast <= '0';
                    end if;
                    
                  else
                    state <= TRANSFER;
                  end if;
            end case;
        end if;
    end process;

end Behavioral;