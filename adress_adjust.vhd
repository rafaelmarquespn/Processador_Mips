library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity adress_adjust is
	port (
		adress_in: in std_logic_vector(31 downto 0);
		adress_out: out std_logic_vector(8 downto 0)
	);
end entity;

architecture beh of adress_adjust is
	constant first_adress : std_logic_vector(31 downto 0) := "00010000000000010000000000000000"; --endereço do primeiro endereço na memória ram mips32
	signal adress_out_sig : std_logic_vector(31 downto 0) := "00000000000000000000000000000000";
		begin
				adress_out_sig <= adress_in - first_adress ;
				adress_out <= adress_out_sig(8 downto 0);
end beh;
