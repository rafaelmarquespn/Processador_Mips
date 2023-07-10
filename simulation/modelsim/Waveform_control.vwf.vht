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
-- Generated on "07/03/2023 23:38:00"
                                                             
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
SIGNAL alu_op : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL clock : STD_LOGIC;
SIGNAL current_adress : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL pin_name2 : STD_LOGIC;
SIGNAL pin_name3 : STD_LOGIC;
SIGNAL pin_name4 : STD_LOGIC;
SIGNAL pin_name5 : STD_LOGIC;
SIGNAL pin_name6 : STD_LOGIC;
SIGNAL pin_name7 : STD_LOGIC;
SIGNAL pin_name8 : STD_LOGIC;
SIGNAL reg_dest : STD_LOGIC_VECTOR(0 DOWNTO 0);
SIGNAL sub_z : STD_LOGIC_VECTOR(5 DOWNTO 0);
COMPONENT main
	PORT (
	alu_op : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	clock : IN STD_LOGIC;
	current_adress : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	pin_name2 : OUT STD_LOGIC;
	pin_name3 : OUT STD_LOGIC;
	pin_name4 : OUT STD_LOGIC;
	pin_name5 : OUT STD_LOGIC;
	pin_name6 : OUT STD_LOGIC;
	pin_name7 : OUT STD_LOGIC;
	pin_name8 : OUT STD_LOGIC;
	reg_dest : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
	sub_z : OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : main
	PORT MAP (
-- list connections between master ports and signals
	alu_op => alu_op,
	clock => clock,
	current_adress => current_adress,
	pin_name2 => pin_name2,
	pin_name3 => pin_name3,
	pin_name4 => pin_name4,
	pin_name5 => pin_name5,
	pin_name6 => pin_name6,
	pin_name7 => pin_name7,
	pin_name8 => pin_name8,
	reg_dest => reg_dest,
	sub_z => sub_z
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
