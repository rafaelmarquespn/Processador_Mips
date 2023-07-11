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
-- Generated on "07/11/2023 10:35:21"
                                                             
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
SIGNAL adress_reduzido : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL banco_reg : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL clock : STD_LOGIC;
SIGNAL clock_adiantado : STD_LOGIC;
SIGNAL in_2_alu : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL instruction_total : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL mem_to_reg : STD_LOGIC;
SIGNAL pc_pre : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL re_en : STD_LOGIC;
SIGNAL read_data1 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL read_data2 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL read_reg1 : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL read_reg_2 : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL reg_dst : STD_LOGIC;
SIGNAL rw_control : STD_LOGIC;
SIGNAL ula_saida : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL wr_mem_en : STD_LOGIC;
SIGNAL write_reg : STD_LOGIC_VECTOR(4 DOWNTO 0);
COMPONENT main
	PORT (
	adress_reduzido : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	banco_reg : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	clock : IN STD_LOGIC;
	clock_adiantado : IN STD_LOGIC;
	in_2_alu : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	instruction_total : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	mem_to_reg : OUT STD_LOGIC;
	pc_pre : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	re_en : OUT STD_LOGIC;
	read_data1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	read_data2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	read_reg1 : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	read_reg_2 : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	reg_dst : OUT STD_LOGIC;
	rw_control : OUT STD_LOGIC;
	ula_saida : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	wr_mem_en : OUT STD_LOGIC;
	write_reg : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : main
	PORT MAP (
-- list connections between master ports and signals
	adress_reduzido => adress_reduzido,
	banco_reg => banco_reg,
	clock => clock,
	clock_adiantado => clock_adiantado,
	in_2_alu => in_2_alu,
	instruction_total => instruction_total,
	mem_to_reg => mem_to_reg,
	pc_pre => pc_pre,
	re_en => re_en,
	read_data1 => read_data1,
	read_data2 => read_data2,
	read_reg1 => read_reg1,
	read_reg_2 => read_reg_2,
	reg_dst => reg_dst,
	rw_control => rw_control,
	ula_saida => ula_saida,
	wr_mem_en => wr_mem_en,
	write_reg => write_reg
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
	clock <= '0';
WAIT;
END PROCESS t_prcs_clock;

-- clock_adiantado
t_prcs_clock_adiantado: PROCESS
BEGIN
	clock_adiantado <= '0';
WAIT;
END PROCESS t_prcs_clock_adiantado;
END main_arch;
