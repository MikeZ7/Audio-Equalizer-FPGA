library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Filter_Config is
    generic(
        COEFF_NUMBER : integer := 8 -- Number of filters
    );
    Port (
        clk          : in  STD_LOGIC;                     -- Clock signal
        reset_n      : in  STD_LOGIC;                     -- Synchronous active-low reset
        rx_data      : in  STD_LOGIC_VECTOR(7 downto 0);  -- UART received byte
        rx_ready     : in  STD_LOGIC;                     -- UART data ready flag
        eq_b0_outputs : out STD_LOGIC_VECTOR(COEFF_NUMBER*32-1 downto 0);
        eq_b1_outputs : out STD_LOGIC_VECTOR(COEFF_NUMBER*32-1 downto 0);
        eq_b2_outputs : out STD_LOGIC_VECTOR(COEFF_NUMBER*32-1 downto 0);
        eq_a1_outputs : out STD_LOGIC_VECTOR(COEFF_NUMBER*32-1 downto 0);
        eq_a2_outputs : out STD_LOGIC_VECTOR(COEFF_NUMBER*32-1 downto 0)

--        cust_b0_outputs : out STD_LOGIC_VECTOR(COEFF_NUMBER*32-1 downto 0); -- Custom b0
--        cust_b1_outputs : out STD_LOGIC_VECTOR(COEFF_NUMBER*32-1 downto 0); -- Custom b1
--        cust_b2_outputs : out STD_LOGIC_VECTOR(COEFF_NUMBER*32-1 downto 0); -- Custom b2
--        cust_a1_outputs : out STD_LOGIC_VECTOR(COEFF_NUMBER*32-1 downto 0); -- Custom a1
--        cust_a2_outputs : out STD_LOGIC_VECTOR(COEFF_NUMBER*32-1 downto 0)  -- Custom a2
    );
end Filter_Config;

architecture Behavioral of Filter_Config is
    -- States for FSM
    type state_type is (IDLE, HEADER, PAYLOAD_COEFFS, STOP);
    signal state : state_type := IDLE;

    -- Internal signals
--    signal preambule      : std_logic_vector(7 downto 0) := (others => '0');
    signal filter_count   : integer range 0 to COEFF_NUMBER-1 := 0;
    signal current_filter : integer range 0 to COEFF_NUMBER-1 := 0;
    signal filter_id      : integer range 0 to COEFF_NUMBER-1 := 0;
    signal byte_counter   : integer range 0 to 20 := 0;
    signal temp_coeffs    : std_logic_vector(159 downto 0) := (others => '0');
    signal is_equalizer   : boolean := false;
    
    -- Coefficient storage
    type coeff_array is array (0 to COEFF_NUMBER-1) of std_logic_vector(159 downto 0);
    signal eq_coeff_outputs : coeff_array := (others => (others => '0'));

--    signal cust_coeff_outputs : coeff_array := (others => (others => '0'));

begin
    
    -- FSM Process
    process(clk)
    begin
        if rising_edge(clk) then
            if reset_n = '0' then
                
                -- Reset all signals
                state <= IDLE;
--                preambule <= (others => '0');
                filter_count <= 0;
                filter_id <= 0;
                byte_counter <= 0;
                current_filter <= 0;
                temp_coeffs <= (others => '0');
                eq_coeff_outputs <= 
                (
                    0 => x"3FBBB9ED8089D4483FBB96EF8089D4483F7750DC",
                    1 => x"3F9F547780C61B1F3F9F22EC80C61B1F3F3E7763",
                    2 => x"3F3FD25E8192EBFB3F3F6FDF8192EBFB3E7F423D",
                    3 => x"3E844FF4833FFE993E838D5C833FFE993D07DD51",
                    4 => x"3D1B6E8286E340823D19F2F586E340823A356177",
                    5 => x"3A8298E68F2B92A03A7FC89C8F2B92A035026182",
                    6 => x"3631BD66A2D68888362CB6DCA2D688882C5E7441",
                    7 => x"30D0D6B4D156C5F930C90E7CD156C5F92199E530"
                );

