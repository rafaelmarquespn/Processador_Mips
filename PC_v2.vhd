library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity pc is
	port(
		ck: in std_logic;
		address_to_load: in std_logic_vector(7 downto 0);
		current_address: out std_logic_vector(7 downto 0)
	);
end pc;

architecture beh of pc is

	signal address: std_logic_vector(7 downto 0) := "00000000";
	signal second : std_logic := '0';
	begin

	process(ck)
		begin
			if second = '1' then
				current_address <= address;
				if rising_edge(ck) then
					address <= address_to_load;
				end if;
			end if;
			second <= '1';
		end process;
	
end beh;

-- A fazer
-- memória de instruçao está dois endereços a frente  do arquivo.mif
-- jump está demorando duas instruções para executar instrução do jump