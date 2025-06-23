library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity filter_cascade_iir_N11 is
    Port (
        clk                : in std_logic;
--        reset_n            : in std_logic;
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
end filter_cascade_iir_N11;

architecture rtl of filter_cascade_iir_N11 is

    -- Signals for interconnecting the filters
    type data_arr is array (0 to 8) of signed(31 downto 0); 
    type valid_arr is array (0 to 8) of std_logic;
    signal iir_intermediate : data_arr := (others => (others => '0'));
    signal valid_intermediate : valid_arr := (others => '0');
    
  type input_flag_array is array (0 to 7) of std_logic;
  type output_array is array (0 to 7) of signed (31 downto 0);
--   signal iir_in_arr : output_array := (others => (others => '0'));  -- Initialize to 0
  signal iir_out_arr : output_array := (others => (others => '0'));  -- Initialize to 0
  signal sample_valid_out_arr : input_flag_array := (others => '0'); -- Initialize to '0'
  signal sample_valid_in_arr : input_flag_array := (others => '0');      -- Initialize to '0'

    -- Helper functions to extract coefficients from the input vectors

begin

    gen_filters: for i in 0 to 7 generate
        IIR_Filter: entity work.IIR
        port map (
            clk              => clk,
            iir_in           => iir_intermediate(i),
            sample_valid_in  => valid_intermediate(i),
            iir_out          => iir_intermediate(i+1),
            sample_valid_out => valid_intermediate(i+1),
            busy             => open,
            a0               => a0_coeffs((255 - i*32) downto ((255 - i*32)-31)),
            a1               => a1_coeffs((255 - i*32) downto ((255 - i*32)-31)),
            a2               => a2_coeffs((255 - i*32) downto ((255 - i*32)-31)),
            b1               => b1_coeffs((255 - i*32) downto ((255 - i*32)-31)),
            b2               => b2_coeffs((255 - i*32) downto ((255 - i*32)-31))
        );
    end generate;

    -- Connect output from the last filter
    iir_intermediate(0) <= iir_in;
    valid_intermediate(0) <= sample_valid_in;
    iir_out <= iir_intermediate(8);
    sample_valid_out <= valid_intermediate(8);

end rtl;
