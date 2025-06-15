--library ieee;
--use ieee.std_logic_1164.all;
--use ieee.numeric_std.all;

--entity compressor_simple is
--  generic (
--    THRESHOLD : integer := 1048576/2;
--    RATIO_SHIFT : integer := 1
--  );
--  port (
--    clk      : in std_logic;
--    reset    : in std_logic;
--    audio_in : in signed(31 downto 0);
--    audio_out : out signed(31 downto 0)
--  );
--end compressor_simple;

--architecture behavioral of compressor_simple is
--  signal abs_audio : signed(31 downto 0);
--  signal diff : signed(31 downto 0);
--  signal compressed : signed(31 downto 0);
--begin

--  process(audio_in)
--  begin
--    if audio_in(23) = '1' then
--      abs_audio <= -audio_in;
--    else
--      abs_audio <= audio_in;
--    end if;
--  end process;

--  -- Kompresja sygnaï¿½u
--  process(clk)
--  begin
--    if rising_edge(clk) then
--      if reset = '0' then
--        audio_out <= (others => '0'); 
--      elsif abs_audio > to_signed(THRESHOLD, 32) then
        
--        diff <= abs_audio - to_signed(THRESHOLD, 32);

--        compressed <= to_signed(THRESHOLD, 32) + (diff srl RATIO_SHIFT);

        
--        if audio_in(23) = '1' then
--          audio_out <= -compressed;
--        else
--          audio_out <= compressed;
--        end if;
--      else
--        audio_out <= audio_in; 
--      end if;
--    end if;
--  end process;

--end behavioral;


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity compressor_simple is
  generic (
    THRESHOLD : integer := 8_388_608;
    RATIO_SHIFT : integer := 2;
    ATTACK_RATE : integer := 5000;   -- szybkoœæ ataku (im wiêksza, tym wolniejszy attack)
    RELEASE_RATE : integer := 1000   -- szybkoœæ release (im wiêksza, tym wolniejszy release)
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

  signal current_gain : integer := 0;  -- aktualny gain reduction w jednostkach "surowych"
  signal target_gain : integer := 0;
begin

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
        current_gain <= 0;
      else
        -- oblicz docelow¹ redukcjê gainu (ile trzeba œci¹gn¹æ)
        if abs_audio > to_signed(THRESHOLD, 32) then
          diff <= to_signed(to_integer(abs_audio - to_signed(THRESHOLD, 32)), 32);
          target_gain <= to_integer(diff - shift_right(diff, RATIO_SHIFT));  -- ile redukujemy (np. 50% z diff)
        else
          target_gain <= 0;  -- brak kompresji
        end if;

        -- attack/release - zmieniamy current_gain stopniowo
        if current_gain < target_gain then
          -- attack - powoli zwiêkszamy redukcjê
          current_gain <= current_gain + ATTACK_RATE;
          if current_gain > target_gain then
            current_gain <= target_gain;
          end if;
        elsif current_gain > target_gain then
          -- release - powoli zmniejszamy redukcjê
          current_gain <= current_gain - RELEASE_RATE;
          if current_gain < target_gain then
            current_gain <= target_gain;
          end if;
        end if;

        -- aplikujemy kompresjê z aktualnym gainem
        if current_gain > 0 then
          compressed <= to_signed(THRESHOLD + current_gain, 32);
          --if audio_in(23) = '1' then
            audio_out <= -compressed;
          --else
            audio_out <= compressed;
          --end if;
        else
          audio_out <= audio_in;
        end if;
      end if;
    end if;
  end process;

end behavioral;


