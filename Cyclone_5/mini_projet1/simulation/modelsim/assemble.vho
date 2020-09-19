-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.0 Build 145 04/22/2015 SJ Web Edition"

-- DATE "09/19/2020 17:37:44"

-- 
-- Device: Altera 5CGXFC5C6F27C7 Package FBGA672
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

ENTITY 	assemble IS
    PORT (
	Clk : IN std_logic;
	reset : IN std_logic;
	segments : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END assemble;

-- Design Ports Information
-- segments[0]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments[1]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments[3]	=>  Location: PIN_W18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments[4]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments[5]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments[6]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF assemble IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_segments : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \Clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \diviseur|Add0~81_sumout\ : std_logic;
SIGNAL \diviseur|count[0]~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \diviseur|Add0~82\ : std_logic;
SIGNAL \diviseur|Add0~5_sumout\ : std_logic;
SIGNAL \diviseur|Add0~6\ : std_logic;
SIGNAL \diviseur|Add0~1_sumout\ : std_logic;
SIGNAL \diviseur|Add0~2\ : std_logic;
SIGNAL \diviseur|Add0~29_sumout\ : std_logic;
SIGNAL \diviseur|Add0~30\ : std_logic;
SIGNAL \diviseur|Add0~25_sumout\ : std_logic;
SIGNAL \diviseur|Add0~26\ : std_logic;
SIGNAL \diviseur|Add0~21_sumout\ : std_logic;
SIGNAL \diviseur|Add0~22\ : std_logic;
SIGNAL \diviseur|Add0~17_sumout\ : std_logic;
SIGNAL \diviseur|Add0~18\ : std_logic;
SIGNAL \diviseur|Add0~13_sumout\ : std_logic;
SIGNAL \diviseur|Add0~14\ : std_logic;
SIGNAL \diviseur|Add0~9_sumout\ : std_logic;
SIGNAL \diviseur|Add0~10\ : std_logic;
SIGNAL \diviseur|Add0~53_sumout\ : std_logic;
SIGNAL \diviseur|Add0~54\ : std_logic;
SIGNAL \diviseur|Add0~49_sumout\ : std_logic;
SIGNAL \diviseur|Add0~50\ : std_logic;
SIGNAL \diviseur|Add0~45_sumout\ : std_logic;
SIGNAL \diviseur|Add0~46\ : std_logic;
SIGNAL \diviseur|Add0~41_sumout\ : std_logic;
SIGNAL \diviseur|Add0~42\ : std_logic;
SIGNAL \diviseur|Add0~37_sumout\ : std_logic;
SIGNAL \diviseur|Add0~38\ : std_logic;
SIGNAL \diviseur|Add0~33_sumout\ : std_logic;
SIGNAL \diviseur|Add0~34\ : std_logic;
SIGNAL \diviseur|Add0~77_sumout\ : std_logic;
SIGNAL \diviseur|Add0~78\ : std_logic;
SIGNAL \diviseur|Add0~73_sumout\ : std_logic;
SIGNAL \diviseur|Add0~74\ : std_logic;
SIGNAL \diviseur|Add0~69_sumout\ : std_logic;
SIGNAL \diviseur|Add0~70\ : std_logic;
SIGNAL \diviseur|Add0~65_sumout\ : std_logic;
SIGNAL \diviseur|Add0~66\ : std_logic;
SIGNAL \diviseur|Add0~61_sumout\ : std_logic;
SIGNAL \diviseur|Add0~62\ : std_logic;
SIGNAL \diviseur|Add0~57_sumout\ : std_logic;
SIGNAL \diviseur|Add0~58\ : std_logic;
SIGNAL \diviseur|Add0~125_sumout\ : std_logic;
SIGNAL \diviseur|Add0~126\ : std_logic;
SIGNAL \diviseur|Add0~121_sumout\ : std_logic;
SIGNAL \diviseur|Add0~122\ : std_logic;
SIGNAL \diviseur|Add0~117_sumout\ : std_logic;
SIGNAL \diviseur|Add0~118\ : std_logic;
SIGNAL \diviseur|Add0~113_sumout\ : std_logic;
SIGNAL \diviseur|Add0~114\ : std_logic;
SIGNAL \diviseur|Add0~109_sumout\ : std_logic;
SIGNAL \diviseur|Add0~110\ : std_logic;
SIGNAL \diviseur|Add0~105_sumout\ : std_logic;
SIGNAL \diviseur|Add0~106\ : std_logic;
SIGNAL \diviseur|Add0~101_sumout\ : std_logic;
SIGNAL \diviseur|Add0~102\ : std_logic;
SIGNAL \diviseur|Add0~97_sumout\ : std_logic;
SIGNAL \diviseur|Add0~98\ : std_logic;
SIGNAL \diviseur|Add0~93_sumout\ : std_logic;
SIGNAL \diviseur|Add0~94\ : std_logic;
SIGNAL \diviseur|Add0~89_sumout\ : std_logic;
SIGNAL \diviseur|Add0~90\ : std_logic;
SIGNAL \diviseur|Add0~85_sumout\ : std_logic;
SIGNAL \diviseur|Equal0~4_combout\ : std_logic;
SIGNAL \diviseur|Equal0~5_combout\ : std_logic;
SIGNAL \diviseur|Equal0~0_combout\ : std_logic;
SIGNAL \diviseur|Equal0~1_combout\ : std_logic;
SIGNAL \diviseur|Equal0~3_combout\ : std_logic;
SIGNAL \diviseur|Equal0~2_combout\ : std_logic;
SIGNAL \diviseur|Equal0~6_combout\ : std_logic;
SIGNAL \diviseur|tmp~0_combout\ : std_logic;
SIGNAL \diviseur|tmp~q\ : std_logic;
SIGNAL \counter|temp[0]~3_combout\ : std_logic;
SIGNAL \counter|temp[0]~feeder_combout\ : std_logic;
SIGNAL \counter|temp[2]~1_combout\ : std_logic;
SIGNAL \counter|Equal0~0_combout\ : std_logic;
SIGNAL \counter|temp[0]~DUPLICATE_q\ : std_logic;
SIGNAL \counter|temp[1]~0_combout\ : std_logic;
SIGNAL \counter|temp[1]~feeder_combout\ : std_logic;
SIGNAL \counter|temp[1]~DUPLICATE_q\ : std_logic;
SIGNAL \counter|temp[3]~2_combout\ : std_logic;
SIGNAL \counter|temp[3]~feeder_combout\ : std_logic;
SIGNAL \sev_seg0|Mux6~0_combout\ : std_logic;
SIGNAL \sev_seg0|Mux5~0_combout\ : std_logic;
SIGNAL \sev_seg0|Mux4~0_combout\ : std_logic;
SIGNAL \sev_seg0|Mux3~0_combout\ : std_logic;
SIGNAL \sev_seg0|Mux2~0_combout\ : std_logic;
SIGNAL \sev_seg0|Mux1~0_combout\ : std_logic;
SIGNAL \sev_seg0|Mux0~0_combout\ : std_logic;
SIGNAL \diviseur|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \counter|temp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \counter|ALT_INV_temp[1]~DUPLICATE_q\ : std_logic;
SIGNAL \counter|ALT_INV_temp[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \counter|ALT_INV_temp[0]~3_combout\ : std_logic;
SIGNAL \diviseur|ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \diviseur|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \diviseur|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \diviseur|ALT_INV_count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \diviseur|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \diviseur|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \diviseur|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \diviseur|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \counter|ALT_INV_temp[3]~2_combout\ : std_logic;
SIGNAL \counter|ALT_INV_temp[1]~0_combout\ : std_logic;
SIGNAL \counter|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \diviseur|ALT_INV_tmp~q\ : std_logic;
SIGNAL \sev_seg0|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \counter|ALT_INV_temp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \diviseur|ALT_INV_Add0~81_sumout\ : std_logic;

BEGIN

ww_Clk <= Clk;
ww_reset <= reset;
segments <= ww_segments;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\counter|ALT_INV_temp[1]~DUPLICATE_q\ <= NOT \counter|temp[1]~DUPLICATE_q\;
\counter|ALT_INV_temp[0]~DUPLICATE_q\ <= NOT \counter|temp[0]~DUPLICATE_q\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\counter|ALT_INV_temp[0]~3_combout\ <= NOT \counter|temp[0]~3_combout\;
\diviseur|ALT_INV_Equal0~6_combout\ <= NOT \diviseur|Equal0~6_combout\;
\diviseur|ALT_INV_Equal0~5_combout\ <= NOT \diviseur|Equal0~5_combout\;
\diviseur|ALT_INV_Equal0~4_combout\ <= NOT \diviseur|Equal0~4_combout\;
\diviseur|ALT_INV_count\(0) <= NOT \diviseur|count\(0);
\diviseur|ALT_INV_Equal0~3_combout\ <= NOT \diviseur|Equal0~3_combout\;
\diviseur|ALT_INV_Equal0~2_combout\ <= NOT \diviseur|Equal0~2_combout\;
\diviseur|ALT_INV_Equal0~1_combout\ <= NOT \diviseur|Equal0~1_combout\;
\diviseur|ALT_INV_Equal0~0_combout\ <= NOT \diviseur|Equal0~0_combout\;
\counter|ALT_INV_temp[3]~2_combout\ <= NOT \counter|temp[3]~2_combout\;
\counter|ALT_INV_temp[1]~0_combout\ <= NOT \counter|temp[1]~0_combout\;
\counter|ALT_INV_Equal0~0_combout\ <= NOT \counter|Equal0~0_combout\;
\diviseur|ALT_INV_tmp~q\ <= NOT \diviseur|tmp~q\;
\sev_seg0|ALT_INV_Mux0~0_combout\ <= NOT \sev_seg0|Mux0~0_combout\;
\counter|ALT_INV_temp\(3) <= NOT \counter|temp\(3);
\counter|ALT_INV_temp\(2) <= NOT \counter|temp\(2);
\counter|ALT_INV_temp\(1) <= NOT \counter|temp\(1);
\counter|ALT_INV_temp\(0) <= NOT \counter|temp\(0);
\diviseur|ALT_INV_Add0~81_sumout\ <= NOT \diviseur|Add0~81_sumout\;
\diviseur|ALT_INV_count\(21) <= NOT \diviseur|count\(21);
\diviseur|ALT_INV_count\(22) <= NOT \diviseur|count\(22);
\diviseur|ALT_INV_count\(23) <= NOT \diviseur|count\(23);
\diviseur|ALT_INV_count\(24) <= NOT \diviseur|count\(24);
\diviseur|ALT_INV_count\(25) <= NOT \diviseur|count\(25);
\diviseur|ALT_INV_count\(26) <= NOT \diviseur|count\(26);
\diviseur|ALT_INV_count\(27) <= NOT \diviseur|count\(27);
\diviseur|ALT_INV_count\(28) <= NOT \diviseur|count\(28);
\diviseur|ALT_INV_count\(29) <= NOT \diviseur|count\(29);
\diviseur|ALT_INV_count\(30) <= NOT \diviseur|count\(30);
\diviseur|ALT_INV_count\(31) <= NOT \diviseur|count\(31);
\diviseur|ALT_INV_count\(15) <= NOT \diviseur|count\(15);
\diviseur|ALT_INV_count\(16) <= NOT \diviseur|count\(16);
\diviseur|ALT_INV_count\(17) <= NOT \diviseur|count\(17);
\diviseur|ALT_INV_count\(18) <= NOT \diviseur|count\(18);
\diviseur|ALT_INV_count\(19) <= NOT \diviseur|count\(19);
\diviseur|ALT_INV_count\(20) <= NOT \diviseur|count\(20);
\diviseur|ALT_INV_count\(9) <= NOT \diviseur|count\(9);
\diviseur|ALT_INV_count\(10) <= NOT \diviseur|count\(10);
\diviseur|ALT_INV_count\(11) <= NOT \diviseur|count\(11);
\diviseur|ALT_INV_count\(12) <= NOT \diviseur|count\(12);
\diviseur|ALT_INV_count\(13) <= NOT \diviseur|count\(13);
\diviseur|ALT_INV_count\(14) <= NOT \diviseur|count\(14);
\diviseur|ALT_INV_count\(3) <= NOT \diviseur|count\(3);
\diviseur|ALT_INV_count\(4) <= NOT \diviseur|count\(4);
\diviseur|ALT_INV_count\(5) <= NOT \diviseur|count\(5);
\diviseur|ALT_INV_count\(6) <= NOT \diviseur|count\(6);
\diviseur|ALT_INV_count\(7) <= NOT \diviseur|count\(7);
\diviseur|ALT_INV_count\(8) <= NOT \diviseur|count\(8);
\diviseur|ALT_INV_count\(1) <= NOT \diviseur|count\(1);
\diviseur|ALT_INV_count\(2) <= NOT \diviseur|count\(2);

-- Location: IOOBUF_X66_Y0_N2
\segments[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sev_seg0|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_segments(0));

-- Location: IOOBUF_X64_Y0_N2
\segments[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sev_seg0|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_segments(1));

-- Location: IOOBUF_X64_Y0_N19
\segments[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sev_seg0|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_segments(2));

-- Location: IOOBUF_X66_Y0_N19
\segments[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sev_seg0|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_segments(3));

-- Location: IOOBUF_X65_Y0_N2
\segments[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sev_seg0|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_segments(4));

-- Location: IOOBUF_X65_Y0_N19
\segments[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sev_seg0|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_segments(5));

-- Location: IOOBUF_X62_Y0_N42
\segments[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sev_seg0|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_segments(6));

-- Location: IOIBUF_X68_Y32_N44
\Clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk,
	o => \Clk~input_o\);

-- Location: CLKCTRL_G10
\Clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \Clk~input_o\,
	outclk => \Clk~inputCLKENA0_outclk\);

