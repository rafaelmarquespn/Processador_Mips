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

-- DATE "07/04/2023 13:32:46"

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
	pin_name2 : OUT std_logic;
	clock : IN std_logic;
	pin_name3 : OUT std_logic;
	pin_name4 : OUT std_logic;
	pin_name5 : OUT std_logic;
	pin_name6 : OUT std_logic
	);
END main;

-- Design Ports Information
-- pin_name2	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name3	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name4	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name5	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name6	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \inst5|altsyncram_component|auto_generated|ram_block1a26_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst5|altsyncram_component|auto_generated|ram_block1a26_PORTADATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \inst|address[0]~0_combout\ : std_logic;
SIGNAL \inst6|Add0~1_sumout\ : std_logic;
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
SIGNAL \inst1|Mux1~0_combout\ : std_logic;
SIGNAL \inst1|Mux2~0_combout\ : std_logic;
SIGNAL \inst1|Mux3~0_combout\ : std_logic;
SIGNAL \inst1|Mux5~0_combout\ : std_logic;
SIGNAL \inst5|altsyncram_component|auto_generated|q_a\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|address\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \inst|ALT_INV_address\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\ : std_logic_vector(31 DOWNTO 26);

BEGIN

pin_name2 <= ww_pin_name2;
ww_clock <= clock;
pin_name3 <= ww_pin_name3;
pin_name4 <= ww_pin_name4;
pin_name5 <= ww_pin_name5;
pin_name6 <= ww_pin_name6;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst5|altsyncram_component|auto_generated|ram_block1a26_PORTAADDR_bus\ <= (\inst|address\(7) & \inst|address\(6) & \inst|address\(5) & \inst|address\(4) & \inst|address\(3) & \inst|address\(2) & \inst|address\(1) & \inst|address\(0));

\inst5|altsyncram_component|auto_generated|q_a\(26) <= \inst5|altsyncram_component|auto_generated|ram_block1a26_PORTADATAOUT_bus\(0);
\inst5|altsyncram_component|auto_generated|q_a\(27) <= \inst5|altsyncram_component|auto_generated|ram_block1a26_PORTADATAOUT_bus\(1);
\inst5|altsyncram_component|auto_generated|q_a\(28) <= \inst5|altsyncram_component|auto_generated|ram_block1a26_PORTADATAOUT_bus\(2);
\inst5|altsyncram_component|auto_generated|q_a\(29) <= \inst5|altsyncram_component|auto_generated|ram_block1a26_PORTADATAOUT_bus\(3);
\inst5|altsyncram_component|auto_generated|q_a\(30) <= \inst5|altsyncram_component|auto_generated|ram_block1a26_PORTADATAOUT_bus\(4);
\inst5|altsyncram_component|auto_generated|q_a\(31) <= \inst5|altsyncram_component|auto_generated|ram_block1a26_PORTADATAOUT_bus\(5);
\ALT_INV_clock~inputCLKENA0_outclk\ <= NOT \clock~inputCLKENA0_outclk\;
\inst|ALT_INV_address\(7) <= NOT \inst|address\(7);
\inst|ALT_INV_address\(6) <= NOT \inst|address\(6);
\inst|ALT_INV_address\(5) <= NOT \inst|address\(5);
\inst|ALT_INV_address\(4) <= NOT \inst|address\(4);
\inst|ALT_INV_address\(3) <= NOT \inst|address\(3);
\inst|ALT_INV_address\(2) <= NOT \inst|address\(2);
\inst|ALT_INV_address\(1) <= NOT \inst|address\(1);
\inst|ALT_INV_address\(0) <= NOT \inst|address\(0);
\inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(27) <= NOT \inst5|altsyncram_component|auto_generated|q_a\(27);
\inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(28) <= NOT \inst5|altsyncram_component|auto_generated|q_a\(28);
\inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(29) <= NOT \inst5|altsyncram_component|auto_generated|q_a\(29);
\inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(30) <= NOT \inst5|altsyncram_component|auto_generated|q_a\(30);
\inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(31) <= NOT \inst5|altsyncram_component|auto_generated|q_a\(31);
\inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(26) <= NOT \inst5|altsyncram_component|auto_generated|q_a\(26);

