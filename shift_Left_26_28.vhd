------------------------------------------------------
-- Componente descolamento a esquerda
-- 
------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity shifter_26_28 is
	generic (n1: natural:= 26; n2: natural:= 28; k: natural:= 2);
	port (
		x: in std_logic_vector(n1-1 downto 0);
		y: out std_logic_vector(n2-1 downto 0)
	);
end entity;

architecture beh of shifter_26_28 is

	begin
	y(n2-1 downto n1) <= "00";
	y(n1-1 downto 0) <= x; -- Necessario para aumentar ou diminuir o numero de bits
end beh;