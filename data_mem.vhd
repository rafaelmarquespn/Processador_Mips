library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity RAM is
    generic (
        DATA_WIDTH : integer := 8;       -- Width of each data word in bits
        ADDR_WIDTH : integer := 10       -- Address width in bits
    );
    port (
        clk     : in  std_logic;          -- Clock input
        address : in  std_logic_vector(ADDR_WIDTH-1 downto 0);  -- Address input
        data_in : in  std_logic_vector(DATA_WIDTH-1 downto 0);  -- Data input
        we      : in  std_logic;          -- Write enable input
        data_out: out std_logic_vector(DATA_WIDTH-1 downto 0)  -- Data output
    );
end RAM;

architecture Behavioral of RAM is
    type ram_type is array (0 to 2**ADDR_WIDTH - 1) of std_logic_vector(DATA_WIDTH-1 downto 0);
    signal ram : ram_type;
begin
    process (clk)
        file mem_file: text open read_mode is "your_file.mif";
        variable line_text : line;
        variable current_address : integer := 0;
        variable current_data : std_logic_vector(DATA_WIDTH-1 downto 0);
        variable read_enable : boolean := false;
        variable eof_flag : boolean := false;
    begin
        if rising_edge(clk) then
            if we = '1' then
                ram(to_integer(unsigned(address))) <= data_in;
            else
                if not eof_flag then
                    if not read_enable then
                        readline(mem_file, line_text);
                        if line_text'length > 0 then
                            read_enable := true;
                            current_address := conv_integer(read(line_text));
                        else
                            eof_flag := true;
                        end if;
                    else
                        readline(mem_file, line_text);
                        if line_text'length > 0 then
                            current_data := read(line_text);
                            ram(current_address) <= current_data;
                            current_address := current_address + 1;
                        else
                            eof_flag := true;
                            read_enable := false;
                        end if;
                    end if;
                end if;
            end if;
            data_out <= ram(to_integer(unsigned(address)));
        end if;
    end process;
end Behavioral;
