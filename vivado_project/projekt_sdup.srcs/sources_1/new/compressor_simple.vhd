library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity compressor_simple is
  generic (
    THRESHOLD : integer := 1048576/2;
    RATIO_SHIFT : integer := 1
  );
  port (
    clk      : in std_logic;
    reset    : in std_logic;
    audio_in : in signed(31 downto 0);
    audio_out : out signed(31 downto 0)
  );
end compressor_simple;

architecture behavioral of compressor_simple is
  signal abs_audio : signed(31 downto 0);
  signal diff : signed(31 downto 0);
  signal compressed : signed(31 downto 0);
begin

  process(audio_in)
  begin
    if audio_in(23) = '1' then
      abs_audio <= -audio_in;
    else
      abs_audio <= audio_in;
    end if;
  end process;

  -- Kompresja sygna?u
  process(clk)
  begin
    if rising_edge(clk) then
      if reset = '0' then
        audio_out <= (others => '0'); 
      elsif abs_audio > to_signed(THRESHOLD, 32) then
        
        diff <= abs_audio - to_signed(THRESHOLD, 32);

        compressed <= to_signed(THRESHOLD, 32) + (diff srl RATIO_SHIFT);

        
        if audio_in(23) = '1' then
          audio_out <= -compressed;
        else
          audio_out <= compressed;
        end if;
      else
        audio_out <= audio_in; 
      end if;
    end if;
  end process;

end behavioral;