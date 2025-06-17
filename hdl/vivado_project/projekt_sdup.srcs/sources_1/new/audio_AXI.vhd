
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- ============================================================================
--  AXI-Lite wrapper for the user-provided AudioProcessingSystem
--  • Exposes a minimal 32-bit control register @0x00; bits [1:0] drive
--    control_signal (00 Loopback, 01 EQ, 11 Custom)
--  • Registers 0x04-0x0C are placeholders for future use
--  • Audio clock/reset kept separate from AXI clock so domains can differ
-- ============================================================================

entity AudioProcessingSystem_AXI_wrapper is
    generic (
        C_S_AXI_ADDR_WIDTH : integer := 4;
        C_S_AXI_DATA_WIDTH : integer := 32
    );
    port (
        -- AXI4-Lite slave
        s_axi_aclk    : in  std_logic;
        s_axi_aresetn : in  std_logic;

        s_axi_awaddr  : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
        s_axi_awprot  : in  std_logic_vector(2 downto 0);
        s_axi_awvalid : in  std_logic;
        s_axi_awready : out std_logic;

        s_axi_wdata   : in  std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        s_axi_wstrb   : in  std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
        s_axi_wvalid  : in  std_logic;
        s_axi_wready  : out std_logic;

        s_axi_bresp   : out std_logic_vector(1 downto 0);
        s_axi_bvalid  : out std_logic;
        s_axi_bready  : in  std_logic;

        s_axi_araddr  : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
        s_axi_arprot  : in  std_logic_vector(2 downto 0);
        s_axi_arvalid : in  std_logic;
        s_axi_arready : out std_logic;

        s_axi_rdata   : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        s_axi_rresp   : out std_logic_vector(1 downto 0);
        s_axi_rvalid  : out std_logic;
        s_axi_rready  : in  std_logic;

        -- Audio domain
        clk           : in  std_logic;
        reset_n       : in  std_logic;

        uart_rx_serial : in std_logic;

        -- I2S
        i2s_mclk_adc : out std_logic;
        i2s_bclk_adc : out std_logic;
        i2s_lr_adc   : out std_logic;
        i2s_din      : in  std_logic;
        i2s_mclk_dac : out std_logic;
        i2s_bclk_dac : out std_logic;
        i2s_lr_dac   : out std_logic;
        i2s_dout     : out std_logic
    );
end AudioProcessingSystem_AXI_wrapper;

architecture Behavioral of AudioProcessingSystem_AXI_wrapper is

    constant ADDR_LSB          : integer := 2; -- word aligned (32-bit)
    constant OPT_MEM_ADDR_BITS : integer := 1; -- 4 regs  => 2 bits

    -- Slave registers
    signal slv_reg0, slv_reg1, slv_reg2, slv_reg3 :
           std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0) := (others => '0');

    -- AXI handshake/storage
    signal axi_awready  : std_logic := '0';
    signal axi_awaddr   : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0) := (others => '0');

    signal axi_wready   : std_logic := '0';

    signal axi_bvalid   : std_logic := '0';
    signal axi_bresp    : std_logic_vector(1 downto 0) := (others => '0');

    signal axi_arready  : std_logic := '0';
    signal axi_araddr   : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0) := (others => '0');

    signal axi_rvalid   : std_logic := '0';
    signal axi_rresp    : std_logic_vector(1 downto 0) := (others => '0');
    signal axi_rdata    : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0) := (others => '0');

    -- Drive control signal into core
    signal control_signal_internal : std_logic_vector(1 downto 0);

begin
    -- Assign outs
    s_axi_awready <= axi_awready;
    s_axi_wready  <= axi_wready;
    s_axi_bvalid  <= axi_bvalid;
    s_axi_bresp   <= axi_bresp;
    s_axi_arready <= axi_arready;
    s_axi_rvalid  <= axi_rvalid;
    s_axi_rresp   <= axi_rresp;
    s_axi_rdata   <= axi_rdata;

    control_signal_internal <= slv_reg0(1 downto 0); -- bits 1:0 choose path

    --------------------------------------------------------------------
    -- WRITE ADDRESS channel
    --------------------------------------------------------------------
    process(s_axi_aclk)
    begin
        if rising_edge(s_axi_aclk) then
            if s_axi_aresetn = '0' then
                axi_awready <= '0';
                axi_awaddr  <= (others => '0');
            else
                if (axi_awready = '0' and s_axi_awvalid = '1' and s_axi_wvalid = '1') then
                    axi_awready <= '1';
                    axi_awaddr  <= s_axi_awaddr;
                elsif axi_awready = '1' then
                    axi_awready <= '0';
                end if;
            end if;
        end if;
    end process;

    --------------------------------------------------------------------
    -- WRITE DATA channel
    --------------------------------------------------------------------
    process(s_axi_aclk)
        variable loc_addr : std_logic_vector(OPT_MEM_ADDR_BITS downto 0);
    begin
        if rising_edge(s_axi_aclk) then
            if s_axi_aresetn = '0' then
                axi_wready <= '0';
                slv_reg0   <= (others => '0');
                slv_reg1   <= (others => '0');
                slv_reg2   <= (others => '0');
                slv_reg3   <= (others => '0');
                axi_bvalid <= '0';
                axi_bresp  <= (others => '0');
            else
                if (axi_wready = '0' and s_axi_wvalid = '1' and s_axi_awvalid = '1' and axi_awready = '1') then
                    axi_wready <= '1';
                    loc_addr := axi_awaddr(ADDR_LSB + OPT_MEM_ADDR_BITS downto ADDR_LSB);
                    case loc_addr is
                        when "00" =>
                            for i in 0 to (C_S_AXI_DATA_WIDTH/8)-1 loop
                                if s_axi_wstrb(i) = '1' then
                                    slv_reg0(i*8+7 downto i*8) <= s_axi_wdata(i*8+7 downto i*8);
                                end if;
                            end loop;
                        when "01" =>
                            for i in 0 to (C_S_AXI_DATA_WIDTH/8)-1 loop
                                if s_axi_wstrb(i) = '1' then
                                    slv_reg1(i*8+7 downto i*8) <= s_axi_wdata(i*8+7 downto i*8);
                                end if;
                            end loop;
                        when "10" =>
                            for i in 0 to (C_S_AXI_DATA_WIDTH/8)-1 loop
                                if s_axi_wstrb(i) = '1' then
                                    slv_reg2(i*8+7 downto i*8) <= s_axi_wdata(i*8+7 downto i*8);
                                end if;
                            end loop;
                        when others =>
                            for i in 0 to (C_S_AXI_DATA_WIDTH/8)-1 loop
                                if s_axi_wstrb(i) = '1' then
                                    slv_reg3(i*8+7 downto i*8) <= s_axi_wdata(i*8+7 downto i*8);
                                end if;
                            end loop;
                    end case;
                    axi_bvalid <= '1';
                    axi_bresp  <= "00";
                elsif (axi_bvalid = '1' and s_axi_bready = '1') then
                    axi_bvalid <= '0';
                    axi_wready <= '0';
                else
                    axi_wready <= '0';
                end if;
            end if;
        end if;
    end process;

    --------------------------------------------------------------------
    -- READ ADDRESS channel
    --------------------------------------------------------------------
    process(s_axi_aclk)
    begin
        if rising_edge(s_axi_aclk) then
            if s_axi_aresetn = '0' then
                axi_arready <= '0';
                axi_araddr  <= (others => '0');
            else
                if (axi_arready = '0' and s_axi_arvalid = '1') then
                    axi_arready <= '1';
                    axi_araddr  <= s_axi_araddr;
                elsif axi_arready = '1' then
                    axi_arready <= '0';
                end if;
            end if;
        end if;
    end process;

    --------------------------------------------------------------------
    -- READ DATA channel  *** corrected ***
    --------------------------------------------------------------------
    process(s_axi_aclk)
        variable loc_addr : std_logic_vector(OPT_MEM_ADDR_BITS downto 0);
        variable reg_data : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    begin
        if rising_edge(s_axi_aclk) then
            if s_axi_aresetn = '0' then
                axi_rvalid <= '0';
                axi_rresp  <= (others => '0');
            else
                if (axi_arready = '1' and s_axi_arvalid = '1' and axi_rvalid = '0') then
                    loc_addr := axi_araddr(ADDR_LSB + OPT_MEM_ADDR_BITS downto ADDR_LSB);
                    case loc_addr is
                        when "00" => reg_data := slv_reg0;
                        when "01" => reg_data := slv_reg1;
                        when "10" => reg_data := slv_reg2;
                        when others => reg_data := slv_reg3;
                    end case;
                    axi_rdata  <= reg_data;
                    axi_rvalid <= '1';
                    axi_rresp  <= "00";
                elsif (axi_rvalid = '1' and s_axi_rready = '1') then
                    axi_rvalid <= '0';
                end if;
            end if;
        end if;
    end process;

    --------------------------------------------------------------------
    -- Instantiate original AudioProcessingSystem
    --------------------------------------------------------------------
    AudioProcessingSystem_inst : entity work.AudioProcessingSystem
        port map (
            clk            => clk,
            reset_n        => reset_n,
            uart_rx_serial => uart_rx_serial,

            i2s_mclk_adc => i2s_mclk_adc,
            i2s_bclk_adc => i2s_bclk_adc,
            i2s_lr_adc   => i2s_lr_adc,
            i2s_din      => i2s_din,

            i2s_mclk_dac => i2s_mclk_dac,
            i2s_bclk_dac => i2s_bclk_dac,
            i2s_lr_dac   => i2s_lr_dac,
            i2s_dout     => i2s_dout,

            control_signal => control_signal_internal
        );

end Behavioral;
