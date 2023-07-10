library IEEE;
use IEEE.std_logic_1164.all;

entity control is
    port (
        opcode: in std_logic_vector(5 downto 0);
        reg_dest, jump, branch, mem_read, mem_to_reg, mem_write, alu_src, reg_write: out std_logic;
        alu_op: out std_logic_vector(1 downto 0)
    );
end control;

architecture beh of control is
begin
    process (opcode)
    begin
        case opcode is
            when "000000" => -- R-type
                reg_dest <= '1';
                jump <= '0';
                branch <= '0';
                mem_read <= '0';
                mem_to_reg <= '0';
                mem_write <= '0';
                alu_src <= '0';
                reg_write <= '1';
                alu_op <= "10";

            when "000011" => -- jal q
                reg_dest <= '0';
                jump <= '1';
                branch <= '0';
                mem_read <= '0';
                mem_to_reg <= '0';
                mem_write <= '0';
                alu_src <= '0';
                reg_write <= '1';
                alu_op <= "00"; 

            when "001111" => -- lui
                reg_dest <= '1';
                jump <= '0';
                branch <= '0';
                mem_read <= '0';
                mem_to_reg <= '0';
                mem_write <= '0';
                alu_src <= '1';
                reg_write <= '1';
                alu_op <= "10";  
          
            when "001000" => -- addi
                reg_dest <= '1';
                jump <= '0';
                branch <= '0';
                mem_read <= '0';
                mem_to_reg <= '0';
                mem_write <= '0';
                alu_src <= '1';
                reg_write <= '1';
                alu_op <= "10";

            when "001100" => -- andi
                reg_dest <= '1';
                jump <= '0';
                branch <= '0';
                mem_read <= '0';
                mem_to_reg <= '0';
                mem_write <= '0';
                alu_src <= '1';
                reg_write <= '1';
                alu_op <= "10";

            when "001101" => -- ori
                reg_dest <= '1';
                jump <= '0';
                branch <= '0';
                mem_read <= '0';
                mem_to_reg <= '0';
                mem_write <= '0';
                alu_src <= '1';
                reg_write <= '1';
                alu_op <= "10";

            when "001110" => -- xori
                reg_dest <= '1';
                jump <= '0';
                branch <= '0';
                mem_read <= '0';
                mem_to_reg <= '0';
                mem_write <= '0';
                alu_src <= '1';
                reg_write <= '1';
                alu_op <= "10";

                
            when "000100" => -- beq
                reg_dest <= '0';
                jump <= '0';
                branch <= '1';
                mem_read <= '0';
                mem_to_reg <= '0';
                mem_write <= '0';
                alu_src <= '0';
                reg_write <= '0';
                alu_op <= "01";
                
            when "000101" => -- bne
                reg_dest <= '0';
                jump <= '0';
                branch <= '1';
                mem_read <= '0';
                mem_to_reg <= '0';
                mem_write <= '0';
                alu_src <= '0';
                reg_write <= '0';
                alu_op <= "01";
                
            when "000010" => -- jump
                reg_dest <= '0';
                jump <= '1';
                branch <= '0';
                mem_read <= '0';
                mem_to_reg <= '0';
                mem_write <= '0';
                alu_src <= '0';
                reg_write <= '0';
                alu_op <= "00";
                
            when "100011" => -- lw
                reg_dest <= '0';
                jump <= '0';
                branch <= '0';
                mem_read <= '1';
                mem_to_reg <= '1';
                mem_write <= '0';
                alu_src <= '1';
                reg_write <= '1';
                alu_op <= "00";
                
            when "101011" => -- sw
                reg_dest <= '0';
                jump <= '0';
                branch <= '0';
                mem_read <= '0';
                mem_to_reg <= '0';
                mem_write <= '1';  
                alu_src <= '1';
                reg_write <= '0';
                alu_op <= "00";
                
            
            
            when others =>
                -- Default values when opcode doesn't match any case
                reg_dest <= '0';
                jump <= '0';
                branch <= '0';
                mem_read <= '0';
                mem_to_reg <= '0';
                mem_write <= '0';
                alu_src <= '0';
                reg_write <= '0';
                alu_op <= "00";
        end case;
    end process;
end beh;