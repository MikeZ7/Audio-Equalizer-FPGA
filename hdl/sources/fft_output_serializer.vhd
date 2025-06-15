library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity fft_output_serializer is
    Port (
        -- Clock and Reset
        clk                 : in  std_logic;
        reset_n             : in  std_logic;

        -- FFT Core Output
        m_axis_data_tdata   : in  std_logic_vector(47 downto 0); -- FFT output (Real + Imaginary)
        m_axis_data_tvalid  : in  std_logic;                    -- FFT output valid signal
        m_axis_data_tlast   : in  std_logic;                    -- FFT output last sample signal
        m_axis_data_tready  : out std_logic;                    -- FFT output ready signal
         -- FFT output (Real + Imaginary)

        -- Serialized Output
        serialized_out      : out std_logic_vector(7 downto 0); -- Serialized 8-bit output
        serial_valid_out    : out std_logic
--        m_axis_data_tdata_out   : out  std_logic_vector(47 downto 0)                     -- Serialized output valid signal
    );
end fft_output_serializer;

architecture Behavioral of fft_output_serializer is
    
    constant FFT_SIZE : integer := 1024;
    -- State Machine Definition
    type state_type is (IDLE, BUFFERING, START, PAYLOAD, STOP);
    signal state : state_type := IDLE;

    -- FFT Output Buffer
    type out_array is array (0 to FFT_SIZE-1) of std_logic_vector(47 downto 0);
    signal fft_output_buffer : out_array := (others => (others => '0'));

    -- Signals for Serialization
    signal current_sample  : std_logic_vector(23 downto 0); -- Current 24-bit sample (Real part only)
    signal byte_counter    : integer range 0 to 2 := 0;     -- Counter for 3 bytes per sample
    signal sample_counter  : integer range 0 to FFT_SIZE-1 := 0; -- Counter for 1024 samples per frame

    -- Temporary Register for Serialized Output
    signal temp_serialized_out : std_logic_vector(7 downto 0);

begin

    -- Assign Serialized Output
    serialized_out <= temp_serialized_out;
--    m_axis_data_tdata_out <= m_axis_data_tdata;

    process (clk, reset_n)
    begin
        if reset_n = '0' then
            -- Reset Logic
            state <= IDLE;
            temp_serialized_out <= (others => '0');
            serial_valid_out <= '0';
            current_sample <= (others => '0');
            byte_counter <= 0;
            sample_counter <= 0;
            m_axis_data_tready <= '0';
        elsif rising_edge(clk) then
            case state is
                when IDLE =>
                    serial_valid_out <= '0';
                    m_axis_data_tready <= '1';
                    if m_axis_data_tvalid = '1' and sample_counter = 0 then
                        state <= BUFFERING; -- Start new frame
                    end if;
                when BUFFERING =>
                    if sample_counter = FFT_SIZE then
                        m_axis_data_tready <= '0'; -- Stop accepting new samples
                        sample_counter <= 0;
                        state <= START; -- Start serialization
                    else
                        fft_output_buffer(sample_counter) <= m_axis_data_tdata; -- Buffer FFT output
                        sample_counter <= sample_counter + 1;
                    end if;
                when START =>
                    temp_serialized_out <= X"AA"; -- START byte
                    serial_valid_out <= '1';
                    m_axis_data_tready <= '0';
                    state <= PAYLOAD;

                when PAYLOAD =>
                    serial_valid_out <= '1';
                    if sample_counter < FFT_SIZE then
                        case byte_counter is
                            when 0 =>
                                -- Send MSB of the current sample
                                temp_serialized_out <= fft_output_buffer(sample_counter)(23 downto 16);
                                byte_counter <= 1;
                            when 1 =>
                                -- Send Middle Byte
                                temp_serialized_out <= fft_output_buffer(sample_counter)(15 downto 8);
                                byte_counter <= 2;
                            when 2 =>
                                -- Send LSB
                                temp_serialized_out <= fft_output_buffer(sample_counter)(7 downto 0);
                                byte_counter <= 0;
                                sample_counter <= sample_counter + 1;
    
                                -- Load next sample after the current one is serialized
                                if sample_counter < FFT_SIZE then
                                    if m_axis_data_tlast = '1' then
                                        state <= STOP; -- End of frame
                                    end if;
                                else
                                    state <= STOP;
                                end if;
                            when others =>
                                byte_counter <= 0; -- Reset
                        end case;
                    else
                        state <= STOP;
                    end if;

                when STOP =>
                    temp_serialized_out <= X"55"; -- STOP byte
                    serial_valid_out <= '1';
                    state <= IDLE; -- Go back to IDLE
                    sample_counter <= 0; -- Reset for next frame

                when others =>
                    state <= IDLE; -- Default case
            end case;
        end if;
    end process;

end Behavioral;