--                cust_coeff_outputs <=
--                (
--                    0 => x"3E0243DF8A9153953E013EA08A9153953C03827F",
--                    1 => x"3EF8AEA0825431693EF827AC825431693DF0D64C",
--                    2 => x"3DFAC6F2851AF5123DF9BDDD851AF5123BF484CF",
--                    3 => x"38E560429D772E8D38E1BC309D772E8D31C71C72",
--                    4 => x"3BA3B566C6FABBA73BA17949C6FABBA737452EAF",
--                    5 => x"3EF88B188220B3E83EF804128220B3E83DF08F2A",
--                    6 => x"2F4CB71CBD21BE2B2F4427F9BD21BE2B1E90DF16",
--                    7 => x"311492BEB225C62E310CED3CB225C62E22217FFA"
--                );

                is_equalizer <= false;
            else
                case state is
                    when IDLE =>
                        -- Wait for start byte (0x77 or 0xCC)
                        if rx_ready = '1' then
                            if rx_data = x"77" then
                                is_equalizer <= true;
                                state <= HEADER;
                            elsif rx_data = x"CC" then
                                is_equalizer <= false;
                                state <= HEADER;
                            end if;
                        else
                            state <= IDLE;
                        end if;

                    when HEADER =>
                        -- Parse the header byte
                        if rx_ready = '1' then
                            filter_count <= to_integer(unsigned(rx_data));
                            state <= PAYLOAD_COEFFS;
                        else
                            state <= HEADER;    
                        end if;
                        
                      when PAYLOAD_COEFFS =>
                        if rx_ready = '1' then
--                            filter_id <= current_filter;
                            if byte_counter = 0 then
                                -- First byte is filter ID
                                filter_id <= to_integer(unsigned(rx_data));
                                
                                byte_counter <= byte_counter + 1;
                            else
                                -- Parse coefficient bytes
                                temp_coeffs((159 - (byte_counter-1)*8) downto (159 - (byte_counter-1)*8 - 7)) <= rx_data;
                                if byte_counter = 20 then
                                    temp_coeffs((159 - (byte_counter-1)*8) downto (159 - (byte_counter-1)*8 - 7)) <= rx_data;
                                    -- Store coefficients after receiving all 20 bytes
                                    if is_equalizer then
                                        eq_coeff_outputs(filter_id) <= temp_coeffs;
                                    else
                                          eq_coeff_outputs(filter_id) <= temp_coeffs;
--                                        cust_coeff_outputs(filter_id) <= temp_coeffs;
                                    end if;
                    
                                    -- Reset counters and prepare for next filter or stop
                                    temp_coeffs <= (others => '0');
                                    byte_counter <= 0;
                                    current_filter <= current_filter + 1;
                    
                                    if current_filter = filter_count then
--                                    if filter_id = filter_count then
                                        state <= STOP;
                                        filter_id <= 0;
                                        current_filter <= 0;
                                    else
                                        state <= PAYLOAD_COEFFS;
                                    end if;
                                else
                                    byte_counter <= byte_counter + 1;
                                end if;
                            end if;
                        else
                            state <= PAYLOAD_COEFFS;
                        end if;

                    when STOP =>
                        -- Wait for stop byte (0xFF) and return to IDLE
                        if rx_ready = '1' and rx_data = x"FF" then
                            state <= IDLE;
                        else
                            state <= STOP;
                        end if;

                end case;
            end if;
        end if;
    end process;


process(eq_coeff_outputs)
begin
    for i in 0 to COEFF_NUMBER-1 loop
        eq_b0_outputs((i+1)*32-1 downto i*32) <= eq_coeff_outputs(i)(159 downto 128);
        eq_b1_outputs((i+1)*32-1 downto i*32) <= eq_coeff_outputs(i)(127 downto 96);
        eq_b2_outputs((i+1)*32-1 downto i*32) <= eq_coeff_outputs(i)(95 downto 64);
        eq_a1_outputs((i+1)*32-1 downto i*32) <= eq_coeff_outputs(i)(63 downto 32);
        eq_a2_outputs((i+1)*32-1 downto i*32) <= eq_coeff_outputs(i)(31 downto 0);
    end loop;
end process;

--process(cust_coeff_outputs)
--begin
--    for i in 0 to COEFF_NUMBER-1 loop
--        cust_b0_outputs((i+1)*32-1 downto i*32) <= cust_coeff_outputs(i)(159 downto 128);
--        cust_b1_outputs((i+1)*32-1 downto i*32) <= cust_coeff_outputs(i)(127 downto 96);
--        cust_b2_outputs((i+1)*32-1 downto i*32) <= cust_coeff_outputs(i)(95 downto 64);
--        cust_a1_outputs((i+1)*32-1 downto i*32) <= cust_coeff_outputs(i)(63 downto 32);
--        cust_a2_outputs((i+1)*32-1 downto i*32) <= cust_coeff_outputs(i)(31 downto 0);
--    end loop;
--end process;

end Behavioral;