-- Location: LABCELL_X64_Y2_N0
\diviseur|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \diviseur|Add0~81_sumout\ = SUM(( !\diviseur|count\(0) ) + ( VCC ) + ( !VCC ))
-- \diviseur|Add0~82\ = CARRY(( !\diviseur|count\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \diviseur|ALT_INV_count\(0),
	cin => GND,
	sumout => \diviseur|Add0~81_sumout\,
	cout => \diviseur|Add0~82\);

-- Location: LABCELL_X65_Y2_N3
\diviseur|count[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \diviseur|count[0]~0_combout\ = ( !\diviseur|Add0~81_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \diviseur|ALT_INV_Add0~81_sumout\,
	combout => \diviseur|count[0]~0_combout\);

-- Location: IOIBUF_X14_Y0_N35
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X64_Y2_N2
\diviseur|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \diviseur|count[0]~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \diviseur|count\(0));

-- Location: LABCELL_X64_Y2_N3
\diviseur|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \diviseur|Add0~5_sumout\ = SUM(( \diviseur|count\(1) ) + ( GND ) + ( \diviseur|Add0~82\ ))
-- \diviseur|Add0~6\ = CARRY(( \diviseur|count\(1) ) + ( GND ) + ( \diviseur|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \diviseur|ALT_INV_count\(1),
	cin => \diviseur|Add0~82\,
	sumout => \diviseur|Add0~5_sumout\,
	cout => \diviseur|Add0~6\);

-- Location: FF_X64_Y2_N5
\diviseur|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \diviseur|Add0~5_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \diviseur|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \diviseur|count\(1));

-- Location: LABCELL_X64_Y2_N6
\diviseur|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \diviseur|Add0~1_sumout\ = SUM(( \diviseur|count\(2) ) + ( GND ) + ( \diviseur|Add0~6\ ))
-- \diviseur|Add0~2\ = CARRY(( \diviseur|count\(2) ) + ( GND ) + ( \diviseur|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \diviseur|ALT_INV_count\(2),
	cin => \diviseur|Add0~6\,
	sumout => \diviseur|Add0~1_sumout\,
	cout => \diviseur|Add0~2\);

-- Location: FF_X64_Y2_N7
\diviseur|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \diviseur|Add0~1_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \diviseur|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \diviseur|count\(2));

-- Location: LABCELL_X64_Y2_N9
\diviseur|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \diviseur|Add0~29_sumout\ = SUM(( \diviseur|count\(3) ) + ( GND ) + ( \diviseur|Add0~2\ ))
-- \diviseur|Add0~30\ = CARRY(( \diviseur|count\(3) ) + ( GND ) + ( \diviseur|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \diviseur|ALT_INV_count\(3),
	cin => \diviseur|Add0~2\,
	sumout => \diviseur|Add0~29_sumout\,
	cout => \diviseur|Add0~30\);

-- Location: FF_X64_Y2_N10
\diviseur|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \diviseur|Add0~29_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \diviseur|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \diviseur|count\(3));

-- Location: LABCELL_X64_Y2_N12
\diviseur|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \diviseur|Add0~25_sumout\ = SUM(( \diviseur|count\(4) ) + ( GND ) + ( \diviseur|Add0~30\ ))
-- \diviseur|Add0~26\ = CARRY(( \diviseur|count\(4) ) + ( GND ) + ( \diviseur|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \diviseur|ALT_INV_count\(4),
	cin => \diviseur|Add0~30\,
	sumout => \diviseur|Add0~25_sumout\,
	cout => \diviseur|Add0~26\);

-- Location: FF_X64_Y2_N14
\diviseur|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \diviseur|Add0~25_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \diviseur|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \diviseur|count\(4));

-- Location: LABCELL_X64_Y2_N15
\diviseur|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \diviseur|Add0~21_sumout\ = SUM(( \diviseur|count\(5) ) + ( GND ) + ( \diviseur|Add0~26\ ))
-- \diviseur|Add0~22\ = CARRY(( \diviseur|count\(5) ) + ( GND ) + ( \diviseur|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \diviseur|ALT_INV_count\(5),
	cin => \diviseur|Add0~26\,
	sumout => \diviseur|Add0~21_sumout\,
	cout => \diviseur|Add0~22\);

-- Location: FF_X64_Y2_N16
\diviseur|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \diviseur|Add0~21_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \diviseur|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \diviseur|count\(5));

-- Location: LABCELL_X64_Y2_N18
\diviseur|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \diviseur|Add0~17_sumout\ = SUM(( \diviseur|count\(6) ) + ( GND ) + ( \diviseur|Add0~22\ ))
-- \diviseur|Add0~18\ = CARRY(( \diviseur|count\(6) ) + ( GND ) + ( \diviseur|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \diviseur|ALT_INV_count\(6),
	cin => \diviseur|Add0~22\,
	sumout => \diviseur|Add0~17_sumout\,
	cout => \diviseur|Add0~18\);

-- Location: FF_X64_Y2_N20
\diviseur|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \diviseur|Add0~17_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \diviseur|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \diviseur|count\(6));

-- Location: LABCELL_X64_Y2_N21
\diviseur|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \diviseur|Add0~13_sumout\ = SUM(( \diviseur|count\(7) ) + ( GND ) + ( \diviseur|Add0~18\ ))
-- \diviseur|Add0~14\ = CARRY(( \diviseur|count\(7) ) + ( GND ) + ( \diviseur|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \diviseur|ALT_INV_count\(7),
	cin => \diviseur|Add0~18\,
	sumout => \diviseur|Add0~13_sumout\,
	cout => \diviseur|Add0~14\);

-- Location: FF_X64_Y2_N22
\diviseur|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \diviseur|Add0~13_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \diviseur|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \diviseur|count\(7));

-- Location: LABCELL_X64_Y2_N24
\diviseur|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \diviseur|Add0~9_sumout\ = SUM(( \diviseur|count\(8) ) + ( GND ) + ( \diviseur|Add0~14\ ))
-- \diviseur|Add0~10\ = CARRY(( \diviseur|count\(8) ) + ( GND ) + ( \diviseur|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \diviseur|ALT_INV_count\(8),
	cin => \diviseur|Add0~14\,
	sumout => \diviseur|Add0~9_sumout\,
	cout => \diviseur|Add0~10\);

-- Location: FF_X64_Y2_N25
\diviseur|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \diviseur|Add0~9_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \diviseur|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \diviseur|count\(8));

-- Location: LABCELL_X64_Y2_N27
\diviseur|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \diviseur|Add0~53_sumout\ = SUM(( \diviseur|count\(9) ) + ( GND ) + ( \diviseur|Add0~10\ ))
-- \diviseur|Add0~54\ = CARRY(( \diviseur|count\(9) ) + ( GND ) + ( \diviseur|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \diviseur|ALT_INV_count\(9),
	cin => \diviseur|Add0~10\,
	sumout => \diviseur|Add0~53_sumout\,
	cout => \diviseur|Add0~54\);

-- Location: FF_X64_Y2_N28
\diviseur|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \diviseur|Add0~53_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \diviseur|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \diviseur|count\(9));

-- Location: LABCELL_X64_Y2_N30
\diviseur|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \diviseur|Add0~49_sumout\ = SUM(( \diviseur|count\(10) ) + ( GND ) + ( \diviseur|Add0~54\ ))
-- \diviseur|Add0~50\ = CARRY(( \diviseur|count\(10) ) + ( GND ) + ( \diviseur|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \diviseur|ALT_INV_count\(10),
	cin => \diviseur|Add0~54\,
	sumout => \diviseur|Add0~49_sumout\,
	cout => \diviseur|Add0~50\);

-- Location: FF_X64_Y2_N31
\diviseur|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \diviseur|Add0~49_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \diviseur|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \diviseur|count\(10));

-- Location: LABCELL_X64_Y2_N33
\diviseur|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \diviseur|Add0~45_sumout\ = SUM(( \diviseur|count\(11) ) + ( GND ) + ( \diviseur|Add0~50\ ))
-- \diviseur|Add0~46\ = CARRY(( \diviseur|count\(11) ) + ( GND ) + ( \diviseur|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \diviseur|ALT_INV_count\(11),
	cin => \diviseur|Add0~50\,
	sumout => \diviseur|Add0~45_sumout\,
	cout => \diviseur|Add0~46\);

-- Location: FF_X64_Y2_N34
\diviseur|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \diviseur|Add0~45_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \diviseur|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \diviseur|count\(11));

-- Location: LABCELL_X64_Y2_N36
\diviseur|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \diviseur|Add0~41_sumout\ = SUM(( \diviseur|count\(12) ) + ( GND ) + ( \diviseur|Add0~46\ ))
-- \diviseur|Add0~42\ = CARRY(( \diviseur|count\(12) ) + ( GND ) + ( \diviseur|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \diviseur|ALT_INV_count\(12),
	cin => \diviseur|Add0~46\,
	sumout => \diviseur|Add0~41_sumout\,
	cout => \diviseur|Add0~42\);

-- Location: FF_X64_Y2_N37
\diviseur|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \diviseur|Add0~41_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \diviseur|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \diviseur|count\(12));

-- Location: LABCELL_X64_Y2_N39
\diviseur|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \diviseur|Add0~37_sumout\ = SUM(( \diviseur|count\(13) ) + ( GND ) + ( \diviseur|Add0~42\ ))
-- \diviseur|Add0~38\ = CARRY(( \diviseur|count\(13) ) + ( GND ) + ( \diviseur|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \diviseur|ALT_INV_count\(13),
	cin => \diviseur|Add0~42\,
	sumout => \diviseur|Add0~37_sumout\,
	cout => \diviseur|Add0~38\);

-- Location: FF_X64_Y2_N40
\diviseur|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \diviseur|Add0~37_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \diviseur|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \diviseur|count\(13));

-- Location: LABCELL_X64_Y2_N42
\diviseur|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \diviseur|Add0~33_sumout\ = SUM(( \diviseur|count\(14) ) + ( GND ) + ( \diviseur|Add0~38\ ))
-- \diviseur|Add0~34\ = CARRY(( \diviseur|count\(14) ) + ( GND ) + ( \diviseur|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \diviseur|ALT_INV_count\(14),
	cin => \diviseur|Add0~38\,
	sumout => \diviseur|Add0~33_sumout\,
	cout => \diviseur|Add0~34\);

-- Location: FF_X64_Y2_N43
\diviseur|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \diviseur|Add0~33_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \diviseur|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \diviseur|count\(14));

-- Location: LABCELL_X64_Y2_N45
\diviseur|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \diviseur|Add0~77_sumout\ = SUM(( \diviseur|count\(15) ) + ( GND ) + ( \diviseur|Add0~34\ ))
-- \diviseur|Add0~78\ = CARRY(( \diviseur|count\(15) ) + ( GND ) + ( \diviseur|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \diviseur|ALT_INV_count\(15),
	cin => \diviseur|Add0~34\,
	sumout => \diviseur|Add0~77_sumout\,
	cout => \diviseur|Add0~78\);

-- Location: FF_X64_Y2_N46
\diviseur|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \diviseur|Add0~77_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \diviseur|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \diviseur|count\(15));

-- Location: LABCELL_X64_Y2_N48
\diviseur|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \diviseur|Add0~73_sumout\ = SUM(( \diviseur|count\(16) ) + ( GND ) + ( \diviseur|Add0~78\ ))
-- \diviseur|Add0~74\ = CARRY(( \diviseur|count\(16) ) + ( GND ) + ( \diviseur|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \diviseur|ALT_INV_count\(16),
	cin => \diviseur|Add0~78\,
	sumout => \diviseur|Add0~73_sumout\,
	cout => \diviseur|Add0~74\);

-- Location: FF_X64_Y2_N50
\diviseur|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \diviseur|Add0~73_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \diviseur|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \diviseur|count\(16));

-- Location: LABCELL_X64_Y2_N51
\diviseur|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \diviseur|Add0~69_sumout\ = SUM(( \diviseur|count\(17) ) + ( GND ) + ( \diviseur|Add0~74\ ))
-- \diviseur|Add0~70\ = CARRY(( \diviseur|count\(17) ) + ( GND ) + ( \diviseur|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \diviseur|ALT_INV_count\(17),
	cin => \diviseur|Add0~74\,
	sumout => \diviseur|Add0~69_sumout\,
	cout => \diviseur|Add0~70\);

-- Location: FF_X64_Y2_N52
\diviseur|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \diviseur|Add0~69_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \diviseur|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \diviseur|count\(17));

-- Location: LABCELL_X64_Y2_N54
\diviseur|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \diviseur|Add0~65_sumout\ = SUM(( \diviseur|count\(18) ) + ( GND ) + ( \diviseur|Add0~70\ ))
-- \diviseur|Add0~66\ = CARRY(( \diviseur|count\(18) ) + ( GND ) + ( \diviseur|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \diviseur|ALT_INV_count\(18),
	cin => \diviseur|Add0~70\,
	sumout => \diviseur|Add0~65_sumout\,
	cout => \diviseur|Add0~66\);

-- Location: FF_X64_Y2_N55
\diviseur|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \diviseur|Add0~65_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \diviseur|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \diviseur|count\(18));

-- Location: LABCELL_X64_Y2_N57
\diviseur|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \diviseur|Add0~61_sumout\ = SUM(( \diviseur|count\(19) ) + ( GND ) + ( \diviseur|Add0~66\ ))
-- \diviseur|Add0~62\ = CARRY(( \diviseur|count\(19) ) + ( GND ) + ( \diviseur|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \diviseur|ALT_INV_count\(19),
	cin => \diviseur|Add0~66\,
	sumout => \diviseur|Add0~61_sumout\,
	cout => \diviseur|Add0~62\);

-- Location: FF_X64_Y2_N59
\diviseur|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \diviseur|Add0~61_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \diviseur|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \diviseur|count\(19));

-- Location: LABCELL_X64_Y1_N0
\diviseur|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \diviseur|Add0~57_sumout\ = SUM(( \diviseur|count\(20) ) + ( GND ) + ( \diviseur|Add0~62\ ))
-- \diviseur|Add0~58\ = CARRY(( \diviseur|count\(20) ) + ( GND ) + ( \diviseur|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \diviseur|ALT_INV_count\(20),
	cin => \diviseur|Add0~62\,
	sumout => \diviseur|Add0~57_sumout\,
	cout => \diviseur|Add0~58\);

-- Location: FF_X64_Y1_N2
\diviseur|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \diviseur|Add0~57_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \diviseur|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \diviseur|count\(20));

-- Location: LABCELL_X64_Y1_N3
\diviseur|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \diviseur|Add0~125_sumout\ = SUM(( \diviseur|count\(21) ) + ( GND ) + ( \diviseur|Add0~58\ ))
-- \diviseur|Add0~126\ = CARRY(( \diviseur|count\(21) ) + ( GND ) + ( \diviseur|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \diviseur|ALT_INV_count\(21),
	cin => \diviseur|Add0~58\,
	sumout => \diviseur|Add0~125_sumout\,
	cout => \diviseur|Add0~126\);

-- Location: FF_X64_Y1_N5
\diviseur|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \diviseur|Add0~125_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \diviseur|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \diviseur|count\(21));

-- Location: LABCELL_X64_Y1_N6
\diviseur|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \diviseur|Add0~121_sumout\ = SUM(( \diviseur|count\(22) ) + ( GND ) + ( \diviseur|Add0~126\ ))
-- \diviseur|Add0~122\ = CARRY(( \diviseur|count\(22) ) + ( GND ) + ( \diviseur|Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \diviseur|ALT_INV_count\(22),
	cin => \diviseur|Add0~126\,
	sumout => \diviseur|Add0~121_sumout\,
	cout => \diviseur|Add0~122\);

-- Location: FF_X64_Y1_N7
\diviseur|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \diviseur|Add0~121_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \diviseur|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \diviseur|count\(22));

-- Location: LABCELL_X64_Y1_N9
\diviseur|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \diviseur|Add0~117_sumout\ = SUM(( \diviseur|count\(23) ) + ( GND ) + ( \diviseur|Add0~122\ ))
-- \diviseur|Add0~118\ = CARRY(( \diviseur|count\(23) ) + ( GND ) + ( \diviseur|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \diviseur|ALT_INV_count\(23),
	cin => \diviseur|Add0~122\,
	sumout => \diviseur|Add0~117_sumout\,
	cout => \diviseur|Add0~118\);

-- Location: FF_X64_Y1_N11
\diviseur|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \diviseur|Add0~117_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \diviseur|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \diviseur|count\(23));

-- Location: LABCELL_X64_Y1_N12
\diviseur|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \diviseur|Add0~113_sumout\ = SUM(( \diviseur|count\(24) ) + ( GND ) + ( \diviseur|Add0~118\ ))
-- \diviseur|Add0~114\ = CARRY(( \diviseur|count\(24) ) + ( GND ) + ( \diviseur|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \diviseur|ALT_INV_count\(24),
	cin => \diviseur|Add0~118\,
	sumout => \diviseur|Add0~113_sumout\,
	cout => \diviseur|Add0~114\);

-- Location: FF_X64_Y1_N14
\diviseur|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \diviseur|Add0~113_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \diviseur|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \diviseur|count\(24));

-- Location: LABCELL_X64_Y1_N15
\diviseur|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \diviseur|Add0~109_sumout\ = SUM(( \diviseur|count\(25) ) + ( GND ) + ( \diviseur|Add0~114\ ))
-- \diviseur|Add0~110\ = CARRY(( \diviseur|count\(25) ) + ( GND ) + ( \diviseur|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \diviseur|ALT_INV_count\(25),
	cin => \diviseur|Add0~114\,
	sumout => \diviseur|Add0~109_sumout\,
	cout => \diviseur|Add0~110\);

-- Location: FF_X64_Y1_N17
\diviseur|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \diviseur|Add0~109_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \diviseur|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \diviseur|count\(25));

-- Location: LABCELL_X64_Y1_N18
\diviseur|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \diviseur|Add0~105_sumout\ = SUM(( \diviseur|count\(26) ) + ( GND ) + ( \diviseur|Add0~110\ ))
-- \diviseur|Add0~106\ = CARRY(( \diviseur|count\(26) ) + ( GND ) + ( \diviseur|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \diviseur|ALT_INV_count\(26),
	cin => \diviseur|Add0~110\,
	sumout => \diviseur|Add0~105_sumout\,
	cout => \diviseur|Add0~106\);

-- Location: FF_X64_Y1_N20
\diviseur|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \diviseur|Add0~105_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \diviseur|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \diviseur|count\(26));

-- Location: LABCELL_X64_Y1_N21
\diviseur|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \diviseur|Add0~101_sumout\ = SUM(( \diviseur|count\(27) ) + ( GND ) + ( \diviseur|Add0~106\ ))
-- \diviseur|Add0~102\ = CARRY(( \diviseur|count\(27) ) + ( GND ) + ( \diviseur|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \diviseur|ALT_INV_count\(27),
	cin => \diviseur|Add0~106\,
	sumout => \diviseur|Add0~101_sumout\,
	cout => \diviseur|Add0~102\);

-- Location: FF_X64_Y1_N23
\diviseur|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \diviseur|Add0~101_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \diviseur|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \diviseur|count\(27));

-- Location: LABCELL_X64_Y1_N24
\diviseur|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \diviseur|Add0~97_sumout\ = SUM(( \diviseur|count\(28) ) + ( GND ) + ( \diviseur|Add0~102\ ))
-- \diviseur|Add0~98\ = CARRY(( \diviseur|count\(28) ) + ( GND ) + ( \diviseur|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \diviseur|ALT_INV_count\(28),
	cin => \diviseur|Add0~102\,
	sumout => \diviseur|Add0~97_sumout\,
	cout => \diviseur|Add0~98\);

-- Location: FF_X64_Y1_N25
\diviseur|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \diviseur|Add0~97_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \diviseur|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \diviseur|count\(28));

-- Location: LABCELL_X64_Y1_N27
\diviseur|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \diviseur|Add0~93_sumout\ = SUM(( \diviseur|count\(29) ) + ( GND ) + ( \diviseur|Add0~98\ ))
-- \diviseur|Add0~94\ = CARRY(( \diviseur|count\(29) ) + ( GND ) + ( \diviseur|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \diviseur|ALT_INV_count\(29),
	cin => \diviseur|Add0~98\,
	sumout => \diviseur|Add0~93_sumout\,
	cout => \diviseur|Add0~94\);

-- Location: FF_X64_Y1_N29
\diviseur|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \diviseur|Add0~93_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \diviseur|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \diviseur|count\(29));

-- Location: LABCELL_X64_Y1_N30
\diviseur|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \diviseur|Add0~89_sumout\ = SUM(( \diviseur|count\(30) ) + ( GND ) + ( \diviseur|Add0~94\ ))
-- \diviseur|Add0~90\ = CARRY(( \diviseur|count\(30) ) + ( GND ) + ( \diviseur|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \diviseur|ALT_INV_count\(30),
	cin => \diviseur|Add0~94\,
	sumout => \diviseur|Add0~89_sumout\,
	cout => \diviseur|Add0~90\);

-- Location: FF_X64_Y1_N31
\diviseur|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \diviseur|Add0~89_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \diviseur|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \diviseur|count\(30));

-- Location: LABCELL_X64_Y1_N33
\diviseur|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \diviseur|Add0~85_sumout\ = SUM(( \diviseur|count\(31) ) + ( GND ) + ( \diviseur|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \diviseur|ALT_INV_count\(31),
	cin => \diviseur|Add0~90\,
	sumout => \diviseur|Add0~85_sumout\);

-- Location: FF_X64_Y1_N35
\diviseur|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \diviseur|Add0~85_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \diviseur|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \diviseur|count\(31));

-- Location: LABCELL_X64_Y1_N54
\diviseur|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \diviseur|Equal0~4_combout\ = ( !\diviseur|count\(29) & ( !\diviseur|count\(30) & ( (!\diviseur|count\(27) & (!\diviseur|count\(28) & (!\diviseur|count\(31) & \diviseur|count\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \diviseur|ALT_INV_count\(27),
	datab => \diviseur|ALT_INV_count\(28),
	datac => \diviseur|ALT_INV_count\(31),
	datad => \diviseur|ALT_INV_count\(0),
	datae => \diviseur|ALT_INV_count\(29),
	dataf => \diviseur|ALT_INV_count\(30),
	combout => \diviseur|Equal0~4_combout\);

-- Location: LABCELL_X64_Y1_N42
\diviseur|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \diviseur|Equal0~5_combout\ = ( \diviseur|count\(21) & ( !\diviseur|count\(23) & ( (\diviseur|count\(22) & (\diviseur|count\(24) & (!\diviseur|count\(26) & !\diviseur|count\(25)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \diviseur|ALT_INV_count\(22),
	datab => \diviseur|ALT_INV_count\(24),
	datac => \diviseur|ALT_INV_count\(26),
	datad => \diviseur|ALT_INV_count\(25),
	datae => \diviseur|ALT_INV_count\(21),
	dataf => \diviseur|ALT_INV_count\(23),
	combout => \diviseur|Equal0~5_combout\);

-- Location: LABCELL_X63_Y2_N42
\diviseur|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \diviseur|Equal0~0_combout\ = ( !\diviseur|count\(1) & ( !\diviseur|count\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \diviseur|ALT_INV_count\(1),
	dataf => \diviseur|ALT_INV_count\(2),
	combout => \diviseur|Equal0~0_combout\);

-- Location: LABCELL_X64_Y1_N48
\diviseur|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \diviseur|Equal0~1_combout\ = ( !\diviseur|count\(8) & ( !\diviseur|count\(7) & ( (!\diviseur|count\(4) & (!\diviseur|count\(5) & (!\diviseur|count\(3) & \diviseur|count\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \diviseur|ALT_INV_count\(4),
	datab => \diviseur|ALT_INV_count\(5),
	datac => \diviseur|ALT_INV_count\(3),
	datad => \diviseur|ALT_INV_count\(6),
	datae => \diviseur|ALT_INV_count\(8),
	dataf => \diviseur|ALT_INV_count\(7),
	combout => \diviseur|Equal0~1_combout\);

-- Location: LABCELL_X63_Y1_N27
\diviseur|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \diviseur|Equal0~3_combout\ = ( !\diviseur|count\(15) & ( \diviseur|count\(18) & ( (\diviseur|count\(20) & (!\diviseur|count\(17) & (\diviseur|count\(16) & \diviseur|count\(19)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \diviseur|ALT_INV_count\(20),
	datab => \diviseur|ALT_INV_count\(17),
	datac => \diviseur|ALT_INV_count\(16),
	datad => \diviseur|ALT_INV_count\(19),
	datae => \diviseur|ALT_INV_count\(15),
	dataf => \diviseur|ALT_INV_count\(18),
	combout => \diviseur|Equal0~3_combout\);

-- Location: LABCELL_X65_Y2_N18
\diviseur|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \diviseur|Equal0~2_combout\ = ( \diviseur|count\(14) & ( !\diviseur|count\(9) & ( (!\diviseur|count\(10) & (\diviseur|count\(13) & (\diviseur|count\(12) & \diviseur|count\(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \diviseur|ALT_INV_count\(10),
	datab => \diviseur|ALT_INV_count\(13),
	datac => \diviseur|ALT_INV_count\(12),
	datad => \diviseur|ALT_INV_count\(11),
	datae => \diviseur|ALT_INV_count\(14),
	dataf => \diviseur|ALT_INV_count\(9),
	combout => \diviseur|Equal0~2_combout\);

-- Location: LABCELL_X64_Y1_N36
\diviseur|Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \diviseur|Equal0~6_combout\ = ( \diviseur|Equal0~3_combout\ & ( \diviseur|Equal0~2_combout\ & ( (\diviseur|Equal0~4_combout\ & (\diviseur|Equal0~5_combout\ & (\diviseur|Equal0~0_combout\ & \diviseur|Equal0~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \diviseur|ALT_INV_Equal0~4_combout\,
	datab => \diviseur|ALT_INV_Equal0~5_combout\,
	datac => \diviseur|ALT_INV_Equal0~0_combout\,
	datad => \diviseur|ALT_INV_Equal0~1_combout\,
	datae => \diviseur|ALT_INV_Equal0~3_combout\,
	dataf => \diviseur|ALT_INV_Equal0~2_combout\,
	combout => \diviseur|Equal0~6_combout\);

-- Location: LABCELL_X63_Y2_N54
\diviseur|tmp~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \diviseur|tmp~0_combout\ = ( !\diviseur|tmp~q\ & ( \diviseur|Equal0~6_combout\ ) ) # ( \diviseur|tmp~q\ & ( !\diviseur|Equal0~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \diviseur|ALT_INV_tmp~q\,
	dataf => \diviseur|ALT_INV_Equal0~6_combout\,
	combout => \diviseur|tmp~0_combout\);

-- Location: FF_X63_Y2_N59
\diviseur|tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	asdata => \diviseur|tmp~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \diviseur|tmp~q\);

-- Location: LABCELL_X63_Y2_N39
\counter|temp[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter|temp[0]~3_combout\ = ( !\counter|temp[0]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \counter|ALT_INV_temp[0]~DUPLICATE_q\,
	combout => \counter|temp[0]~3_combout\);

-- Location: LABCELL_X63_Y2_N15
\counter|temp[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter|temp[0]~feeder_combout\ = ( \counter|temp[0]~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \counter|ALT_INV_temp[0]~3_combout\,
	combout => \counter|temp[0]~feeder_combout\);

-- Location: FF_X63_Y2_N17
\counter|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \diviseur|tmp~q\,
	d => \counter|temp[0]~feeder_combout\,
	clrn => \counter|ALT_INV_Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|temp\(0));

-- Location: FF_X63_Y2_N31
\counter|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \diviseur|tmp~q\,
	d => \counter|temp[1]~feeder_combout\,
	clrn => \counter|ALT_INV_Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|temp\(1));

-- Location: LABCELL_X63_Y2_N0
\counter|temp[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter|temp[2]~1_combout\ = ( \counter|temp\(2) & ( \counter|temp\(1) & ( !\counter|temp\(0) ) ) ) # ( !\counter|temp\(2) & ( \counter|temp\(1) & ( \counter|temp\(0) ) ) ) # ( \counter|temp\(2) & ( !\counter|temp\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \counter|ALT_INV_temp\(0),
	datae => \counter|ALT_INV_temp\(2),
	dataf => \counter|ALT_INV_temp\(1),
	combout => \counter|temp[2]~1_combout\);

-- Location: FF_X63_Y2_N38
\counter|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \diviseur|tmp~q\,
	asdata => \counter|temp[2]~1_combout\,
	clrn => \counter|ALT_INV_Equal0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|temp\(2));

-- Location: LABCELL_X63_Y2_N48
\counter|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter|Equal0~0_combout\ = ( \counter|temp\(3) & ( \counter|temp\(1) & ( (!\counter|temp\(2) & !\counter|temp\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \counter|ALT_INV_temp\(2),
	datad => \counter|ALT_INV_temp\(0),
	datae => \counter|ALT_INV_temp\(3),
	dataf => \counter|ALT_INV_temp\(1),
	combout => \counter|Equal0~0_combout\);

-- Location: FF_X63_Y2_N16
\counter|temp[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \diviseur|tmp~q\,
	d => \counter|temp[0]~feeder_combout\,
	clrn => \counter|ALT_INV_Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|temp[0]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y2_N18
\counter|temp[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter|temp[1]~0_combout\ = ( \counter|temp[0]~DUPLICATE_q\ & ( !\counter|temp[1]~DUPLICATE_q\ ) ) # ( !\counter|temp[0]~DUPLICATE_q\ & ( \counter|temp[1]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \counter|ALT_INV_temp[1]~DUPLICATE_q\,
	dataf => \counter|ALT_INV_temp[0]~DUPLICATE_q\,
	combout => \counter|temp[1]~0_combout\);

-- Location: LABCELL_X63_Y2_N30
\counter|temp[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter|temp[1]~feeder_combout\ = \counter|temp[1]~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \counter|ALT_INV_temp[1]~0_combout\,
	combout => \counter|temp[1]~feeder_combout\);

-- Location: FF_X63_Y2_N32
\counter|temp[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \diviseur|tmp~q\,
	d => \counter|temp[1]~feeder_combout\,
	clrn => \counter|ALT_INV_Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|temp[1]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y2_N6
\counter|temp[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter|temp[3]~2_combout\ = ( \counter|temp\(2) & ( \counter|temp[0]~DUPLICATE_q\ & ( !\counter|temp\(3) $ (!\counter|temp[1]~DUPLICATE_q\) ) ) ) # ( !\counter|temp\(2) & ( \counter|temp[0]~DUPLICATE_q\ & ( \counter|temp\(3) ) ) ) # ( \counter|temp\(2) 
-- & ( !\counter|temp[0]~DUPLICATE_q\ & ( \counter|temp\(3) ) ) ) # ( !\counter|temp\(2) & ( !\counter|temp[0]~DUPLICATE_q\ & ( \counter|temp\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \counter|ALT_INV_temp\(3),
	datad => \counter|ALT_INV_temp[1]~DUPLICATE_q\,
	datae => \counter|ALT_INV_temp\(2),
	dataf => \counter|ALT_INV_temp[0]~DUPLICATE_q\,
	combout => \counter|temp[3]~2_combout\);

-- Location: LABCELL_X63_Y2_N27
\counter|temp[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter|temp[3]~feeder_combout\ = \counter|temp[3]~2_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \counter|ALT_INV_temp[3]~2_combout\,
	combout => \counter|temp[3]~feeder_combout\);

-- Location: FF_X63_Y2_N29
\counter|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \diviseur|tmp~q\,
	d => \counter|temp[3]~feeder_combout\,
	clrn => \counter|ALT_INV_Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|temp\(3));

-- Location: LABCELL_X63_Y1_N6
\sev_seg0|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sev_seg0|Mux6~0_combout\ = ( !\counter|temp[1]~DUPLICATE_q\ & ( \counter|temp\(2) & ( (!\counter|temp\(3) & !\counter|temp\(0)) ) ) ) # ( !\counter|temp[1]~DUPLICATE_q\ & ( !\counter|temp\(2) & ( (!\counter|temp\(3) & \counter|temp\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000000000000011110000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \counter|ALT_INV_temp\(3),
	datad => \counter|ALT_INV_temp\(0),
	datae => \counter|ALT_INV_temp[1]~DUPLICATE_q\,
	dataf => \counter|ALT_INV_temp\(2),
	combout => \sev_seg0|Mux6~0_combout\);

-- Location: LABCELL_X63_Y1_N51
\sev_seg0|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sev_seg0|Mux5~0_combout\ = ( \counter|temp[1]~DUPLICATE_q\ & ( \counter|temp\(2) & ( (!\counter|temp\(0)) # (\counter|temp\(3)) ) ) ) # ( !\counter|temp[1]~DUPLICATE_q\ & ( \counter|temp\(2) & ( (\counter|temp\(0)) # (\counter|temp\(3)) ) ) ) # ( 
-- \counter|temp[1]~DUPLICATE_q\ & ( !\counter|temp\(2) & ( \counter|temp\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010101110111011101111101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter|ALT_INV_temp\(3),
	datab => \counter|ALT_INV_temp\(0),
	datae => \counter|ALT_INV_temp[1]~DUPLICATE_q\,
	dataf => \counter|ALT_INV_temp\(2),
	combout => \sev_seg0|Mux5~0_combout\);

-- Location: LABCELL_X63_Y1_N45
\sev_seg0|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sev_seg0|Mux4~0_combout\ = ( \counter|temp[1]~DUPLICATE_q\ & ( \counter|temp\(2) & ( \counter|temp\(3) ) ) ) # ( !\counter|temp[1]~DUPLICATE_q\ & ( \counter|temp\(2) & ( \counter|temp\(3) ) ) ) # ( \counter|temp[1]~DUPLICATE_q\ & ( !\counter|temp\(2) & ( 
-- (!\counter|temp\(0)) # (\counter|temp\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110111011101110101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter|ALT_INV_temp\(3),
	datab => \counter|ALT_INV_temp\(0),
	datae => \counter|ALT_INV_temp[1]~DUPLICATE_q\,
	dataf => \counter|ALT_INV_temp\(2),
	combout => \sev_seg0|Mux4~0_combout\);

-- Location: LABCELL_X63_Y1_N33
\sev_seg0|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sev_seg0|Mux3~0_combout\ = ( \counter|temp[1]~DUPLICATE_q\ & ( \counter|temp\(2) & ( (!\counter|temp\(3) & \counter|temp\(0)) ) ) ) # ( !\counter|temp[1]~DUPLICATE_q\ & ( \counter|temp\(2) & ( (!\counter|temp\(3) & !\counter|temp\(0)) ) ) ) # ( 
-- !\counter|temp[1]~DUPLICATE_q\ & ( !\counter|temp\(2) & ( (!\counter|temp\(3) & \counter|temp\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010000000000000000010001000100010000010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter|ALT_INV_temp\(3),
	datab => \counter|ALT_INV_temp\(0),
	datae => \counter|ALT_INV_temp[1]~DUPLICATE_q\,
	dataf => \counter|ALT_INV_temp\(2),
	combout => \sev_seg0|Mux3~0_combout\);

-- Location: LABCELL_X63_Y1_N54
\sev_seg0|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sev_seg0|Mux2~0_combout\ = ( \counter|temp[1]~DUPLICATE_q\ & ( \counter|temp\(2) & ( (!\counter|temp\(3) & \counter|temp\(0)) ) ) ) # ( !\counter|temp[1]~DUPLICATE_q\ & ( \counter|temp\(2) & ( !\counter|temp\(3) ) ) ) # ( \counter|temp[1]~DUPLICATE_q\ & 
-- ( !\counter|temp\(2) & ( (!\counter|temp\(3) & \counter|temp\(0)) ) ) ) # ( !\counter|temp[1]~DUPLICATE_q\ & ( !\counter|temp\(2) & ( \counter|temp\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111000011110000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \counter|ALT_INV_temp\(3),
	datad => \counter|ALT_INV_temp\(0),
	datae => \counter|ALT_INV_temp[1]~DUPLICATE_q\,
	dataf => \counter|ALT_INV_temp\(2),
	combout => \sev_seg0|Mux2~0_combout\);

-- Location: LABCELL_X63_Y1_N0
\sev_seg0|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sev_seg0|Mux1~0_combout\ = ( \counter|temp[1]~DUPLICATE_q\ & ( \counter|temp\(2) & ( (!\counter|temp\(3) & \counter|temp\(0)) ) ) ) # ( \counter|temp[1]~DUPLICATE_q\ & ( !\counter|temp\(2) & ( !\counter|temp\(3) ) ) ) # ( !\counter|temp[1]~DUPLICATE_q\ & 
-- ( !\counter|temp\(2) & ( (!\counter|temp\(3) & \counter|temp\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000111100001111000000000000000000000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \counter|ALT_INV_temp\(3),
	datad => \counter|ALT_INV_temp\(0),
	datae => \counter|ALT_INV_temp[1]~DUPLICATE_q\,
	dataf => \counter|ALT_INV_temp\(2),
	combout => \sev_seg0|Mux1~0_combout\);

-- Location: LABCELL_X63_Y1_N39
\sev_seg0|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sev_seg0|Mux0~0_combout\ = ( \counter|temp[1]~DUPLICATE_q\ & ( \counter|temp\(2) & ( (!\counter|temp\(0)) # (\counter|temp\(3)) ) ) ) # ( !\counter|temp[1]~DUPLICATE_q\ & ( \counter|temp\(2) ) ) # ( \counter|temp[1]~DUPLICATE_q\ & ( !\counter|temp\(2) ) 
-- ) # ( !\counter|temp[1]~DUPLICATE_q\ & ( !\counter|temp\(2) & ( \counter|temp\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101111111111111111111111111111111111101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter|ALT_INV_temp\(3),
	datab => \counter|ALT_INV_temp\(0),
	datae => \counter|ALT_INV_temp[1]~DUPLICATE_q\,
	dataf => \counter|ALT_INV_temp\(2),
	combout => \sev_seg0|Mux0~0_combout\);

-- Location: LABCELL_X49_Y46_N0
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


