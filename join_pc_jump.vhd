------------------------------------------------------
-- Componente concatenação
-- 
------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity join_pc_jump is
	port (
		instruction: in std_logic_vector(27 downto 0);
		pc: in std_logic_vector(31 downto 0);
		jump_to: out std_logic_vector(31 downto 0)
	);
end entity;

architecture beh of join_pc_jump is

	begin
	jump_to(31 downto 28) <= pc(31 downto 28);
	jump_to(27 downto 0) <= instruction(27 downto 0);
end beh;