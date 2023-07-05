library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mul_test is
    port (
        input1 : in std_logic_vector(31 downto 0);
        input2 : in std_logic_vector(31 downto 0);
        hi, lo : out std_logic_vector(31 downto 0)
    );
end entity mul_test;

architecture rtl of mul_test is
    signal input1_signed : signed(31 downto 0);
    signal input2_signed : signed(31 downto 0);
    signal output_signed : signed(63 downto 0);
begin
    input1_signed <= signed(input1);
    input2_signed <= signed(input2);
    output_signed <= input1_signed * input2_signed;
    hi <= std_logic_vector(output_signed(63 downto 32));
	 lo <= std_logic_vector(output_signed(31 downto 0));
end architecture rtl;
