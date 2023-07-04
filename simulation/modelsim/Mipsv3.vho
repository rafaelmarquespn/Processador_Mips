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

-- DATE "07/03/2023 23:15:44"

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
	pin_name2 : OUT std_logic;
	clock : IN std_logic;
	pin_name3 : OUT std_logic;
	pin_name4 : OUT std_logic;
	pin_name5 : OUT std_logic;
	pin_name6 : OUT std_logic;
	pin_name7 : OUT std_logic;
	pin_name8 : OUT std_logic;
	alu_op : OUT std_logic_vector(1 DOWNTO 0);
	current_adress : OUT std_logic_vector(7 DOWNTO 0);
	reg_dest : OUT std_logic_vector(0 DOWNTO 0);
	sub_z : OUT std_logic_vector(5 DOWNTO 0)
	);
END main;

-- Design Ports Information
-- pin_name2	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name3	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name4	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name5	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name6	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name7	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name8	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_op[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_op[0]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- current_adress[7]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- current_adress[6]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- current_adress[5]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- current_adress[4]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- current_adress[3]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- current_adress[2]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- current_adress[1]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- current_adress[0]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_dest[0]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sub_z[5]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sub_z[4]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sub_z[3]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sub_z[2]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sub_z[1]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sub_z[0]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_pin_name2 : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_pin_name3 : std_logic;
SIGNAL ww_pin_name4 : std_logic;
SIGNAL ww_pin_name5 : std_logic;
SIGNAL ww_pin_name6 : std_logic;
SIGNAL ww_pin_name7 : std_logic;
SIGNAL ww_pin_name8 : std_logic;
SIGNAL ww_alu_op : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_current_adress : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_reg_dest : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_sub_z : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst5|altsyncram_component|auto_generated|ram_block1a26_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst5|altsyncram_component|auto_generated|ram_block1a26_PORTADATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
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
SIGNAL \inst|address[2]~DUPLICATE_q\ : std_logic;
SIGNAL \inst6|Add0~14\ : std_logic;
SIGNAL \inst6|Add0~9_sumout\ : std_logic;
SIGNAL \inst|address[3]~feeder_combout\ : std_logic;
SIGNAL \inst|address[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inst6|Add0~10\ : std_logic;
SIGNAL \inst6|Add0~5_sumout\ : std_logic;
SIGNAL \inst|address[4]~feeder_combout\ : std_logic;
SIGNAL \inst|address[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inst6|Add0~6\ : std_logic;
SIGNAL \inst6|Add0~1_sumout\ : std_logic;
SIGNAL \inst|address[5]~feeder_combout\ : std_logic;
SIGNAL \inst|address[5]~DUPLICATE_q\ : std_logic;
SIGNAL \inst6|Add0~2\ : std_logic;
SIGNAL \inst6|Add0~29_sumout\ : std_logic;
SIGNAL \inst6|Add0~30\ : std_logic;
SIGNAL \inst6|Add0~25_sumout\ : std_logic;
SIGNAL \inst1|Mux1~0_combout\ : std_logic;
SIGNAL \inst1|Mux2~0_combout\ : std_logic;
SIGNAL \inst1|Mux3~0_combout\ : std_logic;
SIGNAL \inst1|Mux5~0_combout\ : std_logic;
SIGNAL \inst1|Mux6~0_combout\ : std_logic;
SIGNAL \inst1|Mux7~0_combout\ : std_logic;
SIGNAL \inst1|Mux8~0_combout\ : std_logic;
SIGNAL \inst|address[7]~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|Mux0~0_combout\ : std_logic;
SIGNAL \inst5|altsyncram_component|auto_generated|q_a\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|address\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\ : std_logic_vector(31 DOWNTO 26);
SIGNAL \inst6|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \inst6|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \inst6|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \inst6|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_address\ : std_logic_vector(7 DOWNTO 2);
SIGNAL \ALT_INV_clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \inst1|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_address[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_address[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_address[5]~DUPLICATE_q\ : std_logic;

BEGIN

pin_name2 <= ww_pin_name2;
ww_clock <= clock;
pin_name3 <= ww_pin_name3;
pin_name4 <= ww_pin_name4;
pin_name5 <= ww_pin_name5;
pin_name6 <= ww_pin_name6;
pin_name7 <= ww_pin_name7;
pin_name8 <= ww_pin_name8;
alu_op <= ww_alu_op;
current_adress <= ww_current_adress;
reg_dest <= ww_reg_dest;
sub_z <= ww_sub_z;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst5|altsyncram_component|auto_generated|ram_block1a26_PORTAADDR_bus\ <= (\inst|address\(7) & \inst|address\(6) & \inst|address[5]~DUPLICATE_q\ & \inst|address[4]~DUPLICATE_q\ & \inst|address[3]~DUPLICATE_q\ & \inst|address[2]~DUPLICATE_q\ & 
\inst|address[1]~DUPLICATE_q\ & \inst|address[0]~DUPLICATE_q\);

\inst5|altsyncram_component|auto_generated|q_a\(26) <= \inst5|altsyncram_component|auto_generated|ram_block1a26_PORTADATAOUT_bus\(0);
\inst5|altsyncram_component|auto_generated|q_a\(27) <= \inst5|altsyncram_component|auto_generated|ram_block1a26_PORTADATAOUT_bus\(1);
\inst5|altsyncram_component|auto_generated|q_a\(28) <= \inst5|altsyncram_component|auto_generated|ram_block1a26_PORTADATAOUT_bus\(2);
\inst5|altsyncram_component|auto_generated|q_a\(29) <= \inst5|altsyncram_component|auto_generated|ram_block1a26_PORTADATAOUT_bus\(3);
\inst5|altsyncram_component|auto_generated|q_a\(30) <= \inst5|altsyncram_component|auto_generated|ram_block1a26_PORTADATAOUT_bus\(4);
\inst5|altsyncram_component|auto_generated|q_a\(31) <= \inst5|altsyncram_component|auto_generated|ram_block1a26_PORTADATAOUT_bus\(5);
\inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(26) <= NOT \inst5|altsyncram_component|auto_generated|q_a\(26);
\inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(31) <= NOT \inst5|altsyncram_component|auto_generated|q_a\(31);
\inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(30) <= NOT \inst5|altsyncram_component|auto_generated|q_a\(30);
\inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(29) <= NOT \inst5|altsyncram_component|auto_generated|q_a\(29);
\inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(28) <= NOT \inst5|altsyncram_component|auto_generated|q_a\(28);
\inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(27) <= NOT \inst5|altsyncram_component|auto_generated|q_a\(27);
\inst6|ALT_INV_Add0~1_sumout\ <= NOT \inst6|Add0~1_sumout\;
\inst6|ALT_INV_Add0~5_sumout\ <= NOT \inst6|Add0~5_sumout\;
\inst6|ALT_INV_Add0~9_sumout\ <= NOT \inst6|Add0~9_sumout\;
\inst6|ALT_INV_Add0~13_sumout\ <= NOT \inst6|Add0~13_sumout\;
\inst|ALT_INV_address\(7) <= NOT \inst|address\(7);
\ALT_INV_clock~inputCLKENA0_outclk\ <= NOT \clock~inputCLKENA0_outclk\;
\inst|ALT_INV_address\(6) <= NOT \inst|address\(6);
\inst|ALT_INV_address\(4) <= NOT \inst|address\(4);
\inst|ALT_INV_address\(3) <= NOT \inst|address\(3);
\inst|ALT_INV_address\(2) <= NOT \inst|address\(2);
\inst1|ALT_INV_Mux8~0_combout\ <= NOT \inst1|Mux8~0_combout\;
\inst1|ALT_INV_Mux7~0_combout\ <= NOT \inst1|Mux7~0_combout\;
\inst|ALT_INV_address[0]~DUPLICATE_q\ <= NOT \inst|address[0]~DUPLICATE_q\;
\inst|ALT_INV_address[1]~DUPLICATE_q\ <= NOT \inst|address[1]~DUPLICATE_q\;
\inst|ALT_INV_address[5]~DUPLICATE_q\ <= NOT \inst|address[5]~DUPLICATE_q\;

-- Location: IOOBUF_X89_Y37_N22
\pin_name2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_pin_name2);

-- Location: IOOBUF_X78_Y81_N19
\pin_name3~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_pin_name3);

-- Location: IOOBUF_X72_Y0_N19
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

-- Location: IOOBUF_X72_Y0_N2
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

-- Location: IOOBUF_X89_Y38_N22
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

-- Location: IOOBUF_X89_Y37_N5
\pin_name7~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_pin_name7);

-- Location: IOOBUF_X89_Y9_N39
\pin_name8~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_Mux7~0_combout\,
	devoe => ww_devoe,
	o => ww_pin_name8);

-- Location: IOOBUF_X89_Y37_N56
\alu_op[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_Mux8~0_combout\,
	devoe => ww_devoe,
	o => ww_alu_op(1));

-- Location: IOOBUF_X78_Y81_N36
\alu_op[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_alu_op(0));

-- Location: IOOBUF_X89_Y36_N56
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

-- Location: IOOBUF_X89_Y38_N5
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

-- Location: IOOBUF_X89_Y36_N39
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

-- Location: IOOBUF_X89_Y35_N79
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

-- Location: IOOBUF_X89_Y35_N96
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

-- Location: IOOBUF_X89_Y35_N45
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

-- Location: IOOBUF_X89_Y37_N39
\reg_dest[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_reg_dest(0));

-- Location: IOOBUF_X89_Y38_N56
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

-- Location: IOOBUF_X74_Y81_N93
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

-- Location: IOOBUF_X89_Y38_N39
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

-- Location: IOOBUF_X89_Y9_N56
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

-- Location: IOOBUF_X72_Y0_N36
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

-- Location: IOOBUF_X89_Y9_N22
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

-- Location: FF_X75_Y35_N47
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

-- Location: LABCELL_X75_Y35_N45
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

-- Location: FF_X75_Y35_N46
\inst|address[3]~DUPLICATE\ : dffeas
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
	q => \inst|address[3]~DUPLICATE_q\);

