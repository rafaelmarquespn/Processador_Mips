-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "07/10/2023 20:34:04"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          main
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY main_vhd_vec_tst IS
END main_vhd_vec_tst;
ARCHITECTURE main_arch OF main_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL adress_reduzido : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL alu_control : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL alu_op : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL clock : STD_LOGIC;
SIGNAL in_2_alu : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL instruction_total : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL jump_control : STD_LOGIC;
SIGNAL read_data1 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL read_data2 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL read_reg1 : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL read_reg_2 : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL rw_control : STD_LOGIC;
SIGNAL to_reg : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL ula_saida : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL write_reg : STD_LOGIC_VECTOR(4 DOWNTO 0);
COMPONENT main
	PORT (
	adress_reduzido : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
	alu_control : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	alu_op : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	clock : IN STD_LOGIC;
	in_2_alu : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	instruction_total : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	jump_control : OUT STD_LOGIC;
	read_data1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	read_data2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	read_reg1 : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	read_reg_2 : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	rw_control : OUT STD_LOGIC;
	to_reg : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	ula_saida : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	write_reg : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : main
	PORT MAP (
-- list connections between master ports and signals
	adress_reduzido => adress_reduzido,
	alu_control => alu_control,
	alu_op => alu_op,
	clock => clock,
	in_2_alu => in_2_alu,
	instruction_total => instruction_total,
	jump_control => jump_control,
	read_data1 => read_data1,
	read_data2 => read_data2,
	read_reg1 => read_reg1,
	read_reg_2 => read_reg_2,
	rw_control => rw_control,
	to_reg => to_reg,
	ula_saida => ula_saida,
	write_reg => write_reg
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 1000000 ps;
	clock <= '1';
	WAIT FOR 1000000 ps;
	IF (NOW >= 100000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;
END main_arch;