-- Location: IOOBUF_X89_Y8_N5
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

-- Location: IOOBUF_X89_Y8_N22
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

-- Location: IOOBUF_X68_Y0_N53
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

-- Location: IOOBUF_X68_Y0_N2
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

-- Location: IOOBUF_X89_Y8_N39
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

-- Location: LABCELL_X75_Y8_N54
\inst|address[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|address[0]~0_combout\ = ( !\inst|address\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst|ALT_INV_address\(0),
	combout => \inst|address[0]~0_combout\);

-- Location: FF_X75_Y8_N56
\inst|address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputCLKENA0_outclk\,
	d => \inst|address[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|address\(0));

-- Location: LABCELL_X75_Y8_N0
\inst6|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~1_sumout\ = SUM(( \inst|address\(1) ) + ( \inst|address\(0) ) + ( !VCC ))
-- \inst6|Add0~2\ = CARRY(( \inst|address\(1) ) + ( \inst|address\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_address\(0),
	datad => \inst|ALT_INV_address\(1),
	cin => GND,
	sumout => \inst6|Add0~1_sumout\,
	cout => \inst6|Add0~2\);

-- Location: FF_X75_Y8_N1
\inst|address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputCLKENA0_outclk\,
	d => \inst6|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|address\(1));

-- Location: LABCELL_X75_Y8_N3
\inst6|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~5_sumout\ = SUM(( \inst|address\(2) ) + ( GND ) + ( \inst6|Add0~2\ ))
-- \inst6|Add0~6\ = CARRY(( \inst|address\(2) ) + ( GND ) + ( \inst6|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_address\(2),
	cin => \inst6|Add0~2\,
	sumout => \inst6|Add0~5_sumout\,
	cout => \inst6|Add0~6\);

-- Location: FF_X75_Y8_N5
\inst|address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputCLKENA0_outclk\,
	d => \inst6|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|address\(2));

-- Location: LABCELL_X75_Y8_N6
\inst6|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~9_sumout\ = SUM(( \inst|address\(3) ) + ( GND ) + ( \inst6|Add0~6\ ))
-- \inst6|Add0~10\ = CARRY(( \inst|address\(3) ) + ( GND ) + ( \inst6|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_address\(3),
	cin => \inst6|Add0~6\,
	sumout => \inst6|Add0~9_sumout\,
	cout => \inst6|Add0~10\);

-- Location: FF_X75_Y8_N7
\inst|address[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputCLKENA0_outclk\,
	d => \inst6|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|address\(3));

-- Location: LABCELL_X75_Y8_N9
\inst6|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~13_sumout\ = SUM(( \inst|address\(4) ) + ( GND ) + ( \inst6|Add0~10\ ))
-- \inst6|Add0~14\ = CARRY(( \inst|address\(4) ) + ( GND ) + ( \inst6|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_address\(4),
	cin => \inst6|Add0~10\,
	sumout => \inst6|Add0~13_sumout\,
	cout => \inst6|Add0~14\);

-- Location: FF_X75_Y8_N10
\inst|address[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputCLKENA0_outclk\,
	d => \inst6|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|address\(4));

-- Location: LABCELL_X75_Y8_N12
\inst6|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~17_sumout\ = SUM(( \inst|address\(5) ) + ( GND ) + ( \inst6|Add0~14\ ))
-- \inst6|Add0~18\ = CARRY(( \inst|address\(5) ) + ( GND ) + ( \inst6|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_address\(5),
	cin => \inst6|Add0~14\,
	sumout => \inst6|Add0~17_sumout\,
	cout => \inst6|Add0~18\);

-- Location: FF_X75_Y8_N13
\inst|address[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputCLKENA0_outclk\,
	d => \inst6|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|address\(5));

-- Location: LABCELL_X75_Y8_N15
\inst6|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~21_sumout\ = SUM(( \inst|address\(6) ) + ( GND ) + ( \inst6|Add0~18\ ))
-- \inst6|Add0~22\ = CARRY(( \inst|address\(6) ) + ( GND ) + ( \inst6|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_address\(6),
	cin => \inst6|Add0~18\,
	sumout => \inst6|Add0~21_sumout\,
	cout => \inst6|Add0~22\);

-- Location: FF_X75_Y8_N17
\inst|address[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputCLKENA0_outclk\,
	d => \inst6|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|address\(6));

-- Location: LABCELL_X75_Y8_N18
\inst6|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~25_sumout\ = SUM(( \inst|address\(7) ) + ( GND ) + ( \inst6|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_address\(7),
	cin => \inst6|Add0~22\,
	sumout => \inst6|Add0~25_sumout\);

-- Location: FF_X75_Y8_N20
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

-- Location: M10K_X76_Y8_N0
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
	ena0 => VCC,
	portaaddr => \inst5|altsyncram_component|auto_generated|ram_block1a26_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst5|altsyncram_component|auto_generated|ram_block1a26_PORTADATAOUT_bus\);

-- Location: LABCELL_X75_Y8_N30
\inst1|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux1~0_combout\ = ( !\inst5|altsyncram_component|auto_generated|q_a\(29) & ( !\inst5|altsyncram_component|auto_generated|q_a\(30) & ( (!\inst5|altsyncram_component|auto_generated|q_a\(31) & (\inst5|altsyncram_component|auto_generated|q_a\(27) & 
-- (!\inst5|altsyncram_component|auto_generated|q_a\(28) & !\inst5|altsyncram_component|auto_generated|q_a\(26)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(31),
	datab => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(27),
	datac => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(28),
	datad => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(26),
	datae => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(29),
	dataf => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(30),
	combout => \inst1|Mux1~0_combout\);

-- Location: LABCELL_X75_Y8_N39
\inst1|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux2~0_combout\ = ( !\inst5|altsyncram_component|auto_generated|q_a\(29) & ( !\inst5|altsyncram_component|auto_generated|q_a\(30) & ( (!\inst5|altsyncram_component|auto_generated|q_a\(31) & (!\inst5|altsyncram_component|auto_generated|q_a\(27) & 
-- \inst5|altsyncram_component|auto_generated|q_a\(28))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(31),
	datac => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(27),
	datad => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(28),
	datae => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(29),
	dataf => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(30),
	combout => \inst1|Mux2~0_combout\);

-- Location: LABCELL_X75_Y8_N48
\inst1|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux3~0_combout\ = ( !\inst5|altsyncram_component|auto_generated|q_a\(29) & ( !\inst5|altsyncram_component|auto_generated|q_a\(30) & ( (\inst5|altsyncram_component|auto_generated|q_a\(31) & (\inst5|altsyncram_component|auto_generated|q_a\(27) & 
-- (!\inst5|altsyncram_component|auto_generated|q_a\(28) & \inst5|altsyncram_component|auto_generated|q_a\(26)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(31),
	datab => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(27),
	datac => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(28),
	datad => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(26),
	datae => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(29),
	dataf => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(30),
	combout => \inst1|Mux3~0_combout\);

-- Location: LABCELL_X75_Y8_N24
\inst1|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux5~0_combout\ = ( \inst5|altsyncram_component|auto_generated|q_a\(29) & ( !\inst5|altsyncram_component|auto_generated|q_a\(30) & ( (\inst5|altsyncram_component|auto_generated|q_a\(31) & (\inst5|altsyncram_component|auto_generated|q_a\(27) & 
-- (!\inst5|altsyncram_component|auto_generated|q_a\(28) & \inst5|altsyncram_component|auto_generated|q_a\(26)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(31),
	datab => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(27),
	datac => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(28),
	datad => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(26),
	datae => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(29),
	dataf => \inst5|altsyncram_component|auto_generated|ALT_INV_q_a\(30),
	combout => \inst1|Mux5~0_combout\);

-- Location: MLABCELL_X39_Y15_N0
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


