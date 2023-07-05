-- Copyright (C) 2023  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "07/05/2023 11:51:02"
                                                             
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
SIGNAL alu_out : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL clock : STD_LOGIC;
SIGNAL instruction_funct : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL instruction_opcode : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL instruction_total : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL pin_name4 : STD_LOGIC;
SIGNAL pin_name5 : STD_LOGIC;
SIGNAL pin_name6 : STD_LOGIC;
COMPONENT main
	PORT (
	alu_out : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	clock : IN STD_LOGIC;
	instruction_funct : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	instruction_opcode : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	instruction_total : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	pin_name4 : OUT STD_LOGIC;
	pin_name5 : OUT STD_LOGIC;
	pin_name6 : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : main
	PORT MAP (
-- list connections between master ports and signals
	alu_out => alu_out,
	clock => clock,
	instruction_funct => instruction_funct,
	instruction_opcode => instruction_opcode,
	instruction_total => instruction_total,
	pin_name4 => pin_name4,
	pin_name5 => pin_name5,
	pin_name6 => pin_name6
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 10000 ps;
	clock <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;
END main_arch;