-- Location: FF_X75_Y35_N32
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

-- Location: LABCELL_X75_Y35_N30
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

-- Location: FF_X75_Y35_N31
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

-- Location: LABCELL_X75_Y35_N15
\inst6|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~1_sumout\ = SUM(( \inst|address[5]~DUPLICATE_q\ ) + ( GND ) + ( \inst6|Add0~6\ ))
-- \inst6|Add0~2\ = CARRY(( \inst|address[5]~DUPLICATE_q\ ) + ( GND ) + ( \inst6|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_address[5]~DUPLICATE_q\,
	cin => \inst6|Add0~6\,
	sumout => \inst6|Add0~1_sumout\,
	cout => \inst6|Add0~2\);

-- Location: LABCELL_X75_Y35_N54
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

-- Location: FF_X75_Y35_N56
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

-- Location: M10K_X76_Y35_N0
\inst5|altsyncram_component|auto_generated|ram_block1a26\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000900001000000001C0001C00000000000000000000000050000F000000000100000000000000D0000F000000000000000000000000E0000D000000000D0000F0000800000000000000000000000020000200000000040002B0000D0000F0000000000000000000000000000000001C0000000023000230000D0000F",
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
	port_a_data_width => 20,
	port_a_first_address => 0,
	port_a_first_bit_number => 26,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 20,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clock~inputCLKENA0_outclk\,
	ena0 => \clock~input_o\,
	portaaddr => \inst5|altsyncram_component|auto_generated|ram_block1a26_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst5|altsyncram_component|auto_generated|ram_block1a26_PORTADATAOUT_bus\);

