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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 22.1std.1 Build 917 02/14/2023 SC Lite Edition"

-- DATE "07/05/2023 11:51:04"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
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
	pin_name4 : OUT std_logic;
	clock : IN std_logic;
	pin_name5 : OUT std_logic;
	pin_name6 : OUT std_logic;
	alu_out : OUT std_logic_vector(3 DOWNTO 0);
	instruction_funct : OUT std_logic_vector(5 DOWNTO 0);
	instruction_opcode : OUT std_logic_vector(5 DOWNTO 0);
	instruction_total : OUT std_logic_vector(31 DOWNTO 0)
	);
END main;

-- Design Ports Information
-- pin_name4	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name5	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name6	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_out[3]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_out[2]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_out[1]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_out[0]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_funct[5]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_funct[4]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_funct[3]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_funct[2]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_funct[1]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_funct[0]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_opcode[5]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_opcode[4]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_opcode[3]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_opcode[2]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_opcode[1]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_opcode[0]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_total[31]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_total[30]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_total[29]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_total[28]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_total[27]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_total[26]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_total[25]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_total[24]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_total[23]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_total[22]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_total[21]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_total[20]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_total[19]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_total[18]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_total[17]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_total[16]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_total[15]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_total[14]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_total[13]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_total[12]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_total[11]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_total[10]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_total[9]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_total[8]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_total[7]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_total[6]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_total[5]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_total[4]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_total[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_total[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_total[1]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_total[0]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_pin_name4 : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_pin_name5 : std_logic;
SIGNAL ww_pin_name6 : std_logic;
SIGNAL ww_alu_out : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_instruction_funct : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_instruction_opcode : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_instruction_total : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst5|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst5|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \inst6|Add0~1_sumout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \inst6|Add0~2\ : std_logic;
SIGNAL \inst6|Add0~5_sumout\ : std_logic;
SIGNAL \inst6|Add0~6\ : std_logic;
SIGNAL \inst6|Add0~9_sumout\ : std_logic;
SIGNAL \inst6|Add0~10\ : std_logic;
SIGNAL \inst6|Add0~13_sumout\ : std_logic;
SIGNAL \inst6|Add0~14\ : std_logic;
SIGNAL \inst6|Add0~17_sumout\ : std_logic;
SIGNAL \inst6|Add0~18\ : std_logic;
SIGNAL \inst6|Add0~21_sumout\ : std_logic;
SIGNAL \inst6|Add0~22\ : std_logic;
SIGNAL \inst6|Add0~25_sumout\ : std_logic;
SIGNAL \inst6|Add0~26\ : std_logic;
SIGNAL \inst6|Add0~29_sumout\ : std_logic;
SIGNAL \inst1|Mux9~0_combout\ : std_logic;
SIGNAL \inst1|Mux8~1_combout\ : std_logic;
SIGNAL \inst1|Mux8~0_combout\ : std_logic;
SIGNAL \inst15|Mux1~0_combout\ : std_logic;
SIGNAL \inst15|Mux4~0_combout\ : std_logic;
SIGNAL \inst15|Mux3~0_combout\ : std_logic;
SIGNAL \inst15|Mux3~1_combout\ : std_logic;
SIGNAL \inst15|Mux2~0_combout\ : std_logic;
SIGNAL \inst4~combout\ : std_logic;
SIGNAL \inst1|Mux3~0_combout\ : std_logic;
SIGNAL \inst1|Mux5~0_combout\ : std_logic;
SIGNAL \inst5|altsyncram_component|auto_generated|q_a\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|address\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \inst15|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \inst15|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \inst15|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \inst15|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \inst15|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Mux8~1_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_address\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\ : std_logic_vector(31 DOWNTO 0);

BEGIN

pin_name4 <= ww_pin_name4;
ww_clock <= clock;
pin_name5 <= ww_pin_name5;
pin_name6 <= ww_pin_name6;
alu_out <= ww_alu_out;
instruction_funct <= ww_instruction_funct;
instruction_opcode <= ww_instruction_opcode;
instruction_total <= ww_instruction_total;
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
\ALT_INV_clock~inputCLKENA0_outclk\ <= NOT \clock~inputCLKENA0_outclk\;
\inst15|ALT_INV_Mux4~0_combout\ <= NOT \inst15|Mux4~0_combout\;
\inst15|ALT_INV_Mux1~0_combout\ <= NOT \inst15|Mux1~0_combout\;
\inst15|ALT_INV_Mux3~1_combout\ <= NOT \inst15|Mux3~1_combout\;
\inst15|ALT_INV_Mux2~0_combout\ <= NOT \inst15|Mux2~0_combout\;
\inst15|ALT_INV_Mux3~0_combout\ <= NOT \inst15|Mux3~0_combout\;
\inst1|ALT_INV_Mux9~0_combout\ <= NOT \inst1|Mux9~0_combout\;
\inst1|ALT_INV_Mux8~1_combout\ <= NOT \inst1|Mux8~1_combout\;
\inst1|ALT_INV_Mux8~0_combout\ <= NOT \inst1|Mux8~0_combout\;
\inst|ALT_INV_address\(7) <= NOT \inst|address\(7);
\inst|ALT_INV_address\(6) <= NOT \inst|address\(6);
\inst|ALT_INV_address\(5) <= NOT \inst|address\(5);
\inst|ALT_INV_address\(4) <= NOT \inst|address\(4);
\inst|ALT_INV_address\(3) <= NOT \inst|address\(3);
\inst|ALT_INV_address\(2) <= NOT \inst|address\(2);
\inst|ALT_INV_address\(1) <= NOT \inst|address\(1);
\inst|ALT_INV_address\(0) <= NOT \inst|address\(0);
\inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(1) <= NOT \inst5|altsyncram_component|auto_generated|q_a\(1);
\inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(2) <= NOT \inst5|altsyncram_component|auto_generated|q_a\(2);
\inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(3) <= NOT \inst5|altsyncram_component|auto_generated|q_a\(3);
\inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(4) <= NOT \inst5|altsyncram_component|auto_generated|q_a\(4);
\inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(5) <= NOT \inst5|altsyncram_component|auto_generated|q_a\(5);
\inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(26) <= NOT \inst5|altsyncram_component|auto_generated|q_a\(26);
\inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(27) <= NOT \inst5|altsyncram_component|auto_generated|q_a\(27);
\inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(28) <= NOT \inst5|altsyncram_component|auto_generated|q_a\(28);
\inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(29) <= NOT \inst5|altsyncram_component|auto_generated|q_a\(29);
\inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(30) <= NOT \inst5|altsyncram_component|auto_generated|q_a\(30);
\inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(31) <= NOT \inst5|altsyncram_component|auto_generated|q_a\(31);
\inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(0) <= NOT \inst5|altsyncram_component|auto_generated|q_a\(0);

-- Location: IOOBUF_X70_Y0_N36
\pin_name4~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_pin_name4);

-- Location: IOOBUF_X70_Y0_N2
\pin_name5~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_pin_name5);

-- Location: IOOBUF_X62_Y0_N53
\pin_name6~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_pin_name6);

-- Location: IOOBUF_X26_Y0_N76
\alu_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_alu_out(3));

-- Location: IOOBUF_X66_Y0_N59
\alu_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_alu_out(2));

-- Location: IOOBUF_X68_Y0_N2
\alu_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|Mux3~1_combout\,
	devoe => ww_devoe,
	o => ww_alu_out(1));

-- Location: IOOBUF_X66_Y0_N93
\alu_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_alu_out(0));

-- Location: IOOBUF_X50_Y0_N42
\instruction_funct[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(31),
	devoe => ww_devoe,
	o => ww_instruction_funct(5));

-- Location: IOOBUF_X60_Y0_N36
\instruction_funct[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(30),
	devoe => ww_devoe,
	o => ww_instruction_funct(4));

-- Location: IOOBUF_X56_Y0_N36
\instruction_funct[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(29),
	devoe => ww_devoe,
	o => ww_instruction_funct(3));

-- Location: IOOBUF_X70_Y0_N53
\instruction_funct[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(28),
	devoe => ww_devoe,
	o => ww_instruction_funct(2));

-- Location: IOOBUF_X52_Y0_N36
\instruction_funct[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(27),
	devoe => ww_devoe,
	o => ww_instruction_funct(1));

-- Location: IOOBUF_X54_Y0_N19
\instruction_funct[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(26),
	devoe => ww_devoe,
	o => ww_instruction_funct(0));

-- Location: IOOBUF_X64_Y0_N36
\instruction_opcode[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => ww_instruction_opcode(5));

-- Location: IOOBUF_X62_Y0_N36
\instruction_opcode[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => ww_instruction_opcode(4));

-- Location: IOOBUF_X66_Y0_N42
\instruction_opcode[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => ww_instruction_opcode(3));

-- Location: IOOBUF_X68_Y0_N53
\instruction_opcode[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => ww_instruction_opcode(2));

-- Location: IOOBUF_X38_Y0_N53
\instruction_opcode[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => ww_instruction_opcode(1));

-- Location: IOOBUF_X40_Y0_N53
\instruction_opcode[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => ww_instruction_opcode(0));

-- Location: IOOBUF_X50_Y0_N93
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

-- Location: IOOBUF_X60_Y0_N53
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

-- Location: IOOBUF_X56_Y0_N2
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

-- Location: IOOBUF_X52_Y0_N53
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

-- Location: IOOBUF_X54_Y0_N36
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

-- Location: IOOBUF_X52_Y0_N2
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

-- Location: IOOBUF_X58_Y0_N76
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

-- Location: IOOBUF_X56_Y0_N53
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

-- Location: IOOBUF_X58_Y0_N42
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

-- Location: IOOBUF_X60_Y0_N2
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

-- Location: IOOBUF_X64_Y0_N53
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

-- Location: IOOBUF_X40_Y0_N19
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

-- Location: IOOBUF_X50_Y0_N59
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

-- Location: IOOBUF_X56_Y0_N19
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

-- Location: IOOBUF_X64_Y0_N2
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

-- Location: IOOBUF_X58_Y0_N59
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

-- Location: IOOBUF_X38_Y0_N2
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

-- Location: IOOBUF_X54_Y0_N2
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

-- Location: IOOBUF_X54_Y0_N53
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

-- Location: IOOBUF_X58_Y0_N93
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

-- Location: IOOBUF_X62_Y0_N2
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

-- Location: IOOBUF_X60_Y0_N19
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

-- Location: IOOBUF_X40_Y0_N2
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

-- Location: IOOBUF_X52_Y0_N19
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

-- Location: IOOBUF_X50_Y0_N76
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

-- Location: IOOBUF_X64_Y0_N19
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

-- Location: IOOBUF_X62_Y0_N19
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

-- Location: IOOBUF_X66_Y0_N76
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

-- Location: IOOBUF_X68_Y0_N36
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

-- Location: IOOBUF_X38_Y0_N36
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

-- Location: IOOBUF_X40_Y0_N36
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

-- Location: MLABCELL_X59_Y3_N0
\inst6|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~1_sumout\ = SUM(( \inst|address\(0) ) + ( VCC ) + ( !VCC ))
-- \inst6|Add0~2\ = CARRY(( \inst|address\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_address\(0),
	cin => GND,
	sumout => \inst6|Add0~1_sumout\,
	cout => \inst6|Add0~2\);

-- Location: LABCELL_X60_Y3_N0
\~GND\ : cyclonev_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: MLABCELL_X59_Y3_N3
\inst6|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~5_sumout\ = SUM(( \inst|address\(1) ) + ( GND ) + ( \inst6|Add0~2\ ))
-- \inst6|Add0~6\ = CARRY(( \inst|address\(1) ) + ( GND ) + ( \inst6|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_address\(1),
	cin => \inst6|Add0~2\,
	sumout => \inst6|Add0~5_sumout\,
	cout => \inst6|Add0~6\);

-- Location: FF_X59_Y3_N5
\inst|address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputCLKENA0_outclk\,
	d => \inst6|Add0~5_sumout\,
	asdata => \~GND~combout\,
	sload => \inst4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|address\(1));

-- Location: MLABCELL_X59_Y3_N6
\inst6|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~9_sumout\ = SUM(( \inst|address\(2) ) + ( GND ) + ( \inst6|Add0~6\ ))
-- \inst6|Add0~10\ = CARRY(( \inst|address\(2) ) + ( GND ) + ( \inst6|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_address\(2),
	cin => \inst6|Add0~6\,
	sumout => \inst6|Add0~9_sumout\,
	cout => \inst6|Add0~10\);

-- Location: MLABCELL_X59_Y3_N9
\inst6|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~13_sumout\ = SUM(( \inst|address\(3) ) + ( GND ) + ( \inst6|Add0~10\ ))
-- \inst6|Add0~14\ = CARRY(( \inst|address\(3) ) + ( GND ) + ( \inst6|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_address\(3),
	cin => \inst6|Add0~10\,
	sumout => \inst6|Add0~13_sumout\,
	cout => \inst6|Add0~14\);

-- Location: MLABCELL_X59_Y3_N12
\inst6|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~17_sumout\ = SUM(( \inst|address\(4) ) + ( GND ) + ( \inst6|Add0~14\ ))
-- \inst6|Add0~18\ = CARRY(( \inst|address\(4) ) + ( GND ) + ( \inst6|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_address\(4),
	cin => \inst6|Add0~14\,
	sumout => \inst6|Add0~17_sumout\,
	cout => \inst6|Add0~18\);

-- Location: MLABCELL_X59_Y3_N15
\inst6|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~21_sumout\ = SUM(( \inst|address\(5) ) + ( GND ) + ( \inst6|Add0~18\ ))
-- \inst6|Add0~22\ = CARRY(( \inst|address\(5) ) + ( GND ) + ( \inst6|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_address\(5),
	cin => \inst6|Add0~18\,
	sumout => \inst6|Add0~21_sumout\,
	cout => \inst6|Add0~22\);

-- Location: MLABCELL_X59_Y3_N18
\inst6|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~25_sumout\ = SUM(( \inst|address\(6) ) + ( GND ) + ( \inst6|Add0~22\ ))
-- \inst6|Add0~26\ = CARRY(( \inst|address\(6) ) + ( GND ) + ( \inst6|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_address\(6),
	cin => \inst6|Add0~22\,
	sumout => \inst6|Add0~25_sumout\,
	cout => \inst6|Add0~26\);

-- Location: MLABCELL_X59_Y3_N21
\inst6|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~29_sumout\ = SUM(( \inst|address\(7) ) + ( GND ) + ( \inst6|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_address\(7),
	cin => \inst6|Add0~26\,
	sumout => \inst6|Add0~29_sumout\);

-- Location: M10K_X58_Y3_N0
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

-- Location: FF_X59_Y3_N23
\inst|address[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputCLKENA0_outclk\,
	d => \inst6|Add0~29_sumout\,
	asdata => \inst5|altsyncram_component|auto_generated|q_a\(5),
	sload => \inst4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|address\(7));

-- Location: FF_X59_Y3_N19
\inst|address[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputCLKENA0_outclk\,
	d => \inst6|Add0~25_sumout\,
	asdata => \inst5|altsyncram_component|auto_generated|q_a\(4),
	sload => \inst4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|address\(6));

-- Location: FF_X59_Y3_N17
\inst|address[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputCLKENA0_outclk\,
	d => \inst6|Add0~21_sumout\,
	asdata => \inst5|altsyncram_component|auto_generated|q_a\(3),
	sload => \inst4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|address\(5));

-- Location: FF_X59_Y3_N13
\inst|address[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputCLKENA0_outclk\,
	d => \inst6|Add0~17_sumout\,
	asdata => \inst5|altsyncram_component|auto_generated|q_a\(2),
	sload => \inst4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|address\(4));

-- Location: FF_X59_Y3_N11
\inst|address[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputCLKENA0_outclk\,
	d => \inst6|Add0~13_sumout\,
	asdata => \inst5|altsyncram_component|auto_generated|q_a\(1),
	sload => \inst4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|address\(3));

-- Location: FF_X59_Y3_N7
\inst|address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputCLKENA0_outclk\,
	d => \inst6|Add0~9_sumout\,
	asdata => \inst5|altsyncram_component|auto_generated|q_a\(0),
	sload => \inst4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|address\(2));

-- Location: MLABCELL_X59_Y3_N42
\inst1|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux9~0_combout\ = ( !\inst5|altsyncram_component|auto_generated|q_a\(30) & ( (!\inst5|altsyncram_component|auto_generated|q_a\(29) & (\inst5|altsyncram_component|auto_generated|q_a\(28) & (!\inst5|altsyncram_component|auto_generated|q_a\(27) & 
-- !\inst5|altsyncram_component|auto_generated|q_a\(31)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(29),
	datab => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(28),
	datac => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(27),
	datad => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(31),
	dataf => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(30),
	combout => \inst1|Mux9~0_combout\);

-- Location: MLABCELL_X59_Y3_N45
\inst1|Mux8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux8~1_combout\ = ( !\inst5|altsyncram_component|auto_generated|q_a\(30) & ( !\inst5|altsyncram_component|auto_generated|q_a\(31) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(31),
	dataf => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(30),
	combout => \inst1|Mux8~1_combout\);

-- Location: MLABCELL_X59_Y3_N27
\inst1|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux8~0_combout\ = ( \inst5|altsyncram_component|auto_generated|q_a\(28) & ( (!\inst5|altsyncram_component|auto_generated|q_a\(29) & (\inst5|altsyncram_component|auto_generated|q_a\(26) & !\inst5|altsyncram_component|auto_generated|q_a\(27))) ) ) # 
-- ( !\inst5|altsyncram_component|auto_generated|q_a\(28) & ( (!\inst5|altsyncram_component|auto_generated|q_a\(29) & (!\inst5|altsyncram_component|auto_generated|q_a\(26) & !\inst5|altsyncram_component|auto_generated|q_a\(27))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(29),
	datac => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(26),
	datad => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(27),
	dataf => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(28),
	combout => \inst1|Mux8~0_combout\);

-- Location: MLABCELL_X59_Y3_N33
\inst15|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst15|Mux1~0_combout\ = ( \inst5|altsyncram_component|auto_generated|q_a\(2) & ( (!\inst5|altsyncram_component|auto_generated|q_a\(3) & (\inst5|altsyncram_component|auto_generated|q_a\(0) & !\inst5|altsyncram_component|auto_generated|q_a\(1))) ) ) # ( 
-- !\inst5|altsyncram_component|auto_generated|q_a\(2) & ( (\inst5|altsyncram_component|auto_generated|q_a\(3) & (!\inst5|altsyncram_component|auto_generated|q_a\(0) & \inst5|altsyncram_component|auto_generated|q_a\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	datac => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	datad => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	dataf => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	combout => \inst15|Mux1~0_combout\);

-- Location: MLABCELL_X59_Y3_N36
\inst15|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst15|Mux4~0_combout\ = ( \inst1|Mux8~0_combout\ & ( \inst15|Mux1~0_combout\ & ( (\inst1|Mux8~1_combout\ & (((!\inst5|altsyncram_component|auto_generated|q_a\(4) & \inst5|altsyncram_component|auto_generated|q_a\(5))) # (\inst1|Mux9~0_combout\))) ) ) ) # 
-- ( \inst1|Mux8~0_combout\ & ( !\inst15|Mux1~0_combout\ & ( (\inst1|Mux9~0_combout\ & \inst1|Mux8~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011001100000000000000000000000000111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	datab => \inst1|ALT_INV_Mux9~0_combout\,
	datac => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	datad => \inst1|ALT_INV_Mux8~1_combout\,
	datae => \inst1|ALT_INV_Mux8~0_combout\,
	dataf => \inst15|ALT_INV_Mux1~0_combout\,
	combout => \inst15|Mux4~0_combout\);

-- Location: MLABCELL_X59_Y3_N24
\inst15|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst15|Mux3~0_combout\ = ( \inst5|altsyncram_component|auto_generated|q_a\(5) & ( (!\inst5|altsyncram_component|auto_generated|q_a\(0) & (!\inst5|altsyncram_component|auto_generated|q_a\(4) & !\inst5|altsyncram_component|auto_generated|q_a\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	datac => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	datad => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	dataf => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	combout => \inst15|Mux3~0_combout\);

-- Location: MLABCELL_X59_Y3_N54
\inst15|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst15|Mux3~1_combout\ = ( \inst1|Mux8~0_combout\ & ( \inst15|Mux3~0_combout\ & ( (!\inst5|altsyncram_component|auto_generated|q_a\(3) & (!\inst1|Mux9~0_combout\ $ (((\inst1|Mux8~1_combout\) # (\inst5|altsyncram_component|auto_generated|q_a\(1)))))) # 
-- (\inst5|altsyncram_component|auto_generated|q_a\(3) & (\inst1|Mux8~1_combout\ & ((\inst1|Mux9~0_combout\) # (\inst5|altsyncram_component|auto_generated|q_a\(1))))) ) ) ) # ( !\inst1|Mux8~0_combout\ & ( \inst15|Mux3~0_combout\ & ( 
-- (!\inst5|altsyncram_component|auto_generated|q_a\(3) & (!\inst5|altsyncram_component|auto_generated|q_a\(1) $ (\inst1|Mux9~0_combout\))) ) ) ) # ( \inst1|Mux8~0_combout\ & ( !\inst15|Mux3~0_combout\ & ( (\inst1|Mux9~0_combout\ & \inst1|Mux8~1_combout\) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011001110010000100100001001000000110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	datab => \inst1|ALT_INV_Mux9~0_combout\,
	datac => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	datad => \inst1|ALT_INV_Mux8~1_combout\,
	datae => \inst1|ALT_INV_Mux8~0_combout\,
	dataf => \inst15|ALT_INV_Mux3~0_combout\,
	combout => \inst15|Mux3~1_combout\);

-- Location: MLABCELL_X59_Y3_N48
\inst15|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst15|Mux2~0_combout\ = ( \inst1|Mux8~0_combout\ & ( \inst1|Mux9~0_combout\ & ( (\inst5|altsyncram_component|auto_generated|q_a\(1) & (!\inst5|altsyncram_component|auto_generated|q_a\(3) & (\inst15|Mux3~0_combout\ & !\inst1|Mux8~1_combout\))) ) ) ) # ( 
-- !\inst1|Mux8~0_combout\ & ( \inst1|Mux9~0_combout\ & ( (\inst5|altsyncram_component|auto_generated|q_a\(1) & (!\inst5|altsyncram_component|auto_generated|q_a\(3) & \inst15|Mux3~0_combout\)) ) ) ) # ( \inst1|Mux8~0_combout\ & ( !\inst1|Mux9~0_combout\ & ( 
-- (\inst5|altsyncram_component|auto_generated|q_a\(1) & (\inst5|altsyncram_component|auto_generated|q_a\(3) & (\inst15|Mux3~0_combout\ & \inst1|Mux8~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000100000001000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	datab => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	datac => \inst15|ALT_INV_Mux3~0_combout\,
	datad => \inst1|ALT_INV_Mux8~1_combout\,
	datae => \inst1|ALT_INV_Mux8~0_combout\,
	dataf => \inst1|ALT_INV_Mux9~0_combout\,
	combout => \inst15|Mux2~0_combout\);

-- Location: MLABCELL_X59_Y3_N30
inst4 : cyclonev_lcell_comb
-- Equation(s):
-- \inst4~combout\ = ( \inst15|Mux2~0_combout\ & ( !\inst1|Mux9~0_combout\ ) ) # ( !\inst15|Mux2~0_combout\ & ( (!\inst1|Mux9~0_combout\) # ((\inst15|Mux4~0_combout\ & \inst15|Mux3~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001111110011001100111111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|ALT_INV_Mux9~0_combout\,
	datac => \inst15|ALT_INV_Mux4~0_combout\,
	datad => \inst15|ALT_INV_Mux3~1_combout\,
	dataf => \inst15|ALT_INV_Mux2~0_combout\,
	combout => \inst4~combout\);

-- Location: FF_X59_Y3_N1
\inst|address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputCLKENA0_outclk\,
	d => \inst6|Add0~1_sumout\,
	asdata => \~GND~combout\,
	sload => \inst4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|address\(0));

-- Location: MLABCELL_X59_Y1_N12
\inst1|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux3~0_combout\ = ( !\inst5|altsyncram_component|auto_generated|q_a\(30) & ( \inst5|altsyncram_component|auto_generated|q_a\(26) & ( (!\inst5|altsyncram_component|auto_generated|q_a\(29) & (!\inst5|altsyncram_component|auto_generated|q_a\(28) & 
-- (\inst5|altsyncram_component|auto_generated|q_a\(31) & \inst5|altsyncram_component|auto_generated|q_a\(27)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(29),
	datab => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(28),
	datac => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(31),
	datad => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(27),
	datae => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(30),
	dataf => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(26),
	combout => \inst1|Mux3~0_combout\);

-- Location: MLABCELL_X59_Y1_N42
\inst1|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux5~0_combout\ = ( !\inst5|altsyncram_component|auto_generated|q_a\(30) & ( \inst5|altsyncram_component|auto_generated|q_a\(26) & ( (\inst5|altsyncram_component|auto_generated|q_a\(29) & (!\inst5|altsyncram_component|auto_generated|q_a\(28) & 
-- (\inst5|altsyncram_component|auto_generated|q_a\(31) & \inst5|altsyncram_component|auto_generated|q_a\(27)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(29),
	datab => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(28),
	datac => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(31),
	datad => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(27),
	datae => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(30),
	dataf => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(26),
	combout => \inst1|Mux5~0_combout\);
END structure;


