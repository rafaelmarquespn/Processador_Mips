library IEEE;
use IEEE.std_logic_1164.all;

entity extensor_32to8 is
    port (
        data_in: in std_logic_vector(31 downto 0);
        data_out: out std_logic_vector(7 downto 0)
    );
end extensor_32to8;

architecture beh of extensor_32to8 is
begin
    process(data_in)
    begin
        data_out <= data_in(7 downto 0);
    end process;
end beh;