----------------------------------------------------------------------------------
-- Engineer: github.com/YetAnotherElectronicsChannel
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity audiosystem is
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

--    out_l_rx : out signed (23 downto 0);
--    out_r_rx : out signed (23 downto 0);
    
--    in_l_tx : in signed (23 downto 0)out
--    in_r_tx : in signed (23 downto 0);
    out_l_rx : out signed (31 downto 0);
    out_r_rx : out signed (31 downto 0);
    
    in_l_tx : in signed (31 downto 0);
    in_r_tx : in signed (31 downto 0);
    
    sync : out std_logic
	
    );
end audiosystem;

architecture Behavioral of audiosystem is


   
component i2s_rxtx is
    port (
    clk : in std_logic;
    
    i2s_bclk : in std_logic;
    i2s_lr : in std_logic;
    i2s_din : in std_logic;
    i2s_dout : out std_logic;
    
    out_l : out signed (23 downto 0);
    out_r : out signed (23 downto 0);
    
    in_l : in signed (23 downto 0);
    in_r : in signed (23 downto 0);
    
    sync  : out std_logic
    );
end component;
 

--24 bit i2s i/o signals
--signal i2s_l_in, i2s_r_in, i2s_l_out, i2s_r_out : signed (31 downto 0):= (others=>'0');


-- 24-bit I2S I/O signals
signal i2s_l_in_24, i2s_r_in_24 : signed (23 downto 0) := (others => '0');
signal i2s_l_out_24, i2s_r_out_24 : signed (23 downto 0) := (others => '0');



--timers for i2s clk generation
signal mclk_state : std_logic := '1';
signal lr_counter : unsigned (7 downto 0):= (others=>'0');
signal bclk_counter : unsigned(1 downto 0):= (others=>'0');



begin

out_l_rx <= resize(i2s_l_out_24, 32);
out_r_rx <= resize(i2s_r_out_24, 32);

i2s_l_in_24 <= resize(in_l_tx, 24);
i2s_r_in_24 <= resize(in_r_tx, 24);

-- i2s clock generation
-- clk = 25 MHz
-- mclk = clk/2 = 12.5 MHz (ideally 12.288 MHz)
-- bclk = clk/4 = 6.25 MHz (ideally 6.144 MHz)
-- lr = clk/256 = 97.6 kHz (ideally 96 kHz)

i2s_mclk_adc <= mclk_state;
i2s_mclk_dac <= mclk_state;
i2s_bclk_adc <= bclk_counter(1);
i2s_bclk_dac <= bclk_counter(1);
i2s_lr_adc <= lr_counter(7); 
i2s_lr_dac <= lr_counter(7); 

process (clk)
begin
if (rising_edge(clk)) then

	mclk_state <= not mclk_state;
	lr_counter <= lr_counter+to_unsigned(1,8);
	bclk_counter <= bclk_counter+to_unsigned(1,2);          

end if;

end process;


rxtx : i2s_rxtx
    port map (
        clk => clk,
        
        
        i2s_bclk => bclk_counter(1),
		i2s_lr => lr_counter(7),
        i2s_din => i2s_din,
        i2s_dout => i2s_dout,
        
        out_l => i2s_l_out_24,
        out_r => i2s_r_out_24,
        
        in_l => i2s_l_in_24,
        in_r => i2s_r_in_24,
        
        sync => sync
    );



end Behavioral;