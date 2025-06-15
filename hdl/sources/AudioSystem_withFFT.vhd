----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.01.2025 00:16:12
-- Design Name: 
-- Module Name: AudioSystem_withFFT - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

-- Top-level VHDL file with 4 instances of 11-filter cascades
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity AudioSystem_withFFT is
    Port (
        clk            : in std_logic;
        clk_fft            : in std_logic;
        reset_n        : in std_logic;
        --UART
        uart_rx_serial        : in std_logic;
        -- uart_tx_serial        : out std_logic;
        --I2S
        i2s_mclk_adc : out std_logic;
        i2s_bclk_adc : out std_logic;
        i2s_lr_adc : out std_logic;
        i2s_din : in std_logic;
        i2s_mclk_dac : out std_logic;
        i2s_bclk_dac : out std_logic;
        i2s_lr_dac : out std_logic;
	    i2s_dout : out std_logic;
	    --Audio path control
        control_signal : in std_logic_vector(1 downto 0); -- 00: Loopback, 01: EQ, 11: Custom Filter
        --UART_TX
        serialized_out      : out std_logic_vector(7 downto 0); -- Serialized 8-bit output
        serial_valid_out    : out std_logic
    );
end AudioSystem_withFFT;

architecture Behavioral of AudioSystem_withFFT is

    component audiosystem is
    port (
        clk  : in std_logic;
        
        i2s_mclk_adc : out std_logic;
        i2s_bclk_adc : out std_logic;
        i2s_lr_adc : out std_logic;
        i2s_din : in std_logic;
        
        i2s_mclk_dac : out std_logic;
        i2s_bclk_dac : out std_logic;
        i2s_lr_dac : out std_logic;
        i2s_dout : out std_logic;
    
        out_l_rx : out signed (31 downto 0);
        out_r_rx : out signed (31 downto 0);
        
        in_l_tx : in signed (31 downto 0);
        in_r_tx : in signed (31 downto 0);
        
        sync : out std_logic
        
        );
    end component;
    
    component UART_RX is
      generic(
        g_CLKS_PER_BIT : integer     -- Needs to be set correctly := 196 clk=22.58065MHz
        );
      port (
        i_Clk       : in  std_logic;
        i_RX_Serial : in  std_logic;
        o_RX_DV     : out std_logic;
        o_RX_Byte   : out std_logic_vector(7 downto 0)
        );
    end component;
    
    component filter_cascade_iir_N11
        Port (
            clk                : in std_logic;
--            reset_n            : in std_logic;
            sample_valid_in    : in std_logic;
            iir_in             : in signed(31 downto 0);
            iir_out            : out signed(31 downto 0);
            sample_valid_out   : out std_logic;
            a0_coeffs          : in std_logic_vector(8*32-1 downto 0);
            a1_coeffs          : in std_logic_vector(8*32-1 downto 0);
            a2_coeffs          : in std_logic_vector(8*32-1 downto 0);
            b1_coeffs          : in std_logic_vector(8*32-1 downto 0);
            b2_coeffs          : in std_logic_vector(8*32-1 downto 0)
        );
    end component;

    -- Filter_Config component declaration
    component Filter_Config is
        generic (
            COEFF_NUMBER : integer
        );
        port (
            clk          : in std_logic;
            reset_n      : in std_logic;
            rx_data      : in std_logic_vector(7 downto 0);
            rx_ready     : in std_logic;
            eq_b0_outputs        : out std_logic_vector(COEFF_NUMBER*32-1 downto 0);
            eq_b1_outputs        : out std_logic_vector(COEFF_NUMBER*32-1 downto 0);
            eq_b2_outputs        : out std_logic_vector(COEFF_NUMBER*32-1 downto 0);
            eq_a1_outputs        : out std_logic_vector(COEFF_NUMBER*32-1 downto 0);
            eq_a2_outputs        : out std_logic_vector(COEFF_NUMBER*32-1 downto 0);
            cust_b0_outputs    : out std_logic_vector(COEFF_NUMBER*32-1 downto 0);
            cust_b1_outputs    : out std_logic_vector(COEFF_NUMBER*32-1 downto 0);
            cust_b2_outputs    : out std_logic_vector(COEFF_NUMBER*32-1 downto 0);
            cust_a1_outputs    : out std_logic_vector(COEFF_NUMBER*32-1 downto 0);
            cust_a2_outputs    : out std_logic_vector(COEFF_NUMBER*32-1 downto 0)
        );
    end component;

    component noise_gate is
        generic (
          THRESHOLD : integer := 5000  -- Próg tłumienia odpowiadający powyzej -70 dBFS
        );
        port (
          clk      : in std_logic;             -- Zegar
          reset    : in std_logic;             -- Reset
          audio_in : in signed(31 downto 0);   -- Wejście audio (24-bitowe signed)
          audio_out : out signed(31 downto 0)  -- Wyjście audio (24-bitowe signed)
        );
    end component;

    component compressor_simple is
        generic (
          THRESHOLD : integer := 524_288; -- Próg kompresji 2^21/2
          RATIO_SHIFT : integer := 2   -- Przesunięcie bitowe dla ratio = 2:1
        );
        port (
          clk      : in std_logic;             -- Zegar
          reset    : in std_logic;             -- Reset
          audio_in : in signed(31 downto 0);   -- Wejście audio (24-bitowe)
          audio_out : out signed(31 downto 0)  -- Wyjście audio (24-bitowe)
        );
      end component;
      
    component fft_top_module is
    port (
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
    end component;
      

    --I2S signals
    signal out_l_rx, out_r_rx : signed(31 downto 0); --TODO
    signal in_l_tx, in_r_tx : signed(31 downto 0); --TODO
    signal i2s_sync : std_logic;

    --UART signals
    signal uart_rx_data_valid : std_logic;
    signal uart_rx_byte : std_logic_vector(7 downto 0);
    constant g_CLKS_PER_BIT : integer := 196;
    
    -- Filter_Config signals
    signal eq_a0, eq_a1, eq_a2, eq_b1, eq_b2 : std_logic_vector(8*32-1 downto 0);
    signal custom_a0, custom_a1, custom_a2, custom_b1, custom_b2 : std_logic_vector(8*32-1 downto 0);

    -- IIR cascade signals
    --custom cascade
    signal iir_in_custom_right, iir_in_custom_left : signed(31 downto 0); --TODO
    signal iir_out_custom_right, iir_out_custom_left : signed(31 downto 0); --TODO
    --eq cascade
    signal iir_in_eq_right, iir_in_eq_left : signed(31 downto 0); --TODO
    signal iir_out_eq_right, iir_out_eq_left : signed(31 downto 0); --TODO

    -- MUX and DMUX signals
    signal mux_out_left, mux_out_right : signed(31 downto 0); --TODO
    signal dmux_in_left, dmux_in_right : signed(31 downto 0); --TODO
    -- DMUX outputs
    -- signal dmux_out_custom_left, dmux_out_custom_right : signed(32 downto 0); --TODO
    -- signal dmux_out_eq_left, dmux_out_eq_right : signed(32 downto 0); --TODO
    signal dmux_out_loopback_left, dmux_out_loopback_right : signed(31 downto 0); --TODO
    -- -- MUX inputs
    -- signal mux_in_custom_left, mux_in_custom_right : signed(32 downto 0); --TODO
    -- signal mux_in_eq_left, mux_in_eq_right : signed(32 downto 0); --TODO
    -- signal mux_in_loopback_left, mux_in_loopback_right : signed(24 downto 0); --TODO
    

begin
    
    noise_gate_left_channel : noise_gate
    generic map (
        THRESHOLD => 5000
    )
    port map (
        clk => clk,
        reset => reset_n,
        audio_in => out_l_rx,
        audio_out => dmux_in_left
    );

    noise_gate_right_channel : noise_gate
    generic map (
        THRESHOLD => 5000
    )
    port map (
        clk => clk,
        reset => reset_n,
        audio_in => out_r_rx,
        audio_out => dmux_in_right
    );

    -- DEMUX Logic for Left Channel
    process(control_signal, dmux_in_left)
    begin
        case control_signal is
            when "00" =>  -- Loopback
                dmux_out_loopback_left <= dmux_in_left;
                iir_in_eq_left <= (others => '0');
                iir_in_custom_left <= (others => '0');
            when "01" =>  -- Equalizer
                dmux_out_loopback_left <= (others => '0');
                iir_in_eq_left <= dmux_in_left;
                iir_in_custom_left <= (others => '0');
            when "10" =>  -- Custom Filter
                dmux_out_loopback_left <= (others => '0');
                iir_in_eq_left <= (others => '0');
                iir_in_custom_left <= dmux_in_left;
            when others =>
                dmux_out_loopback_left <= (others => '0');
                iir_in_eq_left <= (others => '0');
                iir_in_custom_left <= (others => '0');
        end case;
    end process;

    -- MUX Logic for Left Channel
    process(control_signal, dmux_out_loopback_left, iir_out_eq_left, iir_out_custom_left)
    begin
        case control_signal is
            when "00" =>  -- Loopback
                mux_out_left <= dmux_out_loopback_left;
            when "01" =>  -- Equalizer
                mux_out_left <= iir_out_eq_left;
            when "10" =>  -- Custom Filter
                mux_out_left <= iir_out_custom_left;
            when others =>
                mux_out_left <= (others => '0');
        end case;
    end process;

    -- DEMUX Logic for Right Channel
    process(control_signal, dmux_in_right)
    begin
        case control_signal is
            when "00" =>  -- Loopback
                dmux_out_loopback_right <= dmux_in_right;
                iir_in_eq_right <= (others => '0');
                iir_in_custom_right <= (others => '0');
            when "01" =>  -- Equalizer
                dmux_out_loopback_right <= (others => '0');
                iir_in_eq_right <= dmux_in_right;
                iir_in_custom_right <= (others => '0');
            when "10" =>  -- Custom Filter
                dmux_out_loopback_right <= (others => '0');
                iir_in_eq_right <= (others => '0');
                iir_in_custom_right <= dmux_in_right;
            when others =>
                dmux_out_loopback_right <= (others => '0');
                iir_in_eq_right <= (others => '0');
                iir_in_custom_right <= (others => '0');
        end case;
    end process;

    -- MUX Logic for Right Channel
    process(control_signal, dmux_out_loopback_right, iir_out_eq_right, iir_out_custom_right)
    begin
        case control_signal is
            when "00" =>  -- Loopback
                mux_out_right <= dmux_out_loopback_right;
            when "01" =>  -- Equalizer
                mux_out_right <= iir_out_eq_right;
            when "10" =>  -- Custom Filter
                mux_out_right <= iir_out_custom_right;
            when others =>
                mux_out_right <= (others => '0');
        end case;
    end process;

    compresor_left_channel : compressor_simple
    generic map (
        THRESHOLD => 524_288,
        RATIO_SHIFT => 2
    )
    port map (
        clk => clk,
        reset => reset_n,
        audio_in => mux_out_left,
        audio_out => in_l_tx
    );

    compresor_right_channel : compressor_simple
    generic map (
        THRESHOLD => 524_288,
        RATIO_SHIFT => 2
    )
    port map (
        clk => clk,
        reset => reset_n,
        audio_in => mux_out_right,
        audio_out => in_r_tx
    );

    --I2S instance
    I2S_block : audiosystem
    port map(
        clk => clk,
        
        i2s_mclk_adc => i2s_mclk_adc,
        i2s_bclk_adc => i2s_bclk_adc,
        i2s_lr_adc => i2s_lr_adc,
        i2s_din => i2s_din,
        i2s_mclk_dac => i2s_mclk_dac,
        i2s_bclk_dac => i2s_bclk_dac,
        i2s_lr_dac => i2s_lr_dac,
        i2s_dout => i2s_dout,

        out_l_rx => out_l_rx,
        out_r_rx => out_r_rx,
        in_l_tx => in_l_tx,
        in_r_tx => in_r_tx,
        sync => i2s_sync 
    );
    
    --UART instance
    uart_rx_inst : UART_RX
        generic map(
            g_CLKS_PER_BIT => g_CLKS_PER_BIT    -- Needs to be set correctly clk=22.58065MHz
        )
        port map(
            i_Clk => clk,
            i_RX_Serial => uart_rx_serial,
            o_RX_DV => uart_rx_data_valid,     
            o_RX_Byte => uart_rx_byte
        );

    -- Instantiate Filter_Config
    filter_config_inst : Filter_Config
        generic map (
            COEFF_NUMBER => 8
        )
        port map (
            clk          => clk,
            reset_n      => reset_n,
            rx_data      => uart_rx_byte,
            rx_ready     => uart_rx_data_valid,
            eq_b0_outputs        => eq_a0,
            eq_b1_outputs        => eq_a1,
            eq_b2_outputs        => eq_a2,
            eq_a1_outputs        => eq_b1,
            eq_a2_outputs        => eq_b2,
            cust_b0_outputs    => custom_a0,
            cust_b1_outputs    => custom_a1,
            cust_b2_outputs    => custom_a2,
            cust_a1_outputs    => custom_b1,
            cust_a2_outputs    => custom_b2
        );


    -- Instantiate Equalizer cascades
    eq_left: filter_cascade_iir_N11
        Port map (
            clk => clk,
--            reset_n => open,
            sample_valid_in => i2s_sync,
            iir_in => iir_in_eq_left,
            iir_out => iir_out_eq_left,
            sample_valid_out => open,
            a0_coeffs => eq_a0,
            a1_coeffs => eq_a1,
            a2_coeffs => eq_a2,
            b1_coeffs => eq_b1,
            b2_coeffs => eq_b2
        );

    eq_right: filter_cascade_iir_N11
        Port map (
            clk => clk,
--            reset_n => open,
            sample_valid_in => i2s_sync,
            iir_in => iir_in_eq_right,
            iir_out => iir_out_eq_right,
            sample_valid_out => open,
            a0_coeffs => eq_a0,
            a1_coeffs => eq_a1,
            a2_coeffs => eq_a2,
            b1_coeffs => eq_b1,
            b2_coeffs => eq_b2
        );

    -- Instantiate Custom Filter cascades
    custom_left: filter_cascade_iir_N11
        Port map (
            clk => clk,
--            reset_n => open,
            sample_valid_in => i2s_sync,
            iir_in => iir_in_custom_left,
            iir_out => iir_out_custom_left,
            sample_valid_out => open,
            a0_coeffs => custom_a0,
            a1_coeffs => custom_a1,
            a2_coeffs => custom_a2,
            b1_coeffs => custom_b1,
            b2_coeffs => custom_b2
        );

    custom_right: filter_cascade_iir_N11
        Port map (
            clk => clk,
--            reset_n => open,
            sample_valid_in => i2s_sync,
            iir_in => iir_in_custom_right,
            iir_out => iir_out_custom_right,
            sample_valid_out => open,
            a0_coeffs => custom_a0,
            a1_coeffs => custom_a1,
            a2_coeffs => custom_a2,
            b1_coeffs => custom_b1,
            b2_coeffs => custom_b2
        );
        
    right_chanell_FFT : fft_top_module
    port map(
        clk => clk,
        clk_fft => clk_fft,
        reset_n => reset_n,

        -- Input Data
        audio_in => std_logic_vector(in_r_tx),
        data_valid_in => i2s_sync,

        -- Serialized Output
        serialized_out  => serialized_out,
        serial_valid_out => serial_valid_out
    );

end Behavioral;
