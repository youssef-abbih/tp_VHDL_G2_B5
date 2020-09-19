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

-- DATE "09/19/2020 16:45:41"

-- 
-- Device: Altera 5CGXFC5C6F27C7 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	sev_seg IS
    PORT (
	bcd : IN std_logic_vector(3 DOWNTO 0);
	segment : OUT std_logic_vector(6 DOWNTO 0)
	);
END sev_seg;

-- Design Ports Information
-- segment[0]	=>  Location: PIN_G25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment[1]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment[2]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment[3]	=>  Location: PIN_E26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment[4]	=>  Location: PIN_N23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment[5]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment[6]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd[0]	=>  Location: PIN_N24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd[1]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd[2]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd[3]	=>  Location: PIN_G26,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF sev_seg IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_bcd : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_segment : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \bcd[1]~input_o\ : std_logic;
SIGNAL \bcd[0]~input_o\ : std_logic;
SIGNAL \bcd[3]~input_o\ : std_logic;
SIGNAL \bcd[2]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_bcd[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_bcd[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_bcd[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_bcd[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_bcd <= bcd;
segment <= ww_segment;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_bcd[3]~input_o\ <= NOT \bcd[3]~input_o\;
\ALT_INV_bcd[2]~input_o\ <= NOT \bcd[2]~input_o\;
\ALT_INV_bcd[1]~input_o\ <= NOT \bcd[1]~input_o\;
\ALT_INV_bcd[0]~input_o\ <= NOT \bcd[0]~input_o\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;

-- Location: IOOBUF_X68_Y35_N39
\segment[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_segment(0));

-- Location: IOOBUF_X68_Y37_N5
\segment[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_segment(1));

-- Location: IOOBUF_X68_Y35_N22
\segment[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_segment(2));

-- Location: IOOBUF_X68_Y37_N56
\segment[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_segment(3));

-- Location: IOOBUF_X68_Y35_N5
\segment[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_segment(4));

-- Location: IOOBUF_X68_Y37_N22
\segment[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_segment(5));

-- Location: IOOBUF_X68_Y35_N56
\segment[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_segment(6));

-- Location: IOIBUF_X68_Y33_N21
\bcd[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bcd(1),
	o => \bcd[1]~input_o\);

-- Location: IOIBUF_X68_Y33_N4
\bcd[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bcd(0),
	o => \bcd[0]~input_o\);

-- Location: IOIBUF_X68_Y33_N55
\bcd[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bcd(3),
	o => \bcd[3]~input_o\);

-- Location: IOIBUF_X68_Y33_N38
\bcd[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bcd(2),
	o => \bcd[2]~input_o\);

-- Location: LABCELL_X67_Y35_N0
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( !\bcd[3]~input_o\ & ( \bcd[2]~input_o\ & ( (!\bcd[1]~input_o\ & !\bcd[0]~input_o\) ) ) ) # ( !\bcd[3]~input_o\ & ( !\bcd[2]~input_o\ & ( (!\bcd[1]~input_o\ & \bcd[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000000000000000010100000101000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd[1]~input_o\,
	datac => \ALT_INV_bcd[0]~input_o\,
	datae => \ALT_INV_bcd[3]~input_o\,
	dataf => \ALT_INV_bcd[2]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LABCELL_X67_Y35_N39
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( \bcd[3]~input_o\ & ( \bcd[2]~input_o\ ) ) # ( !\bcd[3]~input_o\ & ( \bcd[2]~input_o\ & ( !\bcd[0]~input_o\ $ (!\bcd[1]~input_o\) ) ) ) # ( \bcd[3]~input_o\ & ( !\bcd[2]~input_o\ & ( \bcd[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111101010101101010101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd[0]~input_o\,
	datad => \ALT_INV_bcd[1]~input_o\,
	datae => \ALT_INV_bcd[3]~input_o\,
	dataf => \ALT_INV_bcd[2]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LABCELL_X67_Y35_N45
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( \bcd[3]~input_o\ & ( \bcd[2]~input_o\ ) ) # ( \bcd[3]~input_o\ & ( !\bcd[2]~input_o\ & ( \bcd[1]~input_o\ ) ) ) # ( !\bcd[3]~input_o\ & ( !\bcd[2]~input_o\ & ( (!\bcd[0]~input_o\ & \bcd[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd[0]~input_o\,
	datad => \ALT_INV_bcd[1]~input_o\,
	datae => \ALT_INV_bcd[3]~input_o\,
	dataf => \ALT_INV_bcd[2]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LABCELL_X67_Y35_N48
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( !\bcd[3]~input_o\ & ( \bcd[2]~input_o\ & ( !\bcd[1]~input_o\ $ (\bcd[0]~input_o\) ) ) ) # ( !\bcd[3]~input_o\ & ( !\bcd[2]~input_o\ & ( (!\bcd[1]~input_o\ & \bcd[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000000000000000010100101101001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd[1]~input_o\,
	datac => \ALT_INV_bcd[0]~input_o\,
	datae => \ALT_INV_bcd[3]~input_o\,
	dataf => \ALT_INV_bcd[2]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LABCELL_X67_Y35_N54
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( !\bcd[3]~input_o\ & ( \bcd[2]~input_o\ & ( (!\bcd[1]~input_o\) # (\bcd[0]~input_o\) ) ) ) # ( \bcd[3]~input_o\ & ( !\bcd[2]~input_o\ & ( (!\bcd[1]~input_o\ & \bcd[0]~input_o\) ) ) ) # ( !\bcd[3]~input_o\ & ( !\bcd[2]~input_o\ & ( 
-- \bcd[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000010100000101010101111101011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd[1]~input_o\,
	datac => \ALT_INV_bcd[0]~input_o\,
	datae => \ALT_INV_bcd[3]~input_o\,
	dataf => \ALT_INV_bcd[2]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LABCELL_X67_Y35_N33
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( !\bcd[3]~input_o\ & ( \bcd[2]~input_o\ & ( (\bcd[0]~input_o\ & \bcd[1]~input_o\) ) ) ) # ( !\bcd[3]~input_o\ & ( !\bcd[2]~input_o\ & ( (\bcd[1]~input_o\) # (\bcd[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111000000000000000000000000010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd[0]~input_o\,
	datad => \ALT_INV_bcd[1]~input_o\,
	datae => \ALT_INV_bcd[3]~input_o\,
	dataf => \ALT_INV_bcd[2]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LABCELL_X67_Y35_N6
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \bcd[3]~input_o\ & ( \bcd[2]~input_o\ ) ) # ( !\bcd[3]~input_o\ & ( \bcd[2]~input_o\ & ( (!\bcd[1]~input_o\) # (!\bcd[0]~input_o\) ) ) ) # ( \bcd[3]~input_o\ & ( !\bcd[2]~input_o\ ) ) # ( !\bcd[3]~input_o\ & ( !\bcd[2]~input_o\ & ( 
-- \bcd[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101111111111111111111111010111110101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd[1]~input_o\,
	datac => \ALT_INV_bcd[0]~input_o\,
	datae => \ALT_INV_bcd[3]~input_o\,
	dataf => \ALT_INV_bcd[2]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LABCELL_X17_Y32_N3
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


