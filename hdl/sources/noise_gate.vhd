library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity noise_gate is
  generic (
    THRESHOLD : integer := 20000  
  );
  port (
    clk      : in std_logic;             -- Zegar
    reset    : in std_logic;             -- Reset
    audio_in : in signed(31 downto 0);   
    audio_out : out signed(31 downto 0)  
  );
end noise_gate;

architecture behavioral of noise_gate is
  signal abs_audio : signed(31 downto 0); 
begin

  -- Wyznaczanie warto�ci bezwzgl�dnej
  process(audio_in)
  begin
    if audio_in(23) = '1' then
      abs_audio <= -audio_in;   
    else
      abs_audio <= audio_in;
    end if;
  end process;

  process(clk)
  begin
    if rising_edge(clk) then
      if reset = '0' then
        audio_out <= (others => '0'); 
      elsif abs_audio < to_signed(THRESHOLD, 32) then
        audio_out <= (others => '0'); 
      else
        audio_out <= audio_in; 
      end if;
    end if;
  end process;

end behavioral;
