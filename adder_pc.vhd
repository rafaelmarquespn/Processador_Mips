library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity adder_pc is
	port (
		x: in std_logic_vector(7 downto 0);
		z: out std_logic_vector(7 downto 0)
	);
end entity;

architecture beh of adder_pc is
	constant one : std_logic_vector(7 downto 0) := "00000001";
	begin
	z <= x + one;
end beh;
