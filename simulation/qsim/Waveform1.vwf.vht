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
-- Generated on "07/10/2023 17:27:38"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          alu_control_logic
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY alu_control_logic_vhd_vec_tst IS
END alu_control_logic_vhd_vec_tst;
ARCHITECTURE alu_control_logic_arch OF alu_control_logic_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL funct : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL op : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL op_alu : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT alu_control_logic
	PORT (
	funct : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
	op : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	op_alu : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : alu_control_logic
	PORT MAP (
-- list connections between master ports and signals
	funct => funct,
	op => op,
	op_alu => op_alu
	);
-- funct[5]
t_prcs_funct_5: PROCESS
BEGIN
	funct(5) <= '0';
WAIT;
END PROCESS t_prcs_funct_5;
-- funct[4]
t_prcs_funct_4: PROCESS
BEGIN
	funct(4) <= '0';
WAIT;
END PROCESS t_prcs_funct_4;
-- funct[3]
t_prcs_funct_3: PROCESS
BEGIN
	funct(3) <= '0';
WAIT;
END PROCESS t_prcs_funct_3;
-- funct[2]
t_prcs_funct_2: PROCESS
BEGIN
	funct(2) <= '0';
WAIT;
END PROCESS t_prcs_funct_2;
-- funct[1]
t_prcs_funct_1: PROCESS
BEGIN
	funct(1) <= '0';
WAIT;
END PROCESS t_prcs_funct_1;
-- funct[0]
t_prcs_funct_0: PROCESS
BEGIN
	funct(0) <= '1';
	WAIT FOR 10000 ps;
	funct(0) <= '0';
WAIT;
END PROCESS t_prcs_funct_0;
-- op_alu[1]
t_prcs_op_alu_1: PROCESS
BEGIN
	op_alu(1) <= '1';
WAIT;
END PROCESS t_prcs_op_alu_1;
-- op_alu[0]
t_prcs_op_alu_0: PROCESS
BEGIN
	op_alu(0) <= '0';
WAIT;
END PROCESS t_prcs_op_alu_0;
END alu_control_logic_arch;
