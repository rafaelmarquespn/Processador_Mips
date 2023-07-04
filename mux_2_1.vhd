------------------------------------------------------
-- Componente MULTIPLEXADOR
--
-- Recebe duas entradas e ecolhe entre elas
------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

entity mux_2to1 is
    port (
        data_0, data_1: in std_logic_vector(4 downto 0);
        output: out std_logic_vector(4 downto 0);
		  sel: in std_logic
    );
end mux_2to1;

architecture beh of mux_2to1 is
begin
    process(sel, data_0, data_1)
    begin
        if sel = '0' then
            output <= data_0;
        else
            output <= data_1;
        end if;
    end process;
end beh;
