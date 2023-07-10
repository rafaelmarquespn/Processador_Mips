------------------------------------------------------
-- Componente concatenação
-- 
------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity join_pc_jump is
	port (
		instruction: in std_logic_vector(27 downto 0);
		pc: in std_logic_vector(31 downto 0);
		jump_to: out std_logic_vector(31 downto 0)
	);
end entity;
architecture beh of join_pc_jump is
	signal jump_to_sig : std_logic_vector(31 downto 0);
	begin
	jump_to_sig(31 downto 28) <= pc(31 downto 28);
	jump_to_sig(27 downto 0) <= instruction(27 downto 0);
	--jump_to <= jump_to_sig;
	jump_to <= jump_to_sig + 2; -- endereços começam em 01 na instruction memory
end beh;