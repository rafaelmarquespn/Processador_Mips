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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "07/05/2023 19:05:01"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	main IS
    PORT (
	adress : OUT std_logic_vector(7 DOWNTO 0);
	clock : IN std_logic;
	entra_pc : OUT std_logic_vector(7 DOWNTO 0);
	instruction_total : OUT std_logic_vector(31 DOWNTO 0);
	joinpc_instr : OUT std_logic_vector(31 DOWNTO 0);
	pos_adder : OUT std_logic_vector(31 DOWNTO 0);
	pre_tira : OUT std_logic_vector(31 DOWNTO 0);
	sai_ext : OUT std_logic_vector(31 DOWNTO 0);
	shifter32_2 : OUT std_logic_vector(31 DOWNTO 0)
	);
END main;

-- Design Ports Information
-- adress[7]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adress[6]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adress[5]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adress[4]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adress[3]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adress[2]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adress[1]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adress[0]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entra_pc[7]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entra_pc[6]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entra_pc[5]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entra_pc[4]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entra_pc[3]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entra_pc[2]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entra_pc[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entra_pc[0]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_total[31]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_total[30]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_total[29]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_total[28]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_total[27]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_total[26]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_total[25]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_total[24]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_total[23]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_total[22]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_total[21]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_total[20]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_total[19]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_total[18]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_total[17]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_total[16]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_total[15]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_total[14]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_total[13]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_total[12]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_total[11]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_total[10]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_total[9]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_total[8]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_total[7]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_total[6]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_total[5]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_total[4]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_total[3]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_total[2]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_total[1]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_total[0]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- joinpc_instr[31]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- joinpc_instr[30]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- joinpc_instr[29]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- joinpc_instr[28]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- joinpc_instr[27]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- joinpc_instr[26]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- joinpc_instr[25]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- joinpc_instr[24]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- joinpc_instr[23]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- joinpc_instr[22]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- joinpc_instr[21]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- joinpc_instr[20]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- joinpc_instr[19]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- joinpc_instr[18]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- joinpc_instr[17]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- joinpc_instr[16]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- joinpc_instr[15]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- joinpc_instr[14]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- joinpc_instr[13]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- joinpc_instr[12]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- joinpc_instr[11]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- joinpc_instr[10]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- joinpc_instr[9]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- joinpc_instr[8]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- joinpc_instr[7]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- joinpc_instr[6]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- joinpc_instr[5]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- joinpc_instr[4]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- joinpc_instr[3]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- joinpc_instr[2]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- joinpc_instr[1]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- joinpc_instr[0]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pos_adder[31]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pos_adder[30]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pos_adder[29]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pos_adder[28]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pos_adder[27]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pos_adder[26]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pos_adder[25]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pos_adder[24]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pos_adder[23]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pos_adder[22]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pos_adder[21]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pos_adder[20]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pos_adder[19]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pos_adder[18]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pos_adder[17]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pos_adder[16]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pos_adder[15]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pos_adder[14]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pos_adder[13]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pos_adder[12]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pos_adder[11]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pos_adder[10]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pos_adder[9]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pos_adder[8]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pos_adder[7]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pos_adder[6]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pos_adder[5]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pos_adder[4]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pos_adder[3]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pos_adder[2]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pos_adder[1]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pos_adder[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pre_tira[31]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pre_tira[30]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pre_tira[29]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pre_tira[28]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pre_tira[27]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pre_tira[26]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pre_tira[25]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pre_tira[24]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pre_tira[23]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pre_tira[22]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pre_tira[21]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pre_tira[20]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pre_tira[19]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pre_tira[18]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pre_tira[17]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pre_tira[16]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pre_tira[15]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pre_tira[14]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pre_tira[13]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pre_tira[12]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pre_tira[11]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pre_tira[10]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pre_tira[9]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pre_tira[8]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pre_tira[7]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pre_tira[6]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pre_tira[5]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pre_tira[4]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pre_tira[3]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pre_tira[2]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pre_tira[1]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pre_tira[0]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sai_ext[31]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sai_ext[30]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sai_ext[29]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sai_ext[28]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sai_ext[27]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sai_ext[26]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sai_ext[25]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sai_ext[24]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sai_ext[23]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sai_ext[22]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sai_ext[21]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sai_ext[20]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sai_ext[19]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sai_ext[18]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sai_ext[17]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sai_ext[16]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sai_ext[15]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sai_ext[14]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sai_ext[13]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sai_ext[12]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sai_ext[11]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sai_ext[10]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sai_ext[9]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sai_ext[8]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sai_ext[7]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sai_ext[6]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sai_ext[5]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sai_ext[4]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sai_ext[3]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sai_ext[2]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sai_ext[1]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sai_ext[0]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shifter32_2[31]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shifter32_2[30]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shifter32_2[29]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shifter32_2[28]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shifter32_2[27]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shifter32_2[26]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shifter32_2[25]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shifter32_2[24]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shifter32_2[23]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shifter32_2[22]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shifter32_2[21]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shifter32_2[20]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shifter32_2[19]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shifter32_2[18]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shifter32_2[17]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shifter32_2[16]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shifter32_2[15]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shifter32_2[14]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shifter32_2[13]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shifter32_2[12]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shifter32_2[11]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shifter32_2[10]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shifter32_2[9]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shifter32_2[8]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shifter32_2[7]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shifter32_2[6]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shifter32_2[5]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shifter32_2[4]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shifter32_2[3]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shifter32_2[2]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shifter32_2[1]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shifter32_2[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF main IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_adress : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clock : std_logic;
SIGNAL ww_entra_pc : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_instruction_total : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_joinpc_instr : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_pos_adder : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_pre_tira : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_sai_ext : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_shifter32_2 : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst5|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst5|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \inst6|Add0~29_sumout\ : std_logic;
SIGNAL \inst6|Add0~30\ : std_logic;
SIGNAL \inst6|Add0~25_sumout\ : std_logic;
SIGNAL \inst16|output[1]~6_combout\ : std_logic;
SIGNAL \inst6|Add0~26\ : std_logic;
SIGNAL \inst6|Add0~22\ : std_logic;
SIGNAL \inst6|Add0~18\ : std_logic;
SIGNAL \inst6|Add0~13_sumout\ : std_logic;
SIGNAL \inst23|Mux2~0_combout\ : std_logic;
SIGNAL \inst6|Add0~14\ : std_logic;
SIGNAL \inst6|Add0~9_sumout\ : std_logic;
SIGNAL \inst6|Add0~17_sumout\ : std_logic;
SIGNAL \inst6|Add0~21_sumout\ : std_logic;
SIGNAL \inst11|Add0~22\ : std_logic;
SIGNAL \inst11|Add0~18\ : std_logic;
SIGNAL \inst11|Add0~14\ : std_logic;
SIGNAL \inst11|Add0~9_sumout\ : std_logic;
SIGNAL \inst16|output[5]~2_combout\ : std_logic;
SIGNAL \inst23|Mux3~0_combout\ : std_logic;
SIGNAL \inst23|Mux2~1_combout\ : std_logic;
SIGNAL \inst22|Mux0~0_combout\ : std_logic;
SIGNAL \inst4~0_combout\ : std_logic;
SIGNAL \inst11|Add0~13_sumout\ : std_logic;
SIGNAL \inst16|output[4]~3_combout\ : std_logic;
SIGNAL \inst11|Add0~17_sumout\ : std_logic;
SIGNAL \inst16|output[3]~4_combout\ : std_logic;
SIGNAL \inst11|Add0~21_sumout\ : std_logic;
SIGNAL \inst16|output[2]~5_combout\ : std_logic;
SIGNAL \inst22|Mux1~0_combout\ : std_logic;
SIGNAL \inst16|output[0]~7_combout\ : std_logic;
SIGNAL \inst6|Add0~10\ : std_logic;
SIGNAL \inst6|Add0~5_sumout\ : std_logic;
SIGNAL \inst11|Add0~10\ : std_logic;
SIGNAL \inst11|Add0~5_sumout\ : std_logic;
SIGNAL \inst16|output[6]~1_combout\ : std_logic;
SIGNAL \inst6|Add0~6\ : std_logic;
SIGNAL \inst6|Add0~1_sumout\ : std_logic;
SIGNAL \inst11|Add0~6\ : std_logic;
SIGNAL \inst11|Add0~1_sumout\ : std_logic;
SIGNAL \inst16|output[7]~0_combout\ : std_logic;
SIGNAL \inst11|Add0~2\ : std_logic;
SIGNAL \inst11|Add0~66\ : std_logic;
SIGNAL \inst11|Add0~62\ : std_logic;
SIGNAL \inst11|Add0~58\ : std_logic;
SIGNAL \inst11|Add0~54\ : std_logic;
SIGNAL \inst11|Add0~50\ : std_logic;
SIGNAL \inst11|Add0~46\ : std_logic;
SIGNAL \inst11|Add0~42\ : std_logic;
SIGNAL \inst11|Add0~38\ : std_logic;
SIGNAL \inst11|Add0~34\ : std_logic;
SIGNAL \inst11|Add0~30\ : std_logic;
SIGNAL \inst11|Add0~25_sumout\ : std_logic;
SIGNAL \inst11|Add0~29_sumout\ : std_logic;
SIGNAL \inst11|Add0~33_sumout\ : std_logic;
SIGNAL \inst11|Add0~37_sumout\ : std_logic;
SIGNAL \inst11|Add0~41_sumout\ : std_logic;
SIGNAL \inst11|Add0~45_sumout\ : std_logic;
SIGNAL \inst11|Add0~49_sumout\ : std_logic;
SIGNAL \inst11|Add0~53_sumout\ : std_logic;
SIGNAL \inst11|Add0~57_sumout\ : std_logic;
SIGNAL \inst11|Add0~61_sumout\ : std_logic;
SIGNAL \inst11|Add0~65_sumout\ : std_logic;
SIGNAL \inst4~1_combout\ : std_logic;
SIGNAL \inst9|output[31]~0_combout\ : std_logic;
SIGNAL \inst16|output[27]~8_combout\ : std_logic;
SIGNAL \inst16|output[26]~9_combout\ : std_logic;
SIGNAL \inst16|output[25]~10_combout\ : std_logic;
SIGNAL \inst16|output[24]~11_combout\ : std_logic;
SIGNAL \inst16|output[23]~12_combout\ : std_logic;
SIGNAL \inst16|output[22]~13_combout\ : std_logic;
SIGNAL \inst16|output[21]~14_combout\ : std_logic;
SIGNAL \inst16|output[20]~15_combout\ : std_logic;
SIGNAL \inst16|output[19]~16_combout\ : std_logic;
SIGNAL \inst16|output[18]~17_combout\ : std_logic;
SIGNAL \inst16|output[17]~18_combout\ : std_logic;
SIGNAL \inst16|output[16]~19_combout\ : std_logic;
SIGNAL \inst16|output[15]~20_combout\ : std_logic;
SIGNAL \inst16|output[14]~21_combout\ : std_logic;
SIGNAL \inst16|output[13]~22_combout\ : std_logic;
SIGNAL \inst16|output[12]~23_combout\ : std_logic;
SIGNAL \inst16|output[11]~24_combout\ : std_logic;
SIGNAL \inst16|output[10]~25_combout\ : std_logic;
SIGNAL \inst16|output[9]~26_combout\ : std_logic;
SIGNAL \inst16|output[8]~27_combout\ : std_logic;
SIGNAL \inst5|altsyncram_component|auto_generated|q_a\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|address\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst23|alu_control_funct\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst23|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst4~0_combout\ : std_logic;
SIGNAL \inst22|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_address\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst11|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \inst11|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \inst11|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \inst11|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \inst11|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \inst11|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \inst11|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \inst11|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \inst11|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \inst11|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \inst11|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \inst6|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \inst6|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \inst11|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst6|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \inst11|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \inst6|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \inst11|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \inst6|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \inst11|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \inst6|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \inst11|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \inst6|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \inst11|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \inst6|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \ALT_INV_clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \inst23|ALT_INV_alu_control_funct\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst23|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \inst23|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \inst22|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst4~1_combout\ : std_logic;

BEGIN

adress <= ww_adress;
ww_clock <= clock;
entra_pc <= ww_entra_pc;
instruction_total <= ww_instruction_total;
joinpc_instr <= ww_joinpc_instr;
pos_adder <= ww_pos_adder;
pre_tira <= ww_pre_tira;
sai_ext <= ww_sai_ext;
shifter32_2 <= ww_shifter32_2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst5|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst|address\(7) & \inst|address\(6) & \inst|address\(5) & \inst|address\(4) & \inst|address\(3) & \inst|address\(2) & \inst|address\(1) & \inst|address\(0));

\inst5|altsyncram_component|auto_generated|q_a\(0) <= \inst5|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst5|altsyncram_component|auto_generated|q_a\(1) <= \inst5|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst5|altsyncram_component|auto_generated|q_a\(2) <= \inst5|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst5|altsyncram_component|auto_generated|q_a\(3) <= \inst5|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst5|altsyncram_component|auto_generated|q_a\(4) <= \inst5|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst5|altsyncram_component|auto_generated|q_a\(5) <= \inst5|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst5|altsyncram_component|auto_generated|q_a\(6) <= \inst5|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst5|altsyncram_component|auto_generated|q_a\(7) <= \inst5|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\inst5|altsyncram_component|auto_generated|q_a\(8) <= \inst5|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\inst5|altsyncram_component|auto_generated|q_a\(9) <= \inst5|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\inst5|altsyncram_component|auto_generated|q_a\(10) <= \inst5|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\inst5|altsyncram_component|auto_generated|q_a\(11) <= \inst5|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\inst5|altsyncram_component|auto_generated|q_a\(12) <= \inst5|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\inst5|altsyncram_component|auto_generated|q_a\(13) <= \inst5|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\inst5|altsyncram_component|auto_generated|q_a\(14) <= \inst5|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\inst5|altsyncram_component|auto_generated|q_a\(15) <= \inst5|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);
\inst5|altsyncram_component|auto_generated|q_a\(16) <= \inst5|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(16);
\inst5|altsyncram_component|auto_generated|q_a\(17) <= \inst5|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(17);
\inst5|altsyncram_component|auto_generated|q_a\(18) <= \inst5|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(18);
\inst5|altsyncram_component|auto_generated|q_a\(19) <= \inst5|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(19);
\inst5|altsyncram_component|auto_generated|q_a\(20) <= \inst5|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(20);
\inst5|altsyncram_component|auto_generated|q_a\(21) <= \inst5|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(21);
\inst5|altsyncram_component|auto_generated|q_a\(22) <= \inst5|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(22);
\inst5|altsyncram_component|auto_generated|q_a\(23) <= \inst5|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(23);
\inst5|altsyncram_component|auto_generated|q_a\(24) <= \inst5|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(24);
\inst5|altsyncram_component|auto_generated|q_a\(25) <= \inst5|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(25);
\inst5|altsyncram_component|auto_generated|q_a\(26) <= \inst5|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(26);
\inst5|altsyncram_component|auto_generated|q_a\(27) <= \inst5|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(27);
\inst5|altsyncram_component|auto_generated|q_a\(28) <= \inst5|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(28);
\inst5|altsyncram_component|auto_generated|q_a\(29) <= \inst5|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(29);
\inst5|altsyncram_component|auto_generated|q_a\(30) <= \inst5|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(30);
\inst5|altsyncram_component|auto_generated|q_a\(31) <= \inst5|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(31);
\inst23|ALT_INV_Mux2~0_combout\ <= NOT \inst23|Mux2~0_combout\;
\ALT_INV_inst4~0_combout\ <= NOT \inst4~0_combout\;
\inst22|ALT_INV_Mux1~0_combout\ <= NOT \inst22|Mux1~0_combout\;
\inst|ALT_INV_address\(0) <= NOT \inst|address\(0);
\inst|ALT_INV_address\(1) <= NOT \inst|address\(1);
\inst|ALT_INV_address\(2) <= NOT \inst|address\(2);
\inst|ALT_INV_address\(3) <= NOT \inst|address\(3);
\inst|ALT_INV_address\(4) <= NOT \inst|address\(4);
\inst|ALT_INV_address\(5) <= NOT \inst|address\(5);
\inst|ALT_INV_address\(6) <= NOT \inst|address\(6);
\inst|ALT_INV_address\(7) <= NOT \inst|address\(7);
\inst11|ALT_INV_Add0~65_sumout\ <= NOT \inst11|Add0~65_sumout\;
\inst11|ALT_INV_Add0~61_sumout\ <= NOT \inst11|Add0~61_sumout\;
\inst11|ALT_INV_Add0~57_sumout\ <= NOT \inst11|Add0~57_sumout\;
\inst11|ALT_INV_Add0~53_sumout\ <= NOT \inst11|Add0~53_sumout\;
\inst11|ALT_INV_Add0~49_sumout\ <= NOT \inst11|Add0~49_sumout\;
\inst11|ALT_INV_Add0~45_sumout\ <= NOT \inst11|Add0~45_sumout\;
\inst11|ALT_INV_Add0~41_sumout\ <= NOT \inst11|Add0~41_sumout\;
\inst11|ALT_INV_Add0~37_sumout\ <= NOT \inst11|Add0~37_sumout\;
\inst11|ALT_INV_Add0~33_sumout\ <= NOT \inst11|Add0~33_sumout\;
\inst11|ALT_INV_Add0~29_sumout\ <= NOT \inst11|Add0~29_sumout\;
\inst11|ALT_INV_Add0~25_sumout\ <= NOT \inst11|Add0~25_sumout\;
\inst6|ALT_INV_Add0~29_sumout\ <= NOT \inst6|Add0~29_sumout\;
\inst6|ALT_INV_Add0~25_sumout\ <= NOT \inst6|Add0~25_sumout\;
\inst11|ALT_INV_Add0~21_sumout\ <= NOT \inst11|Add0~21_sumout\;
\inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(1) <= NOT \inst5|altsyncram_component|auto_generated|q_a\(1);
\inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(2) <= NOT \inst5|altsyncram_component|auto_generated|q_a\(2);
\inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(3) <= NOT \inst5|altsyncram_component|auto_generated|q_a\(3);
\inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(4) <= NOT \inst5|altsyncram_component|auto_generated|q_a\(4);
\inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(5) <= NOT \inst5|altsyncram_component|auto_generated|q_a\(5);
\inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(6) <= NOT \inst5|altsyncram_component|auto_generated|q_a\(6);
\inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(7) <= NOT \inst5|altsyncram_component|auto_generated|q_a\(7);
\inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(8) <= NOT \inst5|altsyncram_component|auto_generated|q_a\(8);
\inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(9) <= NOT \inst5|altsyncram_component|auto_generated|q_a\(9);
\inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(10) <= NOT \inst5|altsyncram_component|auto_generated|q_a\(10);
\inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(11) <= NOT \inst5|altsyncram_component|auto_generated|q_a\(11);
\inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(12) <= NOT \inst5|altsyncram_component|auto_generated|q_a\(12);
\inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(13) <= NOT \inst5|altsyncram_component|auto_generated|q_a\(13);
\inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(14) <= NOT \inst5|altsyncram_component|auto_generated|q_a\(14);
\inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(15) <= NOT \inst5|altsyncram_component|auto_generated|q_a\(15);
\inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(16) <= NOT \inst5|altsyncram_component|auto_generated|q_a\(16);
\inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(17) <= NOT \inst5|altsyncram_component|auto_generated|q_a\(17);
\inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(18) <= NOT \inst5|altsyncram_component|auto_generated|q_a\(18);
\inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(19) <= NOT \inst5|altsyncram_component|auto_generated|q_a\(19);
\inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(20) <= NOT \inst5|altsyncram_component|auto_generated|q_a\(20);
\inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(21) <= NOT \inst5|altsyncram_component|auto_generated|q_a\(21);
\inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(22) <= NOT \inst5|altsyncram_component|auto_generated|q_a\(22);
\inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(23) <= NOT \inst5|altsyncram_component|auto_generated|q_a\(23);
\inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(24) <= NOT \inst5|altsyncram_component|auto_generated|q_a\(24);
\inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(25) <= NOT \inst5|altsyncram_component|auto_generated|q_a\(25);
\inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(26) <= NOT \inst5|altsyncram_component|auto_generated|q_a\(26);
\inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(27) <= NOT \inst5|altsyncram_component|auto_generated|q_a\(27);
\inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(28) <= NOT \inst5|altsyncram_component|auto_generated|q_a\(28);
\inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(29) <= NOT \inst5|altsyncram_component|auto_generated|q_a\(29);
\inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(30) <= NOT \inst5|altsyncram_component|auto_generated|q_a\(30);
\inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(31) <= NOT \inst5|altsyncram_component|auto_generated|q_a\(31);
\inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(0) <= NOT \inst5|altsyncram_component|auto_generated|q_a\(0);
\inst6|ALT_INV_Add0~21_sumout\ <= NOT \inst6|Add0~21_sumout\;
\inst11|ALT_INV_Add0~17_sumout\ <= NOT \inst11|Add0~17_sumout\;
\inst6|ALT_INV_Add0~17_sumout\ <= NOT \inst6|Add0~17_sumout\;
\inst11|ALT_INV_Add0~13_sumout\ <= NOT \inst11|Add0~13_sumout\;
\inst6|ALT_INV_Add0~13_sumout\ <= NOT \inst6|Add0~13_sumout\;
\inst11|ALT_INV_Add0~9_sumout\ <= NOT \inst11|Add0~9_sumout\;
\inst6|ALT_INV_Add0~9_sumout\ <= NOT \inst6|Add0~9_sumout\;
\inst11|ALT_INV_Add0~5_sumout\ <= NOT \inst11|Add0~5_sumout\;
\inst6|ALT_INV_Add0~5_sumout\ <= NOT \inst6|Add0~5_sumout\;
\inst11|ALT_INV_Add0~1_sumout\ <= NOT \inst11|Add0~1_sumout\;
\inst6|ALT_INV_Add0~1_sumout\ <= NOT \inst6|Add0~1_sumout\;
\ALT_INV_clock~inputCLKENA0_outclk\ <= NOT \clock~inputCLKENA0_outclk\;
\inst23|ALT_INV_alu_control_funct\(2) <= NOT \inst23|alu_control_funct\(2);
\inst23|ALT_INV_alu_control_funct\(0) <= NOT \inst23|alu_control_funct\(0);
\inst23|ALT_INV_Mux2~1_combout\ <= NOT \inst23|Mux2~1_combout\;
\inst23|ALT_INV_Mux3~0_combout\ <= NOT \inst23|Mux3~0_combout\;
\inst22|ALT_INV_Mux0~0_combout\ <= NOT \inst22|Mux0~0_combout\;
\ALT_INV_inst4~1_combout\ <= NOT \inst4~1_combout\;

-- Location: IOOBUF_X89_Y8_N22
\adress[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|address\(7),
	devoe => ww_devoe,
	o => ww_adress(7));

-- Location: IOOBUF_X89_Y8_N39
\adress[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|address\(6),
	devoe => ww_devoe,
	o => ww_adress(6));

-- Location: IOOBUF_X89_Y6_N22
\adress[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|address\(5),
	devoe => ww_devoe,
	o => ww_adress(5));

-- Location: IOOBUF_X66_Y0_N59
\adress[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|address\(4),
	devoe => ww_devoe,
	o => ww_adress(4));

-- Location: IOOBUF_X89_Y8_N56
\adress[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|address\(3),
	devoe => ww_devoe,
	o => ww_adress(3));

-- Location: IOOBUF_X89_Y8_N5
\adress[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|address\(2),
	devoe => ww_devoe,
	o => ww_adress(2));

-- Location: IOOBUF_X64_Y0_N53
\adress[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|address\(1),
	devoe => ww_devoe,
	o => ww_adress(1));

-- Location: IOOBUF_X66_Y0_N42
\adress[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|address\(0),
	devoe => ww_devoe,
	o => ww_adress(0));

-- Location: IOOBUF_X66_Y81_N59
\entra_pc[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|output[7]~0_combout\,
	devoe => ww_devoe,
	o => ww_entra_pc(7));

-- Location: IOOBUF_X54_Y0_N36
\entra_pc[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|output[6]~1_combout\,
	devoe => ww_devoe,
	o => ww_entra_pc(6));

-- Location: IOOBUF_X68_Y81_N2
\entra_pc[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|output[5]~2_combout\,
	devoe => ww_devoe,
	o => ww_entra_pc(5));

-- Location: IOOBUF_X82_Y81_N59
\entra_pc[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|output[4]~3_combout\,
	devoe => ww_devoe,
	o => ww_entra_pc(4));

-- Location: IOOBUF_X89_Y6_N5
\entra_pc[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|output[3]~4_combout\,
	devoe => ww_devoe,
	o => ww_entra_pc(3));

-- Location: IOOBUF_X74_Y81_N76
\entra_pc[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|output[2]~5_combout\,
	devoe => ww_devoe,
	o => ww_entra_pc(2));

-- Location: IOOBUF_X60_Y81_N53
\entra_pc[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|output[1]~6_combout\,
	devoe => ww_devoe,
	o => ww_entra_pc(1));

-- Location: IOOBUF_X36_Y0_N2
\entra_pc[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|output[0]~7_combout\,
	devoe => ww_devoe,
	o => ww_entra_pc(0));

-- Location: IOOBUF_X89_Y35_N45
\instruction_total[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(31),
	devoe => ww_devoe,
	o => ww_instruction_total(31));

-- Location: IOOBUF_X70_Y0_N2
\instruction_total[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(30),
	devoe => ww_devoe,
	o => ww_instruction_total(30));

-- Location: IOOBUF_X70_Y0_N36
\instruction_total[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(29),
	devoe => ww_devoe,
	o => ww_instruction_total(29));

-- Location: IOOBUF_X70_Y0_N19
\instruction_total[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(28),
	devoe => ww_devoe,
	o => ww_instruction_total(28));

-- Location: IOOBUF_X70_Y0_N53
\instruction_total[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(27),
	devoe => ww_devoe,
	o => ww_instruction_total(27));

-- Location: IOOBUF_X89_Y38_N39
\instruction_total[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(26),
	devoe => ww_devoe,
	o => ww_instruction_total(26));

-- Location: IOOBUF_X32_Y0_N2
\instruction_total[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(25),
	devoe => ww_devoe,
	o => ww_instruction_total(25));

-- Location: IOOBUF_X38_Y0_N2
\instruction_total[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(24),
	devoe => ww_devoe,
	o => ww_instruction_total(24));

-- Location: IOOBUF_X34_Y0_N42
\instruction_total[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(23),
	devoe => ww_devoe,
	o => ww_instruction_total(23));

-- Location: IOOBUF_X60_Y81_N36
\instruction_total[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(22),
	devoe => ww_devoe,
	o => ww_instruction_total(22));

-- Location: IOOBUF_X89_Y4_N62
\instruction_total[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(21),
	devoe => ww_devoe,
	o => ww_instruction_total(21));

-- Location: IOOBUF_X66_Y81_N76
\instruction_total[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(20),
	devoe => ww_devoe,
	o => ww_instruction_total(20));

-- Location: IOOBUF_X26_Y0_N93
\instruction_total[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(19),
	devoe => ww_devoe,
	o => ww_instruction_total(19));

-- Location: IOOBUF_X62_Y81_N19
\instruction_total[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(18),
	devoe => ww_devoe,
	o => ww_instruction_total(18));

-- Location: IOOBUF_X89_Y4_N96
\instruction_total[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(17),
	devoe => ww_devoe,
	o => ww_instruction_total(17));

-- Location: IOOBUF_X30_Y0_N2
\instruction_total[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(16),
	devoe => ww_devoe,
	o => ww_instruction_total(16));

-- Location: IOOBUF_X76_Y81_N53
\instruction_total[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => ww_instruction_total(15));

-- Location: IOOBUF_X72_Y81_N2
\instruction_total[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(14),
	devoe => ww_devoe,
	o => ww_instruction_total(14));

-- Location: IOOBUF_X70_Y81_N19
\instruction_total[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(13),
	devoe => ww_devoe,
	o => ww_instruction_total(13));

-- Location: IOOBUF_X38_Y0_N53
\instruction_total[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(12),
	devoe => ww_devoe,
	o => ww_instruction_total(12));

-- Location: IOOBUF_X89_Y37_N56
\instruction_total[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(11),
	devoe => ww_devoe,
	o => ww_instruction_total(11));

-- Location: IOOBUF_X60_Y0_N53
\instruction_total[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(10),
	devoe => ww_devoe,
	o => ww_instruction_total(10));

-- Location: IOOBUF_X89_Y9_N56
\instruction_total[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(9),
	devoe => ww_devoe,
	o => ww_instruction_total(9));

-- Location: IOOBUF_X74_Y81_N93
\instruction_total[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(8),
	devoe => ww_devoe,
	o => ww_instruction_total(8));

-- Location: IOOBUF_X36_Y0_N36
\instruction_total[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => ww_instruction_total(7));

-- Location: IOOBUF_X28_Y0_N19
\instruction_total[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => ww_instruction_total(6));

-- Location: IOOBUF_X50_Y0_N76
\instruction_total[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => ww_instruction_total(5));

-- Location: IOOBUF_X58_Y81_N59
\instruction_total[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => ww_instruction_total(4));

-- Location: IOOBUF_X64_Y81_N36
\instruction_total[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => ww_instruction_total(3));

-- Location: IOOBUF_X30_Y0_N53
\instruction_total[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => ww_instruction_total(2));

-- Location: IOOBUF_X34_Y0_N76
\instruction_total[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => ww_instruction_total(1));

-- Location: IOOBUF_X89_Y36_N56
\instruction_total[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => ww_instruction_total(0));

-- Location: IOOBUF_X82_Y81_N93
\joinpc_instr[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_joinpc_instr(31));

-- Location: IOOBUF_X40_Y81_N2
\joinpc_instr[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_joinpc_instr(30));

-- Location: IOOBUF_X8_Y0_N36
\joinpc_instr[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_joinpc_instr(29));

-- Location: IOOBUF_X88_Y81_N20
\joinpc_instr[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_joinpc_instr(28));

-- Location: IOOBUF_X32_Y0_N19
\joinpc_instr[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(25),
	devoe => ww_devoe,
	o => ww_joinpc_instr(27));

-- Location: IOOBUF_X38_Y0_N36
\joinpc_instr[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(24),
	devoe => ww_devoe,
	o => ww_joinpc_instr(26));

-- Location: IOOBUF_X34_Y0_N93
\joinpc_instr[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(23),
	devoe => ww_devoe,
	o => ww_joinpc_instr(25));

-- Location: IOOBUF_X60_Y81_N2
\joinpc_instr[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(22),
	devoe => ww_devoe,
	o => ww_joinpc_instr(24));

-- Location: IOOBUF_X89_Y4_N79
\joinpc_instr[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(21),
	devoe => ww_devoe,
	o => ww_joinpc_instr(23));

-- Location: IOOBUF_X66_Y81_N42
\joinpc_instr[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(20),
	devoe => ww_devoe,
	o => ww_joinpc_instr(22));

-- Location: IOOBUF_X26_Y0_N42
\joinpc_instr[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(19),
	devoe => ww_devoe,
	o => ww_joinpc_instr(21));

-- Location: IOOBUF_X62_Y81_N36
\joinpc_instr[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(18),
	devoe => ww_devoe,
	o => ww_joinpc_instr(20));

-- Location: IOOBUF_X89_Y4_N45
\joinpc_instr[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(17),
	devoe => ww_devoe,
	o => ww_joinpc_instr(19));

-- Location: IOOBUF_X28_Y0_N36
\joinpc_instr[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(16),
	devoe => ww_devoe,
	o => ww_joinpc_instr(18));

-- Location: IOOBUF_X50_Y81_N93
\joinpc_instr[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => ww_joinpc_instr(17));

-- Location: IOOBUF_X72_Y81_N36
\joinpc_instr[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(14),
	devoe => ww_devoe,
	o => ww_joinpc_instr(16));

-- Location: IOOBUF_X70_Y81_N36
\joinpc_instr[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(13),
	devoe => ww_devoe,
	o => ww_joinpc_instr(15));

-- Location: IOOBUF_X38_Y0_N19
\joinpc_instr[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(12),
	devoe => ww_devoe,
	o => ww_joinpc_instr(14));

-- Location: IOOBUF_X89_Y38_N5
\joinpc_instr[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(11),
	devoe => ww_devoe,
	o => ww_joinpc_instr(13));

-- Location: IOOBUF_X60_Y0_N19
\joinpc_instr[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(10),
	devoe => ww_devoe,
	o => ww_joinpc_instr(12));

-- Location: IOOBUF_X89_Y9_N22
\joinpc_instr[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(9),
	devoe => ww_devoe,
	o => ww_joinpc_instr(11));

-- Location: IOOBUF_X72_Y81_N19
\joinpc_instr[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(8),
	devoe => ww_devoe,
	o => ww_joinpc_instr(10));

-- Location: IOOBUF_X40_Y0_N53
\joinpc_instr[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => ww_joinpc_instr(9));

-- Location: IOOBUF_X26_Y0_N76
\joinpc_instr[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => ww_joinpc_instr(8));

-- Location: IOOBUF_X50_Y0_N93
\joinpc_instr[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => ww_joinpc_instr(7));

-- Location: IOOBUF_X56_Y81_N19
\joinpc_instr[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => ww_joinpc_instr(6));

-- Location: IOOBUF_X68_Y81_N36
\joinpc_instr[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => ww_joinpc_instr(5));

-- Location: IOOBUF_X30_Y0_N19
\joinpc_instr[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => ww_joinpc_instr(4));

-- Location: IOOBUF_X34_Y0_N59
\joinpc_instr[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => ww_joinpc_instr(3));

-- Location: IOOBUF_X89_Y36_N22
\joinpc_instr[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => ww_joinpc_instr(2));

-- Location: IOOBUF_X88_Y81_N54
\joinpc_instr[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_joinpc_instr(1));

-- Location: IOOBUF_X82_Y81_N76
\joinpc_instr[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_joinpc_instr(0));

-- Location: IOOBUF_X38_Y81_N53
\pos_adder[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|Add0~25_sumout\,
	devoe => ww_devoe,
	o => ww_pos_adder(31));

-- Location: IOOBUF_X36_Y81_N2
\pos_adder[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|Add0~25_sumout\,
	devoe => ww_devoe,
	o => ww_pos_adder(30));

-- Location: IOOBUF_X52_Y81_N19
\pos_adder[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|Add0~25_sumout\,
	devoe => ww_devoe,
	o => ww_pos_adder(29));

-- Location: IOOBUF_X38_Y81_N2
\pos_adder[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|Add0~25_sumout\,
	devoe => ww_devoe,
	o => ww_pos_adder(28));

-- Location: IOOBUF_X38_Y81_N36
\pos_adder[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|Add0~25_sumout\,
	devoe => ww_devoe,
	o => ww_pos_adder(27));

-- Location: IOOBUF_X36_Y81_N53
\pos_adder[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|Add0~25_sumout\,
	devoe => ww_devoe,
	o => ww_pos_adder(26));

-- Location: IOOBUF_X54_Y81_N19
\pos_adder[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|Add0~25_sumout\,
	devoe => ww_devoe,
	o => ww_pos_adder(25));

-- Location: IOOBUF_X52_Y81_N36
\pos_adder[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|Add0~25_sumout\,
	devoe => ww_devoe,
	o => ww_pos_adder(24));

-- Location: IOOBUF_X56_Y81_N2
\pos_adder[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|Add0~25_sumout\,
	devoe => ww_devoe,
	o => ww_pos_adder(23));

-- Location: IOOBUF_X36_Y81_N36
\pos_adder[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|Add0~25_sumout\,
	devoe => ww_devoe,
	o => ww_pos_adder(22));

-- Location: IOOBUF_X58_Y81_N76
\pos_adder[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|Add0~25_sumout\,
	devoe => ww_devoe,
	o => ww_pos_adder(21));

-- Location: IOOBUF_X54_Y81_N53
\pos_adder[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|Add0~25_sumout\,
	devoe => ww_devoe,
	o => ww_pos_adder(20));

-- Location: IOOBUF_X56_Y81_N53
\pos_adder[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|Add0~25_sumout\,
	devoe => ww_devoe,
	o => ww_pos_adder(19));

-- Location: IOOBUF_X38_Y81_N19
\pos_adder[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|Add0~25_sumout\,
	devoe => ww_devoe,
	o => ww_pos_adder(18));

-- Location: IOOBUF_X60_Y0_N36
\pos_adder[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|Add0~29_sumout\,
	devoe => ww_devoe,
	o => ww_pos_adder(17));

-- Location: IOOBUF_X72_Y0_N19
\pos_adder[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|Add0~33_sumout\,
	devoe => ww_devoe,
	o => ww_pos_adder(16));

-- Location: IOOBUF_X62_Y0_N53
\pos_adder[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|Add0~37_sumout\,
	devoe => ww_devoe,
	o => ww_pos_adder(15));

-- Location: IOOBUF_X68_Y0_N19
\pos_adder[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|Add0~41_sumout\,
	devoe => ww_devoe,
	o => ww_pos_adder(14));

-- Location: IOOBUF_X40_Y0_N36
\pos_adder[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|Add0~45_sumout\,
	devoe => ww_devoe,
	o => ww_pos_adder(13));

-- Location: IOOBUF_X58_Y0_N59
\pos_adder[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|Add0~49_sumout\,
	devoe => ww_devoe,
	o => ww_pos_adder(12));

-- Location: IOOBUF_X76_Y81_N19
\pos_adder[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|Add0~53_sumout\,
	devoe => ww_devoe,
	o => ww_pos_adder(11));

-- Location: IOOBUF_X72_Y0_N2
\pos_adder[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|Add0~57_sumout\,
	devoe => ww_devoe,
	o => ww_pos_adder(10));

-- Location: IOOBUF_X68_Y0_N2
\pos_adder[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|Add0~61_sumout\,
	devoe => ww_devoe,
	o => ww_pos_adder(9));

-- Location: IOOBUF_X62_Y0_N36
\pos_adder[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|Add0~65_sumout\,
	devoe => ww_devoe,
	o => ww_pos_adder(8));

-- Location: IOOBUF_X89_Y37_N5
\pos_adder[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|Add0~1_sumout\,
	devoe => ww_devoe,
	o => ww_pos_adder(7));

-- Location: IOOBUF_X68_Y0_N53
\pos_adder[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|Add0~5_sumout\,
	devoe => ww_devoe,
	o => ww_pos_adder(6));

-- Location: IOOBUF_X89_Y9_N39
\pos_adder[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|Add0~9_sumout\,
	devoe => ww_devoe,
	o => ww_pos_adder(5));

-- Location: IOOBUF_X89_Y6_N56
\pos_adder[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|Add0~13_sumout\,
	devoe => ww_devoe,
	o => ww_pos_adder(4));

-- Location: IOOBUF_X68_Y0_N36
\pos_adder[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|Add0~17_sumout\,
	devoe => ww_devoe,
	o => ww_pos_adder(3));

-- Location: IOOBUF_X68_Y81_N53
\pos_adder[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|Add0~21_sumout\,
	devoe => ww_devoe,
	o => ww_pos_adder(2));

-- Location: IOOBUF_X62_Y81_N53
\pos_adder[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|Add0~25_sumout\,
	devoe => ww_devoe,
	o => ww_pos_adder(1));

-- Location: IOOBUF_X78_Y81_N19
\pos_adder[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|Add0~29_sumout\,
	devoe => ww_devoe,
	o => ww_pos_adder(0));

-- Location: IOOBUF_X28_Y0_N2
\pre_tira[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|output[31]~0_combout\,
	devoe => ww_devoe,
	o => ww_pre_tira(31));

-- Location: IOOBUF_X6_Y0_N53
\pre_tira[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|output[31]~0_combout\,
	devoe => ww_devoe,
	o => ww_pre_tira(30));

-- Location: IOOBUF_X6_Y0_N19
\pre_tira[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|output[31]~0_combout\,
	devoe => ww_devoe,
	o => ww_pre_tira(29));

-- Location: IOOBUF_X6_Y0_N36
\pre_tira[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|output[31]~0_combout\,
	devoe => ww_devoe,
	o => ww_pre_tira(28));

-- Location: IOOBUF_X52_Y0_N19
\pre_tira[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|output[27]~8_combout\,
	devoe => ww_devoe,
	o => ww_pre_tira(27));

-- Location: IOOBUF_X58_Y0_N76
\pre_tira[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|output[26]~9_combout\,
	devoe => ww_devoe,
	o => ww_pre_tira(26));

-- Location: IOOBUF_X56_Y0_N53
\pre_tira[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|output[25]~10_combout\,
	devoe => ww_devoe,
	o => ww_pre_tira(25));

-- Location: IOOBUF_X54_Y0_N19
\pre_tira[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|output[24]~11_combout\,
	devoe => ww_devoe,
	o => ww_pre_tira(24));

-- Location: IOOBUF_X58_Y0_N42
\pre_tira[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|output[23]~12_combout\,
	devoe => ww_devoe,
	o => ww_pre_tira(23));

-- Location: IOOBUF_X56_Y0_N2
\pre_tira[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|output[22]~13_combout\,
	devoe => ww_devoe,
	o => ww_pre_tira(22));

-- Location: IOOBUF_X56_Y0_N36
\pre_tira[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|output[21]~14_combout\,
	devoe => ww_devoe,
	o => ww_pre_tira(21));

-- Location: IOOBUF_X52_Y0_N2
\pre_tira[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|output[20]~15_combout\,
	devoe => ww_devoe,
	o => ww_pre_tira(20));

-- Location: IOOBUF_X52_Y0_N36
\pre_tira[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|output[19]~16_combout\,
	devoe => ww_devoe,
	o => ww_pre_tira(19));

-- Location: IOOBUF_X56_Y0_N19
\pre_tira[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|output[18]~17_combout\,
	devoe => ww_devoe,
	o => ww_pre_tira(18));

-- Location: IOOBUF_X52_Y0_N53
\pre_tira[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|output[17]~18_combout\,
	devoe => ww_devoe,
	o => ww_pre_tira(17));

-- Location: IOOBUF_X72_Y0_N53
\pre_tira[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|output[16]~19_combout\,
	devoe => ww_devoe,
	o => ww_pre_tira(16));

-- Location: IOOBUF_X89_Y36_N39
\pre_tira[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|output[15]~20_combout\,
	devoe => ww_devoe,
	o => ww_pre_tira(15));

-- Location: IOOBUF_X89_Y35_N96
\pre_tira[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|output[14]~21_combout\,
	devoe => ww_devoe,
	o => ww_pre_tira(14));

-- Location: IOOBUF_X50_Y0_N42
\pre_tira[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|output[13]~22_combout\,
	devoe => ww_devoe,
	o => ww_pre_tira(13));

-- Location: IOOBUF_X54_Y0_N53
\pre_tira[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|output[12]~23_combout\,
	devoe => ww_devoe,
	o => ww_pre_tira(12));

-- Location: IOOBUF_X72_Y0_N36
\pre_tira[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|output[11]~24_combout\,
	devoe => ww_devoe,
	o => ww_pre_tira(11));

-- Location: IOOBUF_X89_Y35_N79
\pre_tira[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|output[10]~25_combout\,
	devoe => ww_devoe,
	o => ww_pre_tira(10));

-- Location: IOOBUF_X62_Y0_N19
\pre_tira[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|output[9]~26_combout\,
	devoe => ww_devoe,
	o => ww_pre_tira(9));

-- Location: IOOBUF_X58_Y0_N93
\pre_tira[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|output[8]~27_combout\,
	devoe => ww_devoe,
	o => ww_pre_tira(8));

-- Location: IOOBUF_X62_Y81_N2
\pre_tira[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|output[7]~0_combout\,
	devoe => ww_devoe,
	o => ww_pre_tira(7));

-- Location: IOOBUF_X54_Y0_N2
\pre_tira[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|output[6]~1_combout\,
	devoe => ww_devoe,
	o => ww_pre_tira(6));

-- Location: IOOBUF_X66_Y81_N93
\pre_tira[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|output[5]~2_combout\,
	devoe => ww_devoe,
	o => ww_pre_tira(5));

-- Location: IOOBUF_X74_Y81_N42
\pre_tira[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|output[4]~3_combout\,
	devoe => ww_devoe,
	o => ww_pre_tira(4));

-- Location: IOOBUF_X89_Y6_N39
\pre_tira[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|output[3]~4_combout\,
	devoe => ww_devoe,
	o => ww_pre_tira(3));

-- Location: IOOBUF_X70_Y81_N2
\pre_tira[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|output[2]~5_combout\,
	devoe => ww_devoe,
	o => ww_pre_tira(2));

-- Location: IOOBUF_X64_Y81_N19
\pre_tira[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|output[1]~6_combout\,
	devoe => ww_devoe,
	o => ww_pre_tira(1));

-- Location: IOOBUF_X36_Y0_N19
\pre_tira[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|output[0]~7_combout\,
	devoe => ww_devoe,
	o => ww_pre_tira(0));

-- Location: IOOBUF_X26_Y81_N93
\sai_ext[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_sai_ext(31));

-- Location: IOOBUF_X34_Y81_N42
\sai_ext[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_sai_ext(30));

-- Location: IOOBUF_X30_Y81_N2
\sai_ext[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_sai_ext(29));

-- Location: IOOBUF_X84_Y81_N2
\sai_ext[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_sai_ext(28));

-- Location: IOOBUF_X4_Y0_N2
\sai_ext[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_sai_ext(27));

-- Location: IOOBUF_X28_Y0_N53
\sai_ext[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_sai_ext(26));

-- Location: IOOBUF_X36_Y81_N19
\sai_ext[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_sai_ext(25));

-- Location: IOOBUF_X26_Y81_N76
\sai_ext[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_sai_ext(24));

-- Location: IOOBUF_X54_Y81_N36
\sai_ext[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_sai_ext(23));

-- Location: IOOBUF_X28_Y81_N19
\sai_ext[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_sai_ext(22));

-- Location: IOOBUF_X40_Y81_N36
\sai_ext[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_sai_ext(21));

-- Location: IOOBUF_X2_Y0_N76
\sai_ext[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_sai_ext(20));

-- Location: IOOBUF_X34_Y81_N59
\sai_ext[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_sai_ext(19));

-- Location: IOOBUF_X82_Y81_N42
\sai_ext[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_sai_ext(18));

-- Location: IOOBUF_X76_Y81_N2
\sai_ext[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_sai_ext(17));

-- Location: IOOBUF_X32_Y81_N53
\sai_ext[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_sai_ext(16));

-- Location: IOOBUF_X40_Y81_N19
\sai_ext[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_sai_ext(15));

-- Location: IOOBUF_X60_Y81_N19
\sai_ext[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_sai_ext(14));

-- Location: IOOBUF_X76_Y81_N36
\sai_ext[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_sai_ext(13));

-- Location: IOOBUF_X26_Y81_N42
\sai_ext[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_sai_ext(12));

-- Location: IOOBUF_X30_Y81_N36
\sai_ext[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_sai_ext(11));

-- Location: IOOBUF_X2_Y0_N59
\sai_ext[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_sai_ext(10));

-- Location: IOOBUF_X30_Y81_N53
\sai_ext[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_sai_ext(9));

-- Location: IOOBUF_X6_Y0_N2
\sai_ext[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_sai_ext(8));

-- Location: IOOBUF_X64_Y0_N36
\sai_ext[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|Add0~1_sumout\,
	devoe => ww_devoe,
	o => ww_sai_ext(7));

-- Location: IOOBUF_X62_Y0_N2
\sai_ext[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|Add0~5_sumout\,
	devoe => ww_devoe,
	o => ww_sai_ext(6));

-- Location: IOOBUF_X64_Y0_N19
\sai_ext[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|Add0~9_sumout\,
	devoe => ww_devoe,
	o => ww_sai_ext(5));

-- Location: IOOBUF_X64_Y0_N2
\sai_ext[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|Add0~13_sumout\,
	devoe => ww_devoe,
	o => ww_sai_ext(4));

-- Location: IOOBUF_X66_Y0_N93
\sai_ext[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|Add0~17_sumout\,
	devoe => ww_devoe,
	o => ww_sai_ext(3));

-- Location: IOOBUF_X66_Y0_N76
\sai_ext[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|Add0~21_sumout\,
	devoe => ww_devoe,
	o => ww_sai_ext(2));

-- Location: IOOBUF_X58_Y81_N93
\sai_ext[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|Add0~25_sumout\,
	devoe => ww_devoe,
	o => ww_sai_ext(1));

-- Location: IOOBUF_X78_Y81_N53
\sai_ext[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|Add0~29_sumout\,
	devoe => ww_devoe,
	o => ww_sai_ext(0));

-- Location: IOOBUF_X32_Y81_N36
\shifter32_2[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => ww_shifter32_2(31));

-- Location: IOOBUF_X34_Y81_N93
\shifter32_2[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => ww_shifter32_2(30));

-- Location: IOOBUF_X80_Y81_N19
\shifter32_2[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => ww_shifter32_2(29));

-- Location: IOOBUF_X50_Y81_N76
\shifter32_2[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => ww_shifter32_2(28));

-- Location: IOOBUF_X80_Y81_N36
\shifter32_2[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => ww_shifter32_2(27));

-- Location: IOOBUF_X78_Y81_N36
\shifter32_2[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => ww_shifter32_2(26));

-- Location: IOOBUF_X34_Y81_N76
\shifter32_2[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => ww_shifter32_2(25));

-- Location: IOOBUF_X52_Y81_N53
\shifter32_2[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => ww_shifter32_2(24));

-- Location: IOOBUF_X32_Y81_N2
\shifter32_2[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => ww_shifter32_2(23));

-- Location: IOOBUF_X32_Y81_N19
\shifter32_2[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => ww_shifter32_2(22));

-- Location: IOOBUF_X78_Y81_N2
\shifter32_2[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => ww_shifter32_2(21));

-- Location: IOOBUF_X32_Y0_N53
\shifter32_2[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => ww_shifter32_2(20));

-- Location: IOOBUF_X64_Y81_N2
\shifter32_2[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => ww_shifter32_2(19));

-- Location: IOOBUF_X80_Y81_N53
\shifter32_2[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => ww_shifter32_2(18));

-- Location: IOOBUF_X80_Y81_N2
\shifter32_2[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => ww_shifter32_2(17));

-- Location: IOOBUF_X72_Y81_N53
\shifter32_2[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(14),
	devoe => ww_devoe,
	o => ww_shifter32_2(16));

-- Location: IOOBUF_X70_Y81_N53
\shifter32_2[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(13),
	devoe => ww_devoe,
	o => ww_shifter32_2(15));

-- Location: IOOBUF_X40_Y0_N2
\shifter32_2[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(12),
	devoe => ww_devoe,
	o => ww_shifter32_2(14));

-- Location: IOOBUF_X89_Y38_N22
\shifter32_2[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(11),
	devoe => ww_devoe,
	o => ww_shifter32_2(13));

-- Location: IOOBUF_X60_Y0_N2
\shifter32_2[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(10),
	devoe => ww_devoe,
	o => ww_shifter32_2(12));

-- Location: IOOBUF_X89_Y9_N5
\shifter32_2[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(9),
	devoe => ww_devoe,
	o => ww_shifter32_2(11));

-- Location: IOOBUF_X74_Y81_N59
\shifter32_2[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(8),
	devoe => ww_devoe,
	o => ww_shifter32_2(10));

-- Location: IOOBUF_X40_Y0_N19
\shifter32_2[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => ww_shifter32_2(9));

-- Location: IOOBUF_X26_Y0_N59
\shifter32_2[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => ww_shifter32_2(8));

-- Location: IOOBUF_X50_Y0_N59
\shifter32_2[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => ww_shifter32_2(7));

-- Location: IOOBUF_X58_Y81_N42
\shifter32_2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => ww_shifter32_2(6));

-- Location: IOOBUF_X64_Y81_N53
\shifter32_2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => ww_shifter32_2(5));

-- Location: IOOBUF_X30_Y0_N36
\shifter32_2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => ww_shifter32_2(4));

-- Location: IOOBUF_X32_Y0_N36
\shifter32_2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => ww_shifter32_2(3));

-- Location: IOOBUF_X89_Y36_N5
\shifter32_2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => ww_shifter32_2(2));

-- Location: IOOBUF_X50_Y81_N59
\shifter32_2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_shifter32_2(1));

-- Location: IOOBUF_X88_Y81_N37
\shifter32_2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_shifter32_2(0));

-- Location: IOIBUF_X89_Y35_N61
\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G10
\clock~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clock~input_o\,
	outclk => \clock~inputCLKENA0_outclk\);

-- Location: LABCELL_X66_Y7_N0
\inst6|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~29_sumout\ = SUM(( \inst|address\(0) ) + ( VCC ) + ( !VCC ))
-- \inst6|Add0~30\ = CARRY(( \inst|address\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_address\(0),
	cin => GND,
	sumout => \inst6|Add0~29_sumout\,
	cout => \inst6|Add0~30\);

-- Location: LABCELL_X66_Y7_N3
\inst6|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~25_sumout\ = SUM(( \inst|address\(1) ) + ( GND ) + ( \inst6|Add0~30\ ))
-- \inst6|Add0~26\ = CARRY(( \inst|address\(1) ) + ( GND ) + ( \inst6|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_address\(1),
	cin => \inst6|Add0~30\,
	sumout => \inst6|Add0~25_sumout\,
	cout => \inst6|Add0~26\);

-- Location: LABCELL_X66_Y7_N36
\inst16|output[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|output[1]~6_combout\ = ( \inst6|Add0~25_sumout\ & ( !\inst22|Mux1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst6|ALT_INV_Add0~25_sumout\,
	dataf => \inst22|ALT_INV_Mux1~0_combout\,
	combout => \inst16|output[1]~6_combout\);

-- Location: FF_X66_Y7_N41
\inst|address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputCLKENA0_outclk\,
	asdata => \inst16|output[1]~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|address\(1));

-- Location: LABCELL_X66_Y7_N6
\inst6|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~21_sumout\ = SUM(( \inst|address\(2) ) + ( GND ) + ( \inst6|Add0~26\ ))
-- \inst6|Add0~22\ = CARRY(( \inst|address\(2) ) + ( GND ) + ( \inst6|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_address\(2),
	cin => \inst6|Add0~26\,
	sumout => \inst6|Add0~21_sumout\,
	cout => \inst6|Add0~22\);

-- Location: LABCELL_X66_Y7_N9
\inst6|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~17_sumout\ = SUM(( \inst|address\(3) ) + ( GND ) + ( \inst6|Add0~22\ ))
-- \inst6|Add0~18\ = CARRY(( \inst|address\(3) ) + ( GND ) + ( \inst6|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_address\(3),
	cin => \inst6|Add0~22\,
	sumout => \inst6|Add0~17_sumout\,
	cout => \inst6|Add0~18\);

-- Location: LABCELL_X66_Y7_N12
\inst6|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~13_sumout\ = SUM(( \inst|address\(4) ) + ( GND ) + ( \inst6|Add0~18\ ))
-- \inst6|Add0~14\ = CARRY(( \inst|address\(4) ) + ( GND ) + ( \inst6|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_address\(4),
	cin => \inst6|Add0~18\,
	sumout => \inst6|Add0~13_sumout\,
	cout => \inst6|Add0~14\);

-- Location: M10K_X69_Y7_N0
\inst5|altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "000000000000002549FC0E000591FFDF000120F809007169000500712C000000000C68C300018A580700000B514200000A48C000152AFFE7003C0900640001800008000521FFEC0000006810000000481200342C0000003C0100400001AB001A000000681000000048120001AB00180039AD006400356D00140001A16824003421FFEA003C01FFFF00214D01900000186F80000009C1020001AD682300016B582100080000100008000013000120682A001129000000AD2B000C0034290000003C0110010001285826000120582700010958250001295824000128582200014B780700714048210001285820008D2A0004008D2800000034290000003C011001",
	clk0_core_clock_enable => "ena0",
	clk0_input_clock_enable => "ena0",
	clk0_output_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "UnicicloInst.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Inst_mem:inst5|altsyncram:altsyncram_component|altsyncram_1s24:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 40,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 40,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clock~inputCLKENA0_outclk\,
	ena0 => VCC,
	portaaddr => \inst5|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst5|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LABCELL_X70_Y7_N3
\inst23|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst23|Mux2~0_combout\ = ( \inst5|altsyncram_component|auto_generated|q_a\(28) & ( (!\inst5|altsyncram_component|auto_generated|q_a\(30) & (!\inst5|altsyncram_component|auto_generated|q_a\(29) & (!\inst5|altsyncram_component|auto_generated|q_a\(31) & 
-- !\inst5|altsyncram_component|auto_generated|q_a\(27)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(30),
	datab => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(29),
	datac => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(31),
	datad => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(27),
	dataf => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(28),
	combout => \inst23|Mux2~0_combout\);

-- Location: LABCELL_X66_Y7_N15
\inst6|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~9_sumout\ = SUM(( \inst|address\(5) ) + ( GND ) + ( \inst6|Add0~14\ ))
-- \inst6|Add0~10\ = CARRY(( \inst|address\(5) ) + ( GND ) + ( \inst6|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_address\(5),
	cin => \inst6|Add0~14\,
	sumout => \inst6|Add0~9_sumout\,
	cout => \inst6|Add0~10\);

-- Location: LABCELL_X68_Y7_N0
\inst11|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Add0~21_sumout\ = SUM(( \inst5|altsyncram_component|auto_generated|q_a\(0) ) + ( \inst6|Add0~21_sumout\ ) + ( !VCC ))
-- \inst11|Add0~22\ = CARRY(( \inst5|altsyncram_component|auto_generated|q_a\(0) ) + ( \inst6|Add0~21_sumout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst6|ALT_INV_Add0~21_sumout\,
	datad => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	cin => GND,
	sumout => \inst11|Add0~21_sumout\,
	cout => \inst11|Add0~22\);

-- Location: LABCELL_X68_Y7_N3
\inst11|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Add0~17_sumout\ = SUM(( \inst6|Add0~17_sumout\ ) + ( \inst5|altsyncram_component|auto_generated|q_a\(1) ) + ( \inst11|Add0~22\ ))
-- \inst11|Add0~18\ = CARRY(( \inst6|Add0~17_sumout\ ) + ( \inst5|altsyncram_component|auto_generated|q_a\(1) ) + ( \inst11|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	datad => \inst6|ALT_INV_Add0~17_sumout\,
	cin => \inst11|Add0~22\,
	sumout => \inst11|Add0~17_sumout\,
	cout => \inst11|Add0~18\);

-- Location: LABCELL_X68_Y7_N6
\inst11|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Add0~13_sumout\ = SUM(( \inst5|altsyncram_component|auto_generated|q_a\(2) ) + ( \inst6|Add0~13_sumout\ ) + ( \inst11|Add0~18\ ))
-- \inst11|Add0~14\ = CARRY(( \inst5|altsyncram_component|auto_generated|q_a\(2) ) + ( \inst6|Add0~13_sumout\ ) + ( \inst11|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst6|ALT_INV_Add0~13_sumout\,
	datad => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	cin => \inst11|Add0~18\,
	sumout => \inst11|Add0~13_sumout\,
	cout => \inst11|Add0~14\);

-- Location: LABCELL_X68_Y7_N9
\inst11|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Add0~9_sumout\ = SUM(( \inst5|altsyncram_component|auto_generated|q_a\(3) ) + ( \inst6|Add0~9_sumout\ ) + ( \inst11|Add0~14\ ))
-- \inst11|Add0~10\ = CARRY(( \inst5|altsyncram_component|auto_generated|q_a\(3) ) + ( \inst6|Add0~9_sumout\ ) + ( \inst11|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst6|ALT_INV_Add0~9_sumout\,
	datad => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	cin => \inst11|Add0~14\,
	sumout => \inst11|Add0~9_sumout\,
	cout => \inst11|Add0~10\);

-- Location: LABCELL_X67_Y7_N33
\inst16|output[5]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|output[5]~2_combout\ = ( \inst11|Add0~9_sumout\ & ( \inst22|Mux1~0_combout\ & ( \inst5|altsyncram_component|auto_generated|q_a\(3) ) ) ) # ( !\inst11|Add0~9_sumout\ & ( \inst22|Mux1~0_combout\ & ( \inst5|altsyncram_component|auto_generated|q_a\(3) 
-- ) ) ) # ( \inst11|Add0~9_sumout\ & ( !\inst22|Mux1~0_combout\ & ( ((!\inst4~0_combout\ & \inst23|Mux2~0_combout\)) # (\inst6|Add0~9_sumout\) ) ) ) # ( !\inst11|Add0~9_sumout\ & ( !\inst22|Mux1~0_combout\ & ( (\inst6|Add0~9_sumout\ & 
-- ((!\inst23|Mux2~0_combout\) # (\inst4~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110011000011001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	datab => \ALT_INV_inst4~0_combout\,
	datac => \inst23|ALT_INV_Mux2~0_combout\,
	datad => \inst6|ALT_INV_Add0~9_sumout\,
	datae => \inst11|ALT_INV_Add0~9_sumout\,
	dataf => \inst22|ALT_INV_Mux1~0_combout\,
	combout => \inst16|output[5]~2_combout\);

-- Location: FF_X67_Y7_N35
\inst|address[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputCLKENA0_outclk\,
	d => \inst16|output[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|address\(5));

-- Location: LABCELL_X70_Y7_N15
\inst23|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst23|Mux3~0_combout\ = ( \inst5|altsyncram_component|auto_generated|q_a\(27) & ( \inst5|altsyncram_component|auto_generated|q_a\(26) & ( (((!\inst5|altsyncram_component|auto_generated|q_a\(29)) # (!\inst5|altsyncram_component|auto_generated|q_a\(28))) 
-- # (\inst5|altsyncram_component|auto_generated|q_a\(30))) # (\inst5|altsyncram_component|auto_generated|q_a\(31)) ) ) ) # ( !\inst5|altsyncram_component|auto_generated|q_a\(27) & ( \inst5|altsyncram_component|auto_generated|q_a\(26) & ( 
-- (((!\inst5|altsyncram_component|auto_generated|q_a\(29)) # (!\inst5|altsyncram_component|auto_generated|q_a\(28))) # (\inst5|altsyncram_component|auto_generated|q_a\(30))) # (\inst5|altsyncram_component|auto_generated|q_a\(31)) ) ) ) # ( 
-- \inst5|altsyncram_component|auto_generated|q_a\(27) & ( !\inst5|altsyncram_component|auto_generated|q_a\(26) & ( (((!\inst5|altsyncram_component|auto_generated|q_a\(29)) # (!\inst5|altsyncram_component|auto_generated|q_a\(28))) # 
-- (\inst5|altsyncram_component|auto_generated|q_a\(30))) # (\inst5|altsyncram_component|auto_generated|q_a\(31)) ) ) ) # ( !\inst5|altsyncram_component|auto_generated|q_a\(27) & ( !\inst5|altsyncram_component|auto_generated|q_a\(26) & ( 
-- (((!\inst5|altsyncram_component|auto_generated|q_a\(29) & \inst5|altsyncram_component|auto_generated|q_a\(28))) # (\inst5|altsyncram_component|auto_generated|q_a\(30))) # (\inst5|altsyncram_component|auto_generated|q_a\(31)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011111110111111111111111011111111111111101111111111111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(31),
	datab => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(30),
	datac => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(29),
	datad => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(28),
	datae => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(27),
	dataf => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(26),
	combout => \inst23|Mux3~0_combout\);

-- Location: LABCELL_X70_Y7_N21
\inst23|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst23|Mux2~1_combout\ = ( !\inst5|altsyncram_component|auto_generated|q_a\(27) & ( !\inst5|altsyncram_component|auto_generated|q_a\(30) & ( (\inst5|altsyncram_component|auto_generated|q_a\(28) & (!\inst5|altsyncram_component|auto_generated|q_a\(31) & 
-- !\inst5|altsyncram_component|auto_generated|q_a\(29))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(28),
	datac => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(31),
	datad => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(29),
	datae => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(27),
	dataf => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(30),
	combout => \inst23|Mux2~1_combout\);

-- Location: LABCELL_X70_Y7_N39
\inst23|alu_control_funct[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst23|alu_control_funct\(2) = ( \inst23|alu_control_funct\(2) & ( (!\inst23|Mux3~0_combout\) # (\inst23|Mux2~1_combout\) ) ) # ( !\inst23|alu_control_funct\(2) & ( (\inst23|Mux3~0_combout\ & \inst23|Mux2~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst23|ALT_INV_Mux3~0_combout\,
	datad => \inst23|ALT_INV_Mux2~1_combout\,
	dataf => \inst23|ALT_INV_alu_control_funct\(2),
	combout => \inst23|alu_control_funct\(2));

-- Location: LABCELL_X70_Y7_N12
\inst22|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst22|Mux0~0_combout\ = ( \inst5|altsyncram_component|auto_generated|q_a\(27) & ( \inst5|altsyncram_component|auto_generated|q_a\(26) & ( (((!\inst5|altsyncram_component|auto_generated|q_a\(28)) # (!\inst5|altsyncram_component|auto_generated|q_a\(29))) 
-- # (\inst5|altsyncram_component|auto_generated|q_a\(30))) # (\inst5|altsyncram_component|auto_generated|q_a\(31)) ) ) ) # ( !\inst5|altsyncram_component|auto_generated|q_a\(27) & ( \inst5|altsyncram_component|auto_generated|q_a\(26) & ( 
-- (((!\inst5|altsyncram_component|auto_generated|q_a\(28)) # (!\inst5|altsyncram_component|auto_generated|q_a\(29))) # (\inst5|altsyncram_component|auto_generated|q_a\(30))) # (\inst5|altsyncram_component|auto_generated|q_a\(31)) ) ) ) # ( 
-- \inst5|altsyncram_component|auto_generated|q_a\(27) & ( !\inst5|altsyncram_component|auto_generated|q_a\(26) & ( (((!\inst5|altsyncram_component|auto_generated|q_a\(28)) # (!\inst5|altsyncram_component|auto_generated|q_a\(29))) # 
-- (\inst5|altsyncram_component|auto_generated|q_a\(30))) # (\inst5|altsyncram_component|auto_generated|q_a\(31)) ) ) ) # ( !\inst5|altsyncram_component|auto_generated|q_a\(27) & ( !\inst5|altsyncram_component|auto_generated|q_a\(26) & ( 
-- (((\inst5|altsyncram_component|auto_generated|q_a\(28) & !\inst5|altsyncram_component|auto_generated|q_a\(29))) # (\inst5|altsyncram_component|auto_generated|q_a\(30))) # (\inst5|altsyncram_component|auto_generated|q_a\(31)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101110111111111111111011111111111111101111111111111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(31),
	datab => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(30),
	datac => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(28),
	datad => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(29),
	datae => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(27),
	dataf => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(26),
	combout => \inst22|Mux0~0_combout\);

-- Location: LABCELL_X70_Y7_N9
\inst23|alu_control_funct[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst23|alu_control_funct\(0) = ( \inst22|Mux0~0_combout\ & ( (!\inst23|Mux3~0_combout\ & \inst23|alu_control_funct\(0)) ) ) # ( !\inst22|Mux0~0_combout\ & ( (\inst23|alu_control_funct\(0)) # (\inst23|Mux3~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst23|ALT_INV_Mux3~0_combout\,
	datad => \inst23|ALT_INV_alu_control_funct\(0),
	dataf => \inst22|ALT_INV_Mux0~0_combout\,
	combout => \inst23|alu_control_funct\(0));

-- Location: LABCELL_X70_Y7_N54
\inst4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4~0_combout\ = ( \inst23|alu_control_funct\(0) & ( !\inst23|alu_control_funct\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst23|ALT_INV_alu_control_funct\(2),
	dataf => \inst23|ALT_INV_alu_control_funct\(0),
	combout => \inst4~0_combout\);

-- Location: LABCELL_X67_Y7_N39
\inst16|output[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|output[4]~3_combout\ = ( \inst11|Add0~13_sumout\ & ( \inst22|Mux1~0_combout\ & ( \inst5|altsyncram_component|auto_generated|q_a\(2) ) ) ) # ( !\inst11|Add0~13_sumout\ & ( \inst22|Mux1~0_combout\ & ( 
-- \inst5|altsyncram_component|auto_generated|q_a\(2) ) ) ) # ( \inst11|Add0~13_sumout\ & ( !\inst22|Mux1~0_combout\ & ( ((!\inst4~0_combout\ & \inst23|Mux2~0_combout\)) # (\inst6|Add0~13_sumout\) ) ) ) # ( !\inst11|Add0~13_sumout\ & ( 
-- !\inst22|Mux1~0_combout\ & ( (\inst6|Add0~13_sumout\ & ((!\inst23|Mux2~0_combout\) # (\inst4~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000101010001010111010101110100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|ALT_INV_Add0~13_sumout\,
	datab => \ALT_INV_inst4~0_combout\,
	datac => \inst23|ALT_INV_Mux2~0_combout\,
	datad => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datae => \inst11|ALT_INV_Add0~13_sumout\,
	dataf => \inst22|ALT_INV_Mux1~0_combout\,
	combout => \inst16|output[4]~3_combout\);

-- Location: FF_X67_Y7_N41
\inst|address[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputCLKENA0_outclk\,
	d => \inst16|output[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|address\(4));

-- Location: LABCELL_X67_Y7_N9
\inst16|output[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|output[3]~4_combout\ = ( \inst11|Add0~17_sumout\ & ( \inst22|Mux1~0_combout\ & ( \inst5|altsyncram_component|auto_generated|q_a\(1) ) ) ) # ( !\inst11|Add0~17_sumout\ & ( \inst22|Mux1~0_combout\ & ( 
-- \inst5|altsyncram_component|auto_generated|q_a\(1) ) ) ) # ( \inst11|Add0~17_sumout\ & ( !\inst22|Mux1~0_combout\ & ( ((!\inst4~0_combout\ & \inst23|Mux2~0_combout\)) # (\inst6|Add0~17_sumout\) ) ) ) # ( !\inst11|Add0~17_sumout\ & ( 
-- !\inst22|Mux1~0_combout\ & ( (\inst6|Add0~17_sumout\ & ((!\inst23|Mux2~0_combout\) # (\inst4~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110011000011001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	datab => \ALT_INV_inst4~0_combout\,
	datac => \inst23|ALT_INV_Mux2~0_combout\,
	datad => \inst6|ALT_INV_Add0~17_sumout\,
	datae => \inst11|ALT_INV_Add0~17_sumout\,
	dataf => \inst22|ALT_INV_Mux1~0_combout\,
	combout => \inst16|output[3]~4_combout\);

-- Location: FF_X67_Y7_N11
\inst|address[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputCLKENA0_outclk\,
	d => \inst16|output[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|address\(3));

-- Location: LABCELL_X70_Y7_N42
\inst16|output[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|output[2]~5_combout\ = ( \inst11|Add0~21_sumout\ & ( \inst4~0_combout\ & ( (!\inst22|Mux1~0_combout\ & ((\inst6|Add0~21_sumout\))) # (\inst22|Mux1~0_combout\ & (\inst5|altsyncram_component|auto_generated|q_a\(0))) ) ) ) # ( 
-- !\inst11|Add0~21_sumout\ & ( \inst4~0_combout\ & ( (!\inst22|Mux1~0_combout\ & ((\inst6|Add0~21_sumout\))) # (\inst22|Mux1~0_combout\ & (\inst5|altsyncram_component|auto_generated|q_a\(0))) ) ) ) # ( \inst11|Add0~21_sumout\ & ( !\inst4~0_combout\ & ( 
-- (!\inst22|Mux1~0_combout\ & (((\inst23|Mux2~0_combout\) # (\inst6|Add0~21_sumout\)))) # (\inst22|Mux1~0_combout\ & (\inst5|altsyncram_component|auto_generated|q_a\(0))) ) ) ) # ( !\inst11|Add0~21_sumout\ & ( !\inst4~0_combout\ & ( 
-- (!\inst22|Mux1~0_combout\ & (((\inst6|Add0~21_sumout\ & !\inst23|Mux2~0_combout\)))) # (\inst22|Mux1~0_combout\ & (\inst5|altsyncram_component|auto_generated|q_a\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001010101001111110101010100110011010101010011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	datab => \inst6|ALT_INV_Add0~21_sumout\,
	datac => \inst23|ALT_INV_Mux2~0_combout\,
	datad => \inst22|ALT_INV_Mux1~0_combout\,
	datae => \inst11|ALT_INV_Add0~21_sumout\,
	dataf => \ALT_INV_inst4~0_combout\,
	combout => \inst16|output[2]~5_combout\);

-- Location: FF_X70_Y7_N44
\inst|address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputCLKENA0_outclk\,
	d => \inst16|output[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|address\(2));

-- Location: LABCELL_X70_Y7_N48
\inst22|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst22|Mux1~0_combout\ = ( !\inst5|altsyncram_component|auto_generated|q_a\(31) & ( !\inst5|altsyncram_component|auto_generated|q_a\(28) & ( (!\inst5|altsyncram_component|auto_generated|q_a\(30) & (\inst5|altsyncram_component|auto_generated|q_a\(27) & 
-- !\inst5|altsyncram_component|auto_generated|q_a\(29))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(30),
	datac => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(27),
	datad => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(29),
	datae => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(31),
	dataf => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(28),
	combout => \inst22|Mux1~0_combout\);

-- Location: LABCELL_X67_Y7_N48
\inst16|output[0]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|output[0]~7_combout\ = ( !\inst22|Mux1~0_combout\ & ( \inst6|Add0~29_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst6|ALT_INV_Add0~29_sumout\,
	dataf => \inst22|ALT_INV_Mux1~0_combout\,
	combout => \inst16|output[0]~7_combout\);

-- Location: FF_X67_Y7_N50
\inst|address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputCLKENA0_outclk\,
	d => \inst16|output[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|address\(0));

-- Location: LABCELL_X66_Y7_N18
\inst6|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~5_sumout\ = SUM(( \inst|address\(6) ) + ( GND ) + ( \inst6|Add0~10\ ))
-- \inst6|Add0~6\ = CARRY(( \inst|address\(6) ) + ( GND ) + ( \inst6|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_address\(6),
	cin => \inst6|Add0~10\,
	sumout => \inst6|Add0~5_sumout\,
	cout => \inst6|Add0~6\);

-- Location: LABCELL_X68_Y7_N12
\inst11|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Add0~5_sumout\ = SUM(( \inst5|altsyncram_component|auto_generated|q_a\(4) ) + ( \inst6|Add0~5_sumout\ ) + ( \inst11|Add0~10\ ))
-- \inst11|Add0~6\ = CARRY(( \inst5|altsyncram_component|auto_generated|q_a\(4) ) + ( \inst6|Add0~5_sumout\ ) + ( \inst11|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst6|ALT_INV_Add0~5_sumout\,
	datad => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	cin => \inst11|Add0~10\,
	sumout => \inst11|Add0~5_sumout\,
	cout => \inst11|Add0~6\);

-- Location: LABCELL_X68_Y7_N54
\inst16|output[6]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|output[6]~1_combout\ = ( \inst22|Mux1~0_combout\ & ( \inst4~0_combout\ & ( \inst5|altsyncram_component|auto_generated|q_a\(4) ) ) ) # ( !\inst22|Mux1~0_combout\ & ( \inst4~0_combout\ & ( \inst6|Add0~5_sumout\ ) ) ) # ( \inst22|Mux1~0_combout\ & ( 
-- !\inst4~0_combout\ & ( \inst5|altsyncram_component|auto_generated|q_a\(4) ) ) ) # ( !\inst22|Mux1~0_combout\ & ( !\inst4~0_combout\ & ( (!\inst23|Mux2~0_combout\ & (\inst6|Add0~5_sumout\)) # (\inst23|Mux2~0_combout\ & ((\inst11|Add0~5_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111010101010101010100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	datab => \inst23|ALT_INV_Mux2~0_combout\,
	datac => \inst6|ALT_INV_Add0~5_sumout\,
	datad => \inst11|ALT_INV_Add0~5_sumout\,
	datae => \inst22|ALT_INV_Mux1~0_combout\,
	dataf => \ALT_INV_inst4~0_combout\,
	combout => \inst16|output[6]~1_combout\);

-- Location: FF_X68_Y7_N56
\inst|address[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputCLKENA0_outclk\,
	d => \inst16|output[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|address\(6));

-- Location: LABCELL_X66_Y7_N21
\inst6|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~1_sumout\ = SUM(( \inst|address\(7) ) + ( GND ) + ( \inst6|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_address\(7),
	cin => \inst6|Add0~6\,
	sumout => \inst6|Add0~1_sumout\);

-- Location: LABCELL_X68_Y7_N15
\inst11|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Add0~1_sumout\ = SUM(( \inst5|altsyncram_component|auto_generated|q_a\(5) ) + ( \inst6|Add0~1_sumout\ ) + ( \inst11|Add0~6\ ))
-- \inst11|Add0~2\ = CARRY(( \inst5|altsyncram_component|auto_generated|q_a\(5) ) + ( \inst6|Add0~1_sumout\ ) + ( \inst11|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst6|ALT_INV_Add0~1_sumout\,
	datad => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	cin => \inst11|Add0~6\,
	sumout => \inst11|Add0~1_sumout\,
	cout => \inst11|Add0~2\);

-- Location: LABCELL_X67_Y7_N12
\inst16|output[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|output[7]~0_combout\ = ( \inst23|Mux2~0_combout\ & ( \inst11|Add0~1_sumout\ & ( (!\inst22|Mux1~0_combout\ & (((!\inst4~0_combout\)) # (\inst6|Add0~1_sumout\))) # (\inst22|Mux1~0_combout\ & (((\inst5|altsyncram_component|auto_generated|q_a\(5))))) 
-- ) ) ) # ( !\inst23|Mux2~0_combout\ & ( \inst11|Add0~1_sumout\ & ( (!\inst22|Mux1~0_combout\ & (\inst6|Add0~1_sumout\)) # (\inst22|Mux1~0_combout\ & ((\inst5|altsyncram_component|auto_generated|q_a\(5)))) ) ) ) # ( \inst23|Mux2~0_combout\ & ( 
-- !\inst11|Add0~1_sumout\ & ( (!\inst22|Mux1~0_combout\ & (\inst6|Add0~1_sumout\ & (\inst4~0_combout\))) # (\inst22|Mux1~0_combout\ & (((\inst5|altsyncram_component|auto_generated|q_a\(5))))) ) ) ) # ( !\inst23|Mux2~0_combout\ & ( !\inst11|Add0~1_sumout\ & 
-- ( (!\inst22|Mux1~0_combout\ & (\inst6|Add0~1_sumout\)) # (\inst22|Mux1~0_combout\ & ((\inst5|altsyncram_component|auto_generated|q_a\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111000100000001111101010000010111111101000011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|ALT_INV_Add0~1_sumout\,
	datab => \ALT_INV_inst4~0_combout\,
	datac => \inst22|ALT_INV_Mux1~0_combout\,
	datad => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	datae => \inst23|ALT_INV_Mux2~0_combout\,
	dataf => \inst11|ALT_INV_Add0~1_sumout\,
	combout => \inst16|output[7]~0_combout\);

-- Location: FF_X67_Y7_N14
\inst|address[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputCLKENA0_outclk\,
	d => \inst16|output[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|address\(7));

-- Location: LABCELL_X68_Y7_N18
\inst11|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Add0~65_sumout\ = SUM(( GND ) + ( \inst5|altsyncram_component|auto_generated|q_a\(6) ) + ( \inst11|Add0~2\ ))
-- \inst11|Add0~66\ = CARRY(( GND ) + ( \inst5|altsyncram_component|auto_generated|q_a\(6) ) + ( \inst11|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	cin => \inst11|Add0~2\,
	sumout => \inst11|Add0~65_sumout\,
	cout => \inst11|Add0~66\);

-- Location: LABCELL_X68_Y7_N21
\inst11|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Add0~61_sumout\ = SUM(( GND ) + ( \inst5|altsyncram_component|auto_generated|q_a\(7) ) + ( \inst11|Add0~66\ ))
-- \inst11|Add0~62\ = CARRY(( GND ) + ( \inst5|altsyncram_component|auto_generated|q_a\(7) ) + ( \inst11|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	cin => \inst11|Add0~66\,
	sumout => \inst11|Add0~61_sumout\,
	cout => \inst11|Add0~62\);

-- Location: LABCELL_X68_Y7_N24
\inst11|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Add0~57_sumout\ = SUM(( GND ) + ( \inst5|altsyncram_component|auto_generated|q_a\(8) ) + ( \inst11|Add0~62\ ))
-- \inst11|Add0~58\ = CARRY(( GND ) + ( \inst5|altsyncram_component|auto_generated|q_a\(8) ) + ( \inst11|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	cin => \inst11|Add0~62\,
	sumout => \inst11|Add0~57_sumout\,
	cout => \inst11|Add0~58\);

-- Location: LABCELL_X68_Y7_N27
\inst11|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Add0~53_sumout\ = SUM(( GND ) + ( \inst5|altsyncram_component|auto_generated|q_a\(9) ) + ( \inst11|Add0~58\ ))
-- \inst11|Add0~54\ = CARRY(( GND ) + ( \inst5|altsyncram_component|auto_generated|q_a\(9) ) + ( \inst11|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	cin => \inst11|Add0~58\,
	sumout => \inst11|Add0~53_sumout\,
	cout => \inst11|Add0~54\);

-- Location: LABCELL_X68_Y7_N30
\inst11|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Add0~49_sumout\ = SUM(( GND ) + ( \inst5|altsyncram_component|auto_generated|q_a\(10) ) + ( \inst11|Add0~54\ ))
-- \inst11|Add0~50\ = CARRY(( GND ) + ( \inst5|altsyncram_component|auto_generated|q_a\(10) ) + ( \inst11|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	cin => \inst11|Add0~54\,
	sumout => \inst11|Add0~49_sumout\,
	cout => \inst11|Add0~50\);

-- Location: LABCELL_X68_Y7_N33
\inst11|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Add0~45_sumout\ = SUM(( GND ) + ( \inst5|altsyncram_component|auto_generated|q_a\(11) ) + ( \inst11|Add0~50\ ))
-- \inst11|Add0~46\ = CARRY(( GND ) + ( \inst5|altsyncram_component|auto_generated|q_a\(11) ) + ( \inst11|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	cin => \inst11|Add0~50\,
	sumout => \inst11|Add0~45_sumout\,
	cout => \inst11|Add0~46\);

-- Location: LABCELL_X68_Y7_N36
\inst11|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Add0~41_sumout\ = SUM(( GND ) + ( \inst5|altsyncram_component|auto_generated|q_a\(12) ) + ( \inst11|Add0~46\ ))
-- \inst11|Add0~42\ = CARRY(( GND ) + ( \inst5|altsyncram_component|auto_generated|q_a\(12) ) + ( \inst11|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	cin => \inst11|Add0~46\,
	sumout => \inst11|Add0~41_sumout\,
	cout => \inst11|Add0~42\);

-- Location: LABCELL_X68_Y7_N39
\inst11|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Add0~37_sumout\ = SUM(( GND ) + ( \inst5|altsyncram_component|auto_generated|q_a\(13) ) + ( \inst11|Add0~42\ ))
-- \inst11|Add0~38\ = CARRY(( GND ) + ( \inst5|altsyncram_component|auto_generated|q_a\(13) ) + ( \inst11|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	cin => \inst11|Add0~42\,
	sumout => \inst11|Add0~37_sumout\,
	cout => \inst11|Add0~38\);

-- Location: LABCELL_X68_Y7_N42
\inst11|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Add0~33_sumout\ = SUM(( GND ) + ( \inst5|altsyncram_component|auto_generated|q_a\(14) ) + ( \inst11|Add0~38\ ))
-- \inst11|Add0~34\ = CARRY(( GND ) + ( \inst5|altsyncram_component|auto_generated|q_a\(14) ) + ( \inst11|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	cin => \inst11|Add0~38\,
	sumout => \inst11|Add0~33_sumout\,
	cout => \inst11|Add0~34\);

-- Location: LABCELL_X68_Y7_N45
\inst11|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Add0~29_sumout\ = SUM(( GND ) + ( \inst5|altsyncram_component|auto_generated|q_a\(15) ) + ( \inst11|Add0~34\ ))
-- \inst11|Add0~30\ = CARRY(( GND ) + ( \inst5|altsyncram_component|auto_generated|q_a\(15) ) + ( \inst11|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	cin => \inst11|Add0~34\,
	sumout => \inst11|Add0~29_sumout\,
	cout => \inst11|Add0~30\);

-- Location: LABCELL_X68_Y7_N48
\inst11|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Add0~25_sumout\ = SUM(( GND ) + ( \inst5|altsyncram_component|auto_generated|q_a\(15) ) + ( \inst11|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	cin => \inst11|Add0~30\,
	sumout => \inst11|Add0~25_sumout\);

-- Location: LABCELL_X70_Y7_N0
\inst4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4~1_combout\ = (\inst23|Mux2~0_combout\ & !\inst4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst23|ALT_INV_Mux2~0_combout\,
	datad => \ALT_INV_inst4~0_combout\,
	combout => \inst4~1_combout\);

-- Location: LABCELL_X60_Y4_N12
\inst9|output[31]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|output[31]~0_combout\ = ( \inst4~1_combout\ & ( \inst11|Add0~25_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst11|ALT_INV_Add0~25_sumout\,
	datae => \ALT_INV_inst4~1_combout\,
	combout => \inst9|output[31]~0_combout\);

-- Location: LABCELL_X60_Y4_N57
\inst16|output[27]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|output[27]~8_combout\ = ( \inst4~1_combout\ & ( \inst5|altsyncram_component|auto_generated|q_a\(25) & ( (\inst22|Mux1~0_combout\) # (\inst11|Add0~25_sumout\) ) ) ) # ( !\inst4~1_combout\ & ( \inst5|altsyncram_component|auto_generated|q_a\(25) & ( 
-- \inst22|Mux1~0_combout\ ) ) ) # ( \inst4~1_combout\ & ( !\inst5|altsyncram_component|auto_generated|q_a\(25) & ( (\inst11|Add0~25_sumout\ & !\inst22|Mux1~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000001111000011110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|ALT_INV_Add0~25_sumout\,
	datac => \inst22|ALT_INV_Mux1~0_combout\,
	datae => \ALT_INV_inst4~1_combout\,
	dataf => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(25),
	combout => \inst16|output[27]~8_combout\);

-- Location: LABCELL_X60_Y4_N39
\inst16|output[26]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|output[26]~9_combout\ = ( \inst4~1_combout\ & ( (!\inst22|Mux1~0_combout\ & (\inst11|Add0~25_sumout\)) # (\inst22|Mux1~0_combout\ & ((\inst5|altsyncram_component|auto_generated|q_a\(24)))) ) ) # ( !\inst4~1_combout\ & ( (\inst22|Mux1~0_combout\ & 
-- \inst5|altsyncram_component|auto_generated|q_a\(24)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011010001110100011100000011000000110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|ALT_INV_Add0~25_sumout\,
	datab => \inst22|ALT_INV_Mux1~0_combout\,
	datac => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(24),
	datae => \ALT_INV_inst4~1_combout\,
	combout => \inst16|output[26]~9_combout\);

-- Location: LABCELL_X60_Y4_N6
\inst16|output[25]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|output[25]~10_combout\ = ( \inst4~1_combout\ & ( \inst11|Add0~25_sumout\ & ( (!\inst22|Mux1~0_combout\) # (\inst5|altsyncram_component|auto_generated|q_a\(23)) ) ) ) # ( !\inst4~1_combout\ & ( \inst11|Add0~25_sumout\ & ( 
-- (\inst5|altsyncram_component|auto_generated|q_a\(23) & \inst22|Mux1~0_combout\) ) ) ) # ( \inst4~1_combout\ & ( !\inst11|Add0~25_sumout\ & ( (\inst5|altsyncram_component|auto_generated|q_a\(23) & \inst22|Mux1~0_combout\) ) ) ) # ( !\inst4~1_combout\ & ( 
-- !\inst11|Add0~25_sumout\ & ( (\inst5|altsyncram_component|auto_generated|q_a\(23) & \inst22|Mux1~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(23),
	datab => \inst22|ALT_INV_Mux1~0_combout\,
	datae => \ALT_INV_inst4~1_combout\,
	dataf => \inst11|ALT_INV_Add0~25_sumout\,
	combout => \inst16|output[25]~10_combout\);

-- Location: LABCELL_X60_Y4_N48
\inst16|output[24]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|output[24]~11_combout\ = ( \inst4~1_combout\ & ( \inst11|Add0~25_sumout\ & ( (!\inst22|Mux1~0_combout\) # (\inst5|altsyncram_component|auto_generated|q_a\(22)) ) ) ) # ( !\inst4~1_combout\ & ( \inst11|Add0~25_sumout\ & ( 
-- (\inst5|altsyncram_component|auto_generated|q_a\(22) & \inst22|Mux1~0_combout\) ) ) ) # ( \inst4~1_combout\ & ( !\inst11|Add0~25_sumout\ & ( (\inst5|altsyncram_component|auto_generated|q_a\(22) & \inst22|Mux1~0_combout\) ) ) ) # ( !\inst4~1_combout\ & ( 
-- !\inst11|Add0~25_sumout\ & ( (\inst5|altsyncram_component|auto_generated|q_a\(22) & \inst22|Mux1~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(22),
	datab => \inst22|ALT_INV_Mux1~0_combout\,
	datae => \ALT_INV_inst4~1_combout\,
	dataf => \inst11|ALT_INV_Add0~25_sumout\,
	combout => \inst16|output[24]~11_combout\);

-- Location: LABCELL_X60_Y4_N42
\inst16|output[23]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|output[23]~12_combout\ = ( \inst11|Add0~25_sumout\ & ( (!\inst22|Mux1~0_combout\ & (\inst4~1_combout\)) # (\inst22|Mux1~0_combout\ & ((\inst5|altsyncram_component|auto_generated|q_a\(21)))) ) ) # ( !\inst11|Add0~25_sumout\ & ( 
-- (\inst22|Mux1~0_combout\ & \inst5|altsyncram_component|auto_generated|q_a\(21)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst4~1_combout\,
	datab => \inst22|ALT_INV_Mux1~0_combout\,
	datac => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(21),
	dataf => \inst11|ALT_INV_Add0~25_sumout\,
	combout => \inst16|output[23]~12_combout\);

-- Location: LABCELL_X60_Y4_N45
\inst16|output[22]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|output[22]~13_combout\ = ( \inst11|Add0~25_sumout\ & ( (!\inst22|Mux1~0_combout\ & (\inst4~1_combout\)) # (\inst22|Mux1~0_combout\ & ((\inst5|altsyncram_component|auto_generated|q_a\(20)))) ) ) # ( !\inst11|Add0~25_sumout\ & ( 
-- (\inst22|Mux1~0_combout\ & \inst5|altsyncram_component|auto_generated|q_a\(20)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst4~1_combout\,
	datab => \inst22|ALT_INV_Mux1~0_combout\,
	datac => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(20),
	dataf => \inst11|ALT_INV_Add0~25_sumout\,
	combout => \inst16|output[22]~13_combout\);

-- Location: LABCELL_X60_Y4_N0
\inst16|output[21]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|output[21]~14_combout\ = ( \inst5|altsyncram_component|auto_generated|q_a\(19) & ( ((\inst4~1_combout\ & \inst11|Add0~25_sumout\)) # (\inst22|Mux1~0_combout\) ) ) # ( !\inst5|altsyncram_component|auto_generated|q_a\(19) & ( (\inst4~1_combout\ & 
-- (!\inst22|Mux1~0_combout\ & \inst11|Add0~25_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000110111001101110011011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst4~1_combout\,
	datab => \inst22|ALT_INV_Mux1~0_combout\,
	datac => \inst11|ALT_INV_Add0~25_sumout\,
	dataf => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(19),
	combout => \inst16|output[21]~14_combout\);

-- Location: LABCELL_X60_Y4_N30
\inst16|output[20]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|output[20]~15_combout\ = ( \inst5|altsyncram_component|auto_generated|q_a\(18) & ( ((\inst4~1_combout\ & \inst11|Add0~25_sumout\)) # (\inst22|Mux1~0_combout\) ) ) # ( !\inst5|altsyncram_component|auto_generated|q_a\(18) & ( (\inst4~1_combout\ & 
-- (!\inst22|Mux1~0_combout\ & \inst11|Add0~25_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000110111001101110011011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst4~1_combout\,
	datab => \inst22|ALT_INV_Mux1~0_combout\,
	datac => \inst11|ALT_INV_Add0~25_sumout\,
	dataf => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(18),
	combout => \inst16|output[20]~15_combout\);

-- Location: LABCELL_X60_Y4_N27
\inst16|output[19]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|output[19]~16_combout\ = ( \inst4~1_combout\ & ( \inst5|altsyncram_component|auto_generated|q_a\(17) & ( (\inst22|Mux1~0_combout\) # (\inst11|Add0~25_sumout\) ) ) ) # ( !\inst4~1_combout\ & ( \inst5|altsyncram_component|auto_generated|q_a\(17) & ( 
-- \inst22|Mux1~0_combout\ ) ) ) # ( \inst4~1_combout\ & ( !\inst5|altsyncram_component|auto_generated|q_a\(17) & ( (\inst11|Add0~25_sumout\ & !\inst22|Mux1~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000001111000011110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|ALT_INV_Add0~25_sumout\,
	datac => \inst22|ALT_INV_Mux1~0_combout\,
	datae => \ALT_INV_inst4~1_combout\,
	dataf => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(17),
	combout => \inst16|output[19]~16_combout\);

-- Location: LABCELL_X60_Y4_N21
\inst16|output[18]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|output[18]~17_combout\ = ( \inst4~1_combout\ & ( \inst11|Add0~25_sumout\ & ( (!\inst22|Mux1~0_combout\) # (\inst5|altsyncram_component|auto_generated|q_a\(16)) ) ) ) # ( !\inst4~1_combout\ & ( \inst11|Add0~25_sumout\ & ( (\inst22|Mux1~0_combout\ & 
-- \inst5|altsyncram_component|auto_generated|q_a\(16)) ) ) ) # ( \inst4~1_combout\ & ( !\inst11|Add0~25_sumout\ & ( (\inst22|Mux1~0_combout\ & \inst5|altsyncram_component|auto_generated|q_a\(16)) ) ) ) # ( !\inst4~1_combout\ & ( !\inst11|Add0~25_sumout\ & ( 
-- (\inst22|Mux1~0_combout\ & \inst5|altsyncram_component|auto_generated|q_a\(16)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst22|ALT_INV_Mux1~0_combout\,
	datad => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(16),
	datae => \ALT_INV_inst4~1_combout\,
	dataf => \inst11|ALT_INV_Add0~25_sumout\,
	combout => \inst16|output[18]~17_combout\);

-- Location: LABCELL_X60_Y4_N3
\inst16|output[17]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|output[17]~18_combout\ = ( \inst11|Add0~29_sumout\ & ( (!\inst22|Mux1~0_combout\ & (\inst4~1_combout\)) # (\inst22|Mux1~0_combout\ & ((\inst5|altsyncram_component|auto_generated|q_a\(15)))) ) ) # ( !\inst11|Add0~29_sumout\ & ( 
-- (\inst22|Mux1~0_combout\ & \inst5|altsyncram_component|auto_generated|q_a\(15)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst4~1_combout\,
	datab => \inst22|ALT_INV_Mux1~0_combout\,
	datac => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	dataf => \inst11|ALT_INV_Add0~29_sumout\,
	combout => \inst16|output[17]~18_combout\);

-- Location: LABCELL_X70_Y7_N24
\inst16|output[16]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|output[16]~19_combout\ = ( \inst4~1_combout\ & ( \inst22|Mux1~0_combout\ & ( \inst5|altsyncram_component|auto_generated|q_a\(14) ) ) ) # ( !\inst4~1_combout\ & ( \inst22|Mux1~0_combout\ & ( \inst5|altsyncram_component|auto_generated|q_a\(14) ) ) ) 
-- # ( \inst4~1_combout\ & ( !\inst22|Mux1~0_combout\ & ( \inst11|Add0~33_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	datab => \inst11|ALT_INV_Add0~33_sumout\,
	datae => \ALT_INV_inst4~1_combout\,
	dataf => \inst22|ALT_INV_Mux1~0_combout\,
	combout => \inst16|output[16]~19_combout\);

-- Location: LABCELL_X68_Y8_N27
\inst16|output[15]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|output[15]~20_combout\ = ( \inst4~1_combout\ & ( (!\inst22|Mux1~0_combout\ & (\inst11|Add0~37_sumout\)) # (\inst22|Mux1~0_combout\ & ((\inst5|altsyncram_component|auto_generated|q_a\(13)))) ) ) # ( !\inst4~1_combout\ & ( 
-- (\inst5|altsyncram_component|auto_generated|q_a\(13) & \inst22|Mux1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|ALT_INV_Add0~37_sumout\,
	datab => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datac => \inst22|ALT_INV_Mux1~0_combout\,
	dataf => \ALT_INV_inst4~1_combout\,
	combout => \inst16|output[15]~20_combout\);

-- Location: LABCELL_X70_Y7_N30
\inst16|output[14]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|output[14]~21_combout\ = ( \inst4~1_combout\ & ( \inst22|Mux1~0_combout\ & ( \inst5|altsyncram_component|auto_generated|q_a\(12) ) ) ) # ( !\inst4~1_combout\ & ( \inst22|Mux1~0_combout\ & ( \inst5|altsyncram_component|auto_generated|q_a\(12) ) ) ) 
-- # ( \inst4~1_combout\ & ( !\inst22|Mux1~0_combout\ & ( \inst11|Add0~41_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datac => \inst11|ALT_INV_Add0~41_sumout\,
	datae => \ALT_INV_inst4~1_combout\,
	dataf => \inst22|ALT_INV_Mux1~0_combout\,
	combout => \inst16|output[14]~21_combout\);

-- Location: LABCELL_X68_Y8_N54
\inst16|output[13]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|output[13]~22_combout\ = ( \inst11|Add0~45_sumout\ & ( \inst4~1_combout\ & ( (!\inst22|Mux1~0_combout\) # (\inst5|altsyncram_component|auto_generated|q_a\(11)) ) ) ) # ( !\inst11|Add0~45_sumout\ & ( \inst4~1_combout\ & ( (\inst22|Mux1~0_combout\ & 
-- \inst5|altsyncram_component|auto_generated|q_a\(11)) ) ) ) # ( \inst11|Add0~45_sumout\ & ( !\inst4~1_combout\ & ( (\inst22|Mux1~0_combout\ & \inst5|altsyncram_component|auto_generated|q_a\(11)) ) ) ) # ( !\inst11|Add0~45_sumout\ & ( !\inst4~1_combout\ & ( 
-- (\inst22|Mux1~0_combout\ & \inst5|altsyncram_component|auto_generated|q_a\(11)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst22|ALT_INV_Mux1~0_combout\,
	datac => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	datae => \inst11|ALT_INV_Add0~45_sumout\,
	dataf => \ALT_INV_inst4~1_combout\,
	combout => \inst16|output[13]~22_combout\);

-- Location: LABCELL_X60_Y4_N33
\inst16|output[12]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|output[12]~23_combout\ = ( \inst5|altsyncram_component|auto_generated|q_a\(10) & ( ((\inst4~1_combout\ & \inst11|Add0~49_sumout\)) # (\inst22|Mux1~0_combout\) ) ) # ( !\inst5|altsyncram_component|auto_generated|q_a\(10) & ( (\inst4~1_combout\ & 
-- (!\inst22|Mux1~0_combout\ & \inst11|Add0~49_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000110111001101110011011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst4~1_combout\,
	datab => \inst22|ALT_INV_Mux1~0_combout\,
	datac => \inst11|ALT_INV_Add0~49_sumout\,
	dataf => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	combout => \inst16|output[12]~23_combout\);

-- Location: LABCELL_X70_Y7_N36
\inst16|output[11]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|output[11]~24_combout\ = ( \inst22|Mux1~0_combout\ & ( \inst5|altsyncram_component|auto_generated|q_a\(9) ) ) # ( !\inst22|Mux1~0_combout\ & ( (!\inst4~0_combout\ & (\inst11|Add0~53_sumout\ & \inst23|Mux2~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst4~0_combout\,
	datab => \inst11|ALT_INV_Add0~53_sumout\,
	datac => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	datad => \inst23|ALT_INV_Mux2~0_combout\,
	dataf => \inst22|ALT_INV_Mux1~0_combout\,
	combout => \inst16|output[11]~24_combout\);

-- Location: LABCELL_X70_Y7_N6
\inst16|output[10]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|output[10]~25_combout\ = ( \inst5|altsyncram_component|auto_generated|q_a\(8) & ( ((\inst23|Mux2~0_combout\ & (\inst11|Add0~57_sumout\ & !\inst4~0_combout\))) # (\inst22|Mux1~0_combout\) ) ) # ( !\inst5|altsyncram_component|auto_generated|q_a\(8) 
-- & ( (\inst23|Mux2~0_combout\ & (\inst11|Add0~57_sumout\ & (!\inst4~0_combout\ & !\inst22|Mux1~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000010000111111110001000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|ALT_INV_Mux2~0_combout\,
	datab => \inst11|ALT_INV_Add0~57_sumout\,
	datac => \ALT_INV_inst4~0_combout\,
	datad => \inst22|ALT_INV_Mux1~0_combout\,
	dataf => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	combout => \inst16|output[10]~25_combout\);

-- Location: LABCELL_X67_Y7_N42
\inst16|output[9]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|output[9]~26_combout\ = ( \inst11|Add0~61_sumout\ & ( \inst22|Mux1~0_combout\ & ( \inst5|altsyncram_component|auto_generated|q_a\(7) ) ) ) # ( !\inst11|Add0~61_sumout\ & ( \inst22|Mux1~0_combout\ & ( 
-- \inst5|altsyncram_component|auto_generated|q_a\(7) ) ) ) # ( \inst11|Add0~61_sumout\ & ( !\inst22|Mux1~0_combout\ & ( (\inst23|Mux2~0_combout\ & !\inst4~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	datac => \inst23|ALT_INV_Mux2~0_combout\,
	datad => \ALT_INV_inst4~0_combout\,
	datae => \inst11|ALT_INV_Add0~61_sumout\,
	dataf => \inst22|ALT_INV_Mux1~0_combout\,
	combout => \inst16|output[9]~26_combout\);

-- Location: LABCELL_X67_Y7_N27
\inst16|output[8]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|output[8]~27_combout\ = ( \inst4~0_combout\ & ( \inst22|Mux1~0_combout\ & ( \inst5|altsyncram_component|auto_generated|q_a\(6) ) ) ) # ( !\inst4~0_combout\ & ( \inst22|Mux1~0_combout\ & ( \inst5|altsyncram_component|auto_generated|q_a\(6) ) ) ) # 
-- ( !\inst4~0_combout\ & ( !\inst22|Mux1~0_combout\ & ( (\inst23|Mux2~0_combout\ & \inst11|Add0~65_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	datac => \inst23|ALT_INV_Mux2~0_combout\,
	datad => \inst11|ALT_INV_Add0~65_sumout\,
	datae => \ALT_INV_inst4~0_combout\,
	dataf => \inst22|ALT_INV_Mux1~0_combout\,
	combout => \inst16|output[8]~27_combout\);

-- Location: LABCELL_X24_Y79_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