-- Location: LABCELL_X77_Y35_N36
\inst1|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux1~0_combout\ = ( !\inst5|altsyncram_component|auto_generated|q_a\(28) & ( !\inst5|altsyncram_component|auto_generated|q_a\(30) & ( (!\inst5|altsyncram_component|auto_generated|q_a\(29) & (!\inst5|altsyncram_component|auto_generated|q_a\(31) & 
-- (\inst5|altsyncram_component|auto_generated|q_a\(27) & !\inst5|altsyncram_component|auto_generated|q_a\(26)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(29),
	datab => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(31),
	datac => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(27),
	datad => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(26),
	datae => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(28),
	dataf => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(30),
	combout => \inst1|Mux1~0_combout\);

-- Location: LABCELL_X77_Y35_N42
\inst1|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux2~0_combout\ = ( !\inst5|altsyncram_component|auto_generated|q_a\(27) & ( !\inst5|altsyncram_component|auto_generated|q_a\(30) & ( (\inst5|altsyncram_component|auto_generated|q_a\(28) & (!\inst5|altsyncram_component|auto_generated|q_a\(31) & 
-- !\inst5|altsyncram_component|auto_generated|q_a\(29))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(28),
	datab => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(31),
	datac => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(29),
	datae => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(27),
	dataf => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(30),
	combout => \inst1|Mux2~0_combout\);

-- Location: LABCELL_X77_Y35_N24
\inst1|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux3~0_combout\ = ( !\inst5|altsyncram_component|auto_generated|q_a\(28) & ( !\inst5|altsyncram_component|auto_generated|q_a\(30) & ( (!\inst5|altsyncram_component|auto_generated|q_a\(29) & (\inst5|altsyncram_component|auto_generated|q_a\(31) & 
-- (\inst5|altsyncram_component|auto_generated|q_a\(27) & \inst5|altsyncram_component|auto_generated|q_a\(26)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(29),
	datab => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(31),
	datac => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(27),
	datad => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(26),
	datae => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(28),
	dataf => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(30),
	combout => \inst1|Mux3~0_combout\);

-- Location: LABCELL_X77_Y35_N30
\inst1|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux5~0_combout\ = ( !\inst5|altsyncram_component|auto_generated|q_a\(28) & ( !\inst5|altsyncram_component|auto_generated|q_a\(30) & ( (\inst5|altsyncram_component|auto_generated|q_a\(29) & (\inst5|altsyncram_component|auto_generated|q_a\(31) & 
-- (\inst5|altsyncram_component|auto_generated|q_a\(27) & \inst5|altsyncram_component|auto_generated|q_a\(26)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(29),
	datab => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(31),
	datac => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(27),
	datad => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(26),
	datae => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(28),
	dataf => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(30),
	combout => \inst1|Mux5~0_combout\);

-- Location: LABCELL_X77_Y35_N54
\inst1|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux6~0_combout\ = ( !\inst5|altsyncram_component|auto_generated|q_a\(28) & ( !\inst5|altsyncram_component|auto_generated|q_a\(30) & ( (!\inst5|altsyncram_component|auto_generated|q_a\(31) & (\inst5|altsyncram_component|auto_generated|q_a\(29) & 
-- (!\inst5|altsyncram_component|auto_generated|q_a\(27) & !\inst5|altsyncram_component|auto_generated|q_a\(26)))) # (\inst5|altsyncram_component|auto_generated|q_a\(31) & (((\inst5|altsyncram_component|auto_generated|q_a\(27) & 
-- \inst5|altsyncram_component|auto_generated|q_a\(26))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000011000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(29),
	datab => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(31),
	datac => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(27),
	datad => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(26),
	datae => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(28),
	dataf => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(30),
	combout => \inst1|Mux6~0_combout\);

-- Location: LABCELL_X77_Y35_N48
\inst1|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux7~0_combout\ = ( \inst5|altsyncram_component|auto_generated|q_a\(28) & ( \inst5|altsyncram_component|auto_generated|q_a\(30) ) ) # ( !\inst5|altsyncram_component|auto_generated|q_a\(28) & ( \inst5|altsyncram_component|auto_generated|q_a\(30) ) ) 
-- # ( \inst5|altsyncram_component|auto_generated|q_a\(28) & ( !\inst5|altsyncram_component|auto_generated|q_a\(30) ) ) # ( !\inst5|altsyncram_component|auto_generated|q_a\(28) & ( !\inst5|altsyncram_component|auto_generated|q_a\(30) & ( 
-- (!\inst5|altsyncram_component|auto_generated|q_a\(31) & (((\inst5|altsyncram_component|auto_generated|q_a\(26)) # (\inst5|altsyncram_component|auto_generated|q_a\(27))))) # (\inst5|altsyncram_component|auto_generated|q_a\(31) & 
-- (((!\inst5|altsyncram_component|auto_generated|q_a\(27)) # (!\inst5|altsyncram_component|auto_generated|q_a\(26))) # (\inst5|altsyncram_component|auto_generated|q_a\(29)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111111111101111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(29),
	datab => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(31),
	datac => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(27),
	datad => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(26),
	datae => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(28),
	dataf => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(30),
	combout => \inst1|Mux7~0_combout\);

-- Location: LABCELL_X77_Y35_N18
\inst1|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux8~0_combout\ = ( \inst5|altsyncram_component|auto_generated|q_a\(28) & ( \inst5|altsyncram_component|auto_generated|q_a\(30) ) ) # ( !\inst5|altsyncram_component|auto_generated|q_a\(28) & ( \inst5|altsyncram_component|auto_generated|q_a\(30) ) ) 
-- # ( \inst5|altsyncram_component|auto_generated|q_a\(28) & ( !\inst5|altsyncram_component|auto_generated|q_a\(30) & ( (((!\inst5|altsyncram_component|auto_generated|q_a\(26)) # (\inst5|altsyncram_component|auto_generated|q_a\(27))) # 
-- (\inst5|altsyncram_component|auto_generated|q_a\(31))) # (\inst5|altsyncram_component|auto_generated|q_a\(29)) ) ) ) # ( !\inst5|altsyncram_component|auto_generated|q_a\(28) & ( !\inst5|altsyncram_component|auto_generated|q_a\(30) & ( 
-- (((\inst5|altsyncram_component|auto_generated|q_a\(26)) # (\inst5|altsyncram_component|auto_generated|q_a\(27))) # (\inst5|altsyncram_component|auto_generated|q_a\(31))) # (\inst5|altsyncram_component|auto_generated|q_a\(29)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111111111110111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(29),
	datab => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(31),
	datac => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(27),
	datad => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(26),
	datae => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(28),
	dataf => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(30),
	combout => \inst1|Mux8~0_combout\);

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

-- Location: FF_X75_Y35_N55
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

-- Location: LABCELL_X77_Y35_N12
\inst1|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux0~0_combout\ = ( !\inst5|altsyncram_component|auto_generated|q_a\(28) & ( !\inst5|altsyncram_component|auto_generated|q_a\(30) & ( (!\inst5|altsyncram_component|auto_generated|q_a\(29) & (!\inst5|altsyncram_component|auto_generated|q_a\(31) & 
-- (!\inst5|altsyncram_component|auto_generated|q_a\(27) & !\inst5|altsyncram_component|auto_generated|q_a\(26)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(29),
	datab => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(31),
	datac => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(27),
	datad => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(26),
	datae => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(28),
	dataf => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(30),
	combout => \inst1|Mux0~0_combout\);

-- Location: LABCELL_X24_Y39_N0
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


