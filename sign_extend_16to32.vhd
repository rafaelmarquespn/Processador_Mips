------------------------------------------------------
-- Componente SIGN EXTEND
--
-- Recebe uma entrada de 16bits e completa com zeros a
-- esquerda para completar 32bits
------------------------------------------------------



library IEEE;
use IEEE.std_logic_1164.all;

entity extensor is
    port (
        data_in: in std_logic_vector(15 downto 0);
        data_out: out std_logic_vector(31 downto 0)
    );
end extensor;

architecture beh of extensor is
begin
    process(data_in)
    begin
				data_out(15 downto 0) <= data_in;
				data_out(31 downto 16) <= (others => data_in(15));
    end process;
end beh;
