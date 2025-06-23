----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.06.2025 19:15:14
-- Design Name: 
-- Module Name: AudioSystem_withAXIStremDMA - Behavioral
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

entity AudioSystem_withAXIStremDMA is
    Port (
        clk            : in std_logic;
        reset_n        : in std_logic;
        --UART
        -- uart_rx_serial        : in std_logic;
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
        
        --          audio signal buffers to DMA
        in_left_channel               : out signed(31 downto 0);
        in_right_channel               : out signed(31 downto 0);
        out_left_channel               : out signed(31 downto 0);
        out_right_channel               : out signed(31 downto 0);
        
--        filter bank's coefficients
        eq_a0        : in std_logic_vector(8*32-1 downto 0);
        eq_a1        : in std_logic_vector(8*32-1 downto 0);
        eq_a2        : in std_logic_vector(8*32-1 downto 0);
        eq_b1        : in std_logic_vector(8*32-1 downto 0);
        eq_b2        : in std_logic_vector(8*32-1 downto 0)    
    );
end AudioSystem_withAXIStremDMA;

architecture Behavioral of AudioSystem_withAXIStremDMA is

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


    component noise_gate is
        generic (
          THRESHOLD : integer := 5000  -- Próg t³umienia odpowiadaj¹cy powyzej -70 dBFS
        );
        port (
          clk      : in std_logic;             -- Zegar
          reset    : in std_logic;             -- Reset
          audio_in : in signed(31 downto 0);   -- Wejœcie audio (24-bitowe signed)
          audio_out : out signed(31 downto 0)  -- Wyjœcie audio (24-bitowe signed)
        );
    end component;

    component compressor_simple is
        generic (
          THRESHOLD : integer := 524_288; -- Próg kompresji 2^21/2
          RATIO_SHIFT : integer := 1   -- Przesuniêcie bitowe dla ratio = 2:1
        );
        port (
          clk      : in std_logic;             -- Zegar
          reset    : in std_logic;             -- Reset
          audio_in : in signed(31 downto 0);   -- Wejœcie audio (24-bitowe)
          audio_out : out signed(31 downto 0)  -- Wyjœcie audio (24-bitowe)
        );
      end component;
      

    --I2S signals
    signal out_l_rx, out_r_rx : signed(31 downto 0); --TODO
    signal in_l_tx, in_r_tx : signed(31 downto 0); --TODO
    signal i2s_sync : std_logic;

    --eq cascade
    signal iir_in_eq_right, iir_in_eq_left : signed(31 downto 0); --TODO
    signal iir_out_eq_right, iir_out_eq_left : signed(31 downto 0); --TODO

    -- MUX and DMUX signals
    signal mux_out_left, mux_out_right : signed(31 downto 0); --TODO
    signal dmux_in_left, dmux_in_right : signed(31 downto 0); --TODO

    signal dmux_out_loopback_left, dmux_out_loopback_right : signed(31 downto 0); --TODO
    

begin
    
    noise_gate_left_channel : noise_gate
    generic map (
        THRESHOLD => 20000
    )
    port map (
        clk => clk,
        reset => reset_n,
        audio_in => out_l_rx,
        audio_out => dmux_in_left
    );

    noise_gate_right_channel : noise_gate
    generic map (
        THRESHOLD => 20000
    )
    port map (
        clk => clk,
        reset => reset_n,
        audio_in => out_r_rx,
        audio_out => dmux_in_right
    );
    
    -- buffer the audio samples outside the logic to pass to DMA
    process(dmux_in_left)
    begin
        in_left_channel <= dmux_in_left;
    end process;
    
    process(dmux_in_right)
    begin
        in_right_channel <= dmux_in_right;
    end process;
    
    process(mux_out_left)
    begin
        out_left_channel <= mux_out_left;
    end process;
    
    process(mux_out_right)
    begin
        out_right_channel <= mux_out_right;
    end process;
    
    
    -- DEMUX Logic for Left Channel
    process(control_signal, dmux_in_left)
    begin
        case control_signal is
            when "00" =>  -- Loopback
                dmux_out_loopback_left <= dmux_in_left;
                iir_in_eq_left <= (others => '0');
            when "01" =>  -- Equalizer
                dmux_out_loopback_left <= (others => '0');
                iir_in_eq_left <= dmux_in_left;
            when others =>
                dmux_out_loopback_left <= (others => '0');
                iir_in_eq_left <= (others => '0');
        end case;
    end process;

    -- MUX Logic for Left Channel
    process(control_signal, dmux_out_loopback_left, iir_out_eq_left)
    begin
        case control_signal is
            when "00" =>  -- Loopback
                mux_out_left <= dmux_out_loopback_left;
            when "01" =>  -- Equalizer
                mux_out_left <= iir_out_eq_left;
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
            when "01" =>  -- Equalizer
                dmux_out_loopback_right <= (others => '0');
                iir_in_eq_right <= dmux_in_right;
            when others =>
                dmux_out_loopback_right <= (others => '0');
                iir_in_eq_right <= (others => '0');
        end case;
    end process;

    -- MUX Logic for Right Channel
    process(control_signal, dmux_out_loopback_right, iir_out_eq_right)
    begin
        case control_signal is
            when "00" =>  -- Loopback
                mux_out_right <= dmux_out_loopback_right;
            when "01" =>  -- Equalizer
                mux_out_right <= iir_out_eq_right;
            when others =>
                mux_out_right <= (others => '0');
        end case;
    end process;

    compresor_left_channel : compressor_simple
    generic map (
        THRESHOLD => 524_288, -- Próg kompresji 2^21/2
        RATIO_SHIFT => 1
    )
    port map (
        clk => clk,
        reset => reset_n,
        audio_in => mux_out_left,
        audio_out => in_l_tx
    );

    compresor_right_channel : compressor_simple
    generic map (
        THRESHOLD => 524_288, -- Próg kompresji 2^21/2
        RATIO_SHIFT => 1
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

    -- Instantiate cascades
    eq_left: filter_cascade_iir_N11
        Port map (
            clk => clk,
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
        
end Behavioral;