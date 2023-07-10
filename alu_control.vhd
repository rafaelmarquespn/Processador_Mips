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
begin
    process(funct, alu_op)
    begin
        case alu_op is
            when "00" =>
                   alu_control_funct <= "0010"; -- add
            when "01" =>
                    alu_control_funct <= "0110"; -- subtract
            when "10" =>
                case funct is
						when "XX0000" => alu_control_funct <= "0010"; -- add
						when "XX0010" => alu_control_funct <= "0110";
						when "XX0100" => alu_control_funct <= "0000"; -- and
						when "XX0101" => alu_control_funct <= "0001"; -- or
						when "XX1010" => alu_control_funct <= "0111"; -- set on less than
                
                end case;
            when "11" =>
                alu_control_funct <= "0011"; -- subtract not equal
            when others =>
                alu_control_funct <= "0000";
        end case;
    end process;
end beh;
