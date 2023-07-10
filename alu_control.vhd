------------------------------------------------------
-- Componente de controle ALU
-- 
-- Usado para decidir qual operação a ALU deve executar:
--
-- and: 0000
-- or: 0001
-- somar: 0010
-- subtrair-nao-igual: 0011 -> bne. 
-- subtrair: 0110
-- set-on-less-than: 0111
------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity alu_control is
    port (
		  alu_op: in std_logic_vector(1 downto 0);
        funct: in std_logic_vector(5 downto 0);
        alu_control_funct: out std_logic_vector(3 downto 0)
    );
end alu_control;

architecture beh of alu_control is

signal funct_sig : std_logic_vector(3 downto 0) := "0000";

begin
    process(funct, alu_op)
	 
    begin
		  funct_sig <= funct(3 downto 0);
        case alu_op is
            when "00" =>
                   alu_control_funct <= "0010"; -- add
            when "01" =>
                    alu_control_funct <= "0110"; -- subtract
            when "10" =>
                case funct_sig is
						when "0010" => alu_control_funct <= "0110";
						when "0100" => alu_control_funct <= "0000"; -- and
						when "0101" => alu_control_funct <= "0001"; -- or
						when "1010" => alu_control_funct <= "0111"; -- set on less than
						when "0001" => alu_control_funct <= "0101"; -- SHIFT LEFT PARA LUI
						when others => alu_control_funct <= "0010"; -- add
                
                end case;
            when "11" =>
                alu_control_funct <= "0101"; -- SHIFTLEFT LUI -- era pra ser subtract not equal
            when others =>
                alu_control_funct <= "0000";
        end case;
    end process;
end beh;
