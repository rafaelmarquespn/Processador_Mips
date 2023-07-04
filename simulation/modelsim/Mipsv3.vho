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

-- DATE "07/03/2023 22:33:24"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
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
	current_adress : OUT std_logic_vector(7 DOWNTO 0);
	clock : IN std_logic;
	read_register : OUT std_logic_vector(31 DOWNTO 0);
	sub_z : OUT std_logic_vector(5 DOWNTO 0)
	);
END main;

-- Design Ports Information
-- current_adress[7]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- current_adress[6]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- current_adress[5]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- current_adress[4]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- current_adress[3]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- current_adress[2]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- current_adress[1]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- current_adress[0]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_register[31]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_register[30]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_register[29]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_register[28]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_register[27]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_register[26]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_register[25]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_register[24]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_register[23]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_register[22]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_register[21]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_register[20]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_register[19]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_register[18]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_register[17]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_register[16]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_register[15]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_register[14]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_register[13]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_register[12]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_register[11]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_register[10]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_register[9]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_register[8]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_register[7]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_register[6]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_register[5]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_register[4]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_register[3]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_register[2]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_register[1]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_register[0]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sub_z[5]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sub_z[4]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sub_z[3]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sub_z[2]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sub_z[1]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sub_z[0]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_current_adress : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clock : std_logic;
SIGNAL ww_read_register : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_sub_z : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst5|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst5|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \inst6|Add0~21_sumout\ : std_logic;
SIGNAL \inst|address[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst6|Add0~22\ : std_logic;
SIGNAL \inst6|Add0~17_sumout\ : std_logic;
SIGNAL \inst|address[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst6|Add0~18\ : std_logic;
SIGNAL \inst6|Add0~13_sumout\ : std_logic;
SIGNAL \inst|address[2]~feeder_combout\ : std_logic;
SIGNAL \inst6|Add0~14\ : std_logic;
SIGNAL \inst6|Add0~9_sumout\ : std_logic;
SIGNAL \inst|address[3]~feeder_combout\ : std_logic;
SIGNAL \inst6|Add0~10\ : std_logic;
SIGNAL \inst6|Add0~5_sumout\ : std_logic;
SIGNAL \inst|address[4]~feeder_combout\ : std_logic;
SIGNAL \inst6|Add0~6\ : std_logic;
SIGNAL \inst6|Add0~1_sumout\ : std_logic;
SIGNAL \inst|address[5]~feeder_combout\ : std_logic;
SIGNAL \inst6|Add0~2\ : std_logic;
SIGNAL \inst6|Add0~29_sumout\ : std_logic;
SIGNAL \inst6|Add0~30\ : std_logic;
SIGNAL \inst6|Add0~25_sumout\ : std_logic;
SIGNAL \inst|address[7]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|address[2]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|address[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|address[5]~DUPLICATE_q\ : std_logic;
SIGNAL \inst5|altsyncram_component|auto_generated|q_a\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|address\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|ALT_INV_address[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_address[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \inst|ALT_INV_address\ : std_logic_vector(7 DOWNTO 2);
SIGNAL \inst6|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \inst6|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \inst6|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \inst6|ALT_INV_Add0~1_sumout\ : std_logic;

BEGIN

current_adress <= ww_current_adress;
ww_clock <= clock;
read_register <= ww_read_register;
sub_z <= ww_sub_z;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst5|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst|address\(7) & \inst|address\(6) & \inst|address[5]~DUPLICATE_q\ & \inst|address[4]~DUPLICATE_q\ & \inst|address\(3) & \inst|address[2]~DUPLICATE_q\ & 
\inst|address[1]~DUPLICATE_q\ & \inst|address[0]~DUPLICATE_q\);

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
\inst|ALT_INV_address[0]~DUPLICATE_q\ <= NOT \inst|address[0]~DUPLICATE_q\;
\inst|ALT_INV_address[1]~DUPLICATE_q\ <= NOT \inst|address[1]~DUPLICATE_q\;
\ALT_INV_clock~inputCLKENA0_outclk\ <= NOT \clock~inputCLKENA0_outclk\;
\inst|ALT_INV_address\(2) <= NOT \inst|address\(2);
\inst|ALT_INV_address\(3) <= NOT \inst|address\(3);
\inst|ALT_INV_address\(4) <= NOT \inst|address\(4);
\inst|ALT_INV_address\(5) <= NOT \inst|address\(5);
\inst|ALT_INV_address\(6) <= NOT \inst|address\(6);
\inst|ALT_INV_address\(7) <= NOT \inst|address\(7);
\inst6|ALT_INV_Add0~13_sumout\ <= NOT \inst6|Add0~13_sumout\;
\inst6|ALT_INV_Add0~9_sumout\ <= NOT \inst6|Add0~9_sumout\;
\inst6|ALT_INV_Add0~5_sumout\ <= NOT \inst6|Add0~5_sumout\;
\inst6|ALT_INV_Add0~1_sumout\ <= NOT \inst6|Add0~1_sumout\;

-- Location: IOOBUF_X89_Y35_N45
\current_adress[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|address[7]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_current_adress(7));

-- Location: IOOBUF_X89_Y36_N39
\current_adress[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|address\(6),
	devoe => ww_devoe,
	o => ww_current_adress(6));

-- Location: IOOBUF_X89_Y36_N22
\current_adress[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|address\(5),
	devoe => ww_devoe,
	o => ww_current_adress(5));

-- Location: IOOBUF_X89_Y38_N56
\current_adress[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|address\(4),
	devoe => ww_devoe,
	o => ww_current_adress(4));

-- Location: IOOBUF_X89_Y36_N5
\current_adress[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|address\(3),
	devoe => ww_devoe,
	o => ww_current_adress(3));

-- Location: IOOBUF_X89_Y36_N56
\current_adress[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|address\(2),
	devoe => ww_devoe,
	o => ww_current_adress(2));

-- Location: IOOBUF_X89_Y35_N79
\current_adress[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|address\(1),
	devoe => ww_devoe,
	o => ww_current_adress(1));

-- Location: IOOBUF_X89_Y35_N96
\current_adress[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|address\(0),
	devoe => ww_devoe,
	o => ww_current_adress(0));

-- Location: IOOBUF_X89_Y8_N39
\read_register[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(31),
	devoe => ww_devoe,
	o => ww_read_register(31));

-- Location: IOOBUF_X89_Y8_N22
\read_register[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(30),
	devoe => ww_devoe,
	o => ww_read_register(30));

-- Location: IOOBUF_X89_Y9_N56
\read_register[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(29),
	devoe => ww_devoe,
	o => ww_read_register(29));

-- Location: IOOBUF_X76_Y81_N36
\read_register[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(28),
	devoe => ww_devoe,
	o => ww_read_register(28));

-- Location: IOOBUF_X72_Y0_N36
\read_register[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(27),
	devoe => ww_devoe,
	o => ww_read_register(27));

-- Location: IOOBUF_X89_Y8_N5
\read_register[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(26),
	devoe => ww_devoe,
	o => ww_read_register(26));

-- Location: IOOBUF_X76_Y81_N19
\read_register[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(25),
	devoe => ww_devoe,
	o => ww_read_register(25));

-- Location: IOOBUF_X89_Y9_N22
\read_register[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(24),
	devoe => ww_devoe,
	o => ww_read_register(24));

-- Location: IOOBUF_X70_Y0_N36
\read_register[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(23),
	devoe => ww_devoe,
	o => ww_read_register(23));

-- Location: IOOBUF_X70_Y0_N53
\read_register[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(22),
	devoe => ww_devoe,
	o => ww_read_register(22));

-- Location: IOOBUF_X74_Y81_N59
\read_register[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(21),
	devoe => ww_devoe,
	o => ww_read_register(21));

-- Location: IOOBUF_X89_Y8_N56
\read_register[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(20),
	devoe => ww_devoe,
	o => ww_read_register(20));

-- Location: IOOBUF_X89_Y38_N22
\read_register[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(19),
	devoe => ww_devoe,
	o => ww_read_register(19));

-- Location: IOOBUF_X89_Y6_N56
\read_register[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(18),
	devoe => ww_devoe,
	o => ww_read_register(18));

-- Location: IOOBUF_X70_Y0_N2
\read_register[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(17),
	devoe => ww_devoe,
	o => ww_read_register(17));

-- Location: IOOBUF_X89_Y37_N22
\read_register[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(16),
	devoe => ww_devoe,
	o => ww_read_register(16));

-- Location: IOOBUF_X74_Y81_N76
\read_register[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => ww_read_register(15));

-- Location: IOOBUF_X72_Y0_N2
\read_register[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(14),
	devoe => ww_devoe,
	o => ww_read_register(14));

-- Location: IOOBUF_X76_Y81_N2
\read_register[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(13),
	devoe => ww_devoe,
	o => ww_read_register(13));

-- Location: IOOBUF_X72_Y0_N19
\read_register[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(12),
	devoe => ww_devoe,
	o => ww_read_register(12));

-- Location: IOOBUF_X72_Y0_N53
\read_register[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(11),
	devoe => ww_devoe,
	o => ww_read_register(11));

-- Location: IOOBUF_X78_Y81_N2
\read_register[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(10),
	devoe => ww_devoe,
	o => ww_read_register(10));

-- Location: IOOBUF_X89_Y9_N5
\read_register[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(9),
	devoe => ww_devoe,
	o => ww_read_register(9));

-- Location: IOOBUF_X89_Y6_N39
\read_register[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(8),
	devoe => ww_devoe,
	o => ww_read_register(8));

-- Location: IOOBUF_X74_Y81_N93
\read_register[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => ww_read_register(7));

-- Location: IOOBUF_X74_Y81_N42
\read_register[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => ww_read_register(6));

-- Location: IOOBUF_X89_Y6_N22
\read_register[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => ww_read_register(5));

-- Location: IOOBUF_X78_Y81_N19
\read_register[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => ww_read_register(4));

-- Location: IOOBUF_X89_Y9_N39
\read_register[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => ww_read_register(3));

-- Location: IOOBUF_X89_Y38_N5
\read_register[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => ww_read_register(2));

-- Location: IOOBUF_X89_Y38_N39
\read_register[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => ww_read_register(1));

-- Location: IOOBUF_X76_Y81_N53
\read_register[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => ww_read_register(0));

-- Location: IOOBUF_X89_Y37_N5
\sub_z[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|Add0~1_sumout\,
	devoe => ww_devoe,
	o => ww_sub_z(5));

-- Location: IOOBUF_X68_Y0_N2
\sub_z[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|Add0~5_sumout\,
	devoe => ww_devoe,
	o => ww_sub_z(4));

-- Location: IOOBUF_X70_Y0_N19
\sub_z[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|Add0~9_sumout\,
	devoe => ww_devoe,
	o => ww_sub_z(3));

-- Location: IOOBUF_X89_Y37_N56
\sub_z[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|Add0~13_sumout\,
	devoe => ww_devoe,
	o => ww_sub_z(2));

-- Location: IOOBUF_X68_Y0_N36
\sub_z[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|Add0~17_sumout\,
	devoe => ww_devoe,
	o => ww_sub_z(1));

-- Location: IOOBUF_X89_Y37_N39
\sub_z[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|Add0~21_sumout\,
	devoe => ww_devoe,
	o => ww_sub_z(0));

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

-- Location: FF_X75_Y35_N22
\inst|address[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputCLKENA0_outclk\,
	d => \inst6|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|address\(7));

-- Location: LABCELL_X75_Y35_N0
\inst6|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~21_sumout\ = SUM(( \inst|address[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \inst6|Add0~22\ = CARRY(( \inst|address[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_address[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \inst6|Add0~21_sumout\,
	cout => \inst6|Add0~22\);

-- Location: FF_X75_Y35_N29
\inst|address[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputCLKENA0_outclk\,
	asdata => \inst6|Add0~21_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|address[0]~DUPLICATE_q\);

-- Location: LABCELL_X75_Y35_N3
\inst6|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~17_sumout\ = SUM(( \inst|address[1]~DUPLICATE_q\ ) + ( GND ) + ( \inst6|Add0~22\ ))
-- \inst6|Add0~18\ = CARRY(( \inst|address[1]~DUPLICATE_q\ ) + ( GND ) + ( \inst6|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_address[1]~DUPLICATE_q\,
	cin => \inst6|Add0~22\,
	sumout => \inst6|Add0~17_sumout\,
	cout => \inst6|Add0~18\);

-- Location: FF_X75_Y35_N41
\inst|address[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputCLKENA0_outclk\,
	asdata => \inst6|Add0~17_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|address[1]~DUPLICATE_q\);

-- Location: LABCELL_X75_Y35_N6
\inst6|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~13_sumout\ = SUM(( \inst|address\(2) ) + ( GND ) + ( \inst6|Add0~18\ ))
-- \inst6|Add0~14\ = CARRY(( \inst|address\(2) ) + ( GND ) + ( \inst6|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_address\(2),
	cin => \inst6|Add0~18\,
	sumout => \inst6|Add0~13_sumout\,
	cout => \inst6|Add0~14\);

-- Location: LABCELL_X75_Y35_N48
\inst|address[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|address[2]~feeder_combout\ = ( \inst6|Add0~13_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst6|ALT_INV_Add0~13_sumout\,
	combout => \inst|address[2]~feeder_combout\);

-- Location: FF_X75_Y35_N50
\inst|address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputCLKENA0_outclk\,
	d => \inst|address[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|address\(2));

-- Location: LABCELL_X75_Y35_N9
\inst6|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~9_sumout\ = SUM(( \inst|address\(3) ) + ( GND ) + ( \inst6|Add0~14\ ))
-- \inst6|Add0~10\ = CARRY(( \inst|address\(3) ) + ( GND ) + ( \inst6|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_address\(3),
	cin => \inst6|Add0~14\,
	sumout => \inst6|Add0~9_sumout\,
	cout => \inst6|Add0~10\);

-- Location: LABCELL_X75_Y35_N57
\inst|address[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|address[3]~feeder_combout\ = ( \inst6|Add0~9_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst6|ALT_INV_Add0~9_sumout\,
	combout => \inst|address[3]~feeder_combout\);

-- Location: FF_X75_Y35_N59
\inst|address[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputCLKENA0_outclk\,
	d => \inst|address[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|address\(3));

-- Location: LABCELL_X75_Y35_N12
\inst6|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~5_sumout\ = SUM(( \inst|address\(4) ) + ( GND ) + ( \inst6|Add0~10\ ))
-- \inst6|Add0~6\ = CARRY(( \inst|address\(4) ) + ( GND ) + ( \inst6|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_address\(4),
	cin => \inst6|Add0~10\,
	sumout => \inst6|Add0~5_sumout\,
	cout => \inst6|Add0~6\);

-- Location: LABCELL_X75_Y35_N42
\inst|address[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|address[4]~feeder_combout\ = ( \inst6|Add0~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst6|ALT_INV_Add0~5_sumout\,
	combout => \inst|address[4]~feeder_combout\);

-- Location: FF_X75_Y35_N44
\inst|address[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputCLKENA0_outclk\,
	d => \inst|address[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|address\(4));

-- Location: LABCELL_X75_Y35_N15
\inst6|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~1_sumout\ = SUM(( \inst|address\(5) ) + ( GND ) + ( \inst6|Add0~6\ ))
-- \inst6|Add0~2\ = CARRY(( \inst|address\(5) ) + ( GND ) + ( \inst6|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_address\(5),
	cin => \inst6|Add0~6\,
	sumout => \inst6|Add0~1_sumout\,
	cout => \inst6|Add0~2\);

-- Location: LABCELL_X75_Y35_N30
\inst|address[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|address[5]~feeder_combout\ = ( \inst6|Add0~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst6|ALT_INV_Add0~1_sumout\,
	combout => \inst|address[5]~feeder_combout\);

-- Location: FF_X75_Y35_N32
\inst|address[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputCLKENA0_outclk\,
	d => \inst|address[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|address\(5));

-- Location: LABCELL_X75_Y35_N18
\inst6|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~29_sumout\ = SUM(( \inst|address\(6) ) + ( GND ) + ( \inst6|Add0~2\ ))
-- \inst6|Add0~30\ = CARRY(( \inst|address\(6) ) + ( GND ) + ( \inst6|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_address\(6),
	cin => \inst6|Add0~2\,
	sumout => \inst6|Add0~29_sumout\,
	cout => \inst6|Add0~30\);

-- Location: FF_X75_Y35_N20
\inst|address[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputCLKENA0_outclk\,
	d => \inst6|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|address\(6));

-- Location: LABCELL_X75_Y35_N21
\inst6|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~25_sumout\ = SUM(( \inst|address\(7) ) + ( GND ) + ( \inst6|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_address\(7),
	cin => \inst6|Add0~30\,
	sumout => \inst6|Add0~25_sumout\);

-- Location: FF_X75_Y35_N23
\inst|address[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputCLKENA0_outclk\,
	d => \inst6|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|address[7]~DUPLICATE_q\);

-- Location: FF_X75_Y35_N40
\inst|address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputCLKENA0_outclk\,
	asdata => \inst6|Add0~17_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|address\(1));

-- Location: FF_X75_Y35_N28
\inst|address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputCLKENA0_outclk\,
	asdata => \inst6|Add0~21_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|address\(0));

-- Location: FF_X75_Y35_N49
\inst|address[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputCLKENA0_outclk\,
	d => \inst|address[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|address[2]~DUPLICATE_q\);

-- Location: FF_X75_Y35_N43
\inst|address[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputCLKENA0_outclk\,
	d => \inst|address[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|address[4]~DUPLICATE_q\);

-- Location: FF_X75_Y35_N31
\inst|address[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputCLKENA0_outclk\,
	d => \inst|address[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|address[5]~DUPLICATE_q\);

-- Location: M10K_X76_Y35_N0
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
	ena0 => \clock~input_o\,
	portaaddr => \inst5|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst5|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LABCELL_X10_Y39_N0
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


