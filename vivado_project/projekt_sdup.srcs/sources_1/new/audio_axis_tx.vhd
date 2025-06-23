library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity audio_axis_tx is
  generic (G_SAMPLES_PER_FRAME : integer := 1024);
  port ( clk            : in  std_logic;               -- audio clock
         resetn         : in  std_logic;
         sample_l       : in  signed(31 downto 0);     -- nowe próbki co takt
         sample_r       : in  signed(31 downto 0);
         m_axis_tdata   : out std_logic_vector(63 downto 0);
         m_axis_tvalid  : out std_logic;
         m_axis_tlast   : out std_logic;
         m_axis_tready  : in  std_logic );
end;

architecture rtl of audio_axis_tx is
  signal count       : unsigned(11 downto 0);
--  signal hold_l, hold_r : signed(31 downto 0);
--  signal sending     : std_logic;
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if resetn = '0' then
        count      <= (others => '0');
--        sending    <= '0';
        m_axis_tvalid <= '0';
      else
        ------------------------------------------------------------------
        -- Gdy odbiorca gotowy ? ³adujemy *now¹* próbkê i wysy³amy dalej
        ------------------------------------------------------------------
        if m_axis_tready = '1' then
--          hold_l <= sample_l;                   -- zapamiêtaj aktualn¹ stereo-próbkê
--          hold_r <= sample_r;

          m_axis_tdata  <= std_logic_vector(sample_r) & std_logic_vector(sample_l);
          m_axis_tvalid <= '1';                 -- jest wa¿na, pokazuj

          if count = G_SAMPLES_PER_FRAME-1 then
            m_axis_tlast <= '1';                -- koniec ramki
            count        <= (others => '0');
          else
            m_axis_tlast <= '0';
            count        <= count + 1;
          end if;
        end if;
        ------------------------------------------------------------------
        -- Jeœli TREADY='0' ? NIC nie zmieniamy; trzymamy poprzedni¹ próbkê
        ------------------------------------------------------------------
      end if;
    end if;
  end process;
end;
