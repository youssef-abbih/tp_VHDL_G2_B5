--IP Functional Simulation Model
--VERSION_BEGIN 13.0 cbx_mgl 2013:06:12:18:04:42:SJ cbx_simgen 2013:06:12:18:03:40:SJ  VERSION_END


-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- You may only use these simulation model output files for simulation
-- purposes and expressly not for synthesis or any other purposes (in which
-- event Altera disclaims all warranties of any kind).


--synopsys translate_off

--synthesis_resources = mux21 54 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  my_sopc_addr_router_001 IS 
	 PORT 
	 ( 
		 clk	:	IN  STD_LOGIC;
		 reset	:	IN  STD_LOGIC;
		 sink_data	:	IN  STD_LOGIC_VECTOR (90 DOWNTO 0);
		 sink_endofpacket	:	IN  STD_LOGIC;
		 sink_ready	:	OUT  STD_LOGIC;
		 sink_startofpacket	:	IN  STD_LOGIC;
		 sink_valid	:	IN  STD_LOGIC;
		 src_channel	:	OUT  STD_LOGIC_VECTOR (8 DOWNTO 0);
		 src_data	:	OUT  STD_LOGIC_VECTOR (90 DOWNTO 0);
		 src_endofpacket	:	OUT  STD_LOGIC;
		 src_ready	:	IN  STD_LOGIC;
		 src_startofpacket	:	OUT  STD_LOGIC;
		 src_valid	:	OUT  STD_LOGIC
	 ); 
 END my_sopc_addr_router_001;

 ARCHITECTURE RTL OF my_sopc_addr_router_001 IS

	 ATTRIBUTE synthesis_clearbox : natural;
	 ATTRIBUTE synthesis_clearbox OF RTL : ARCHITECTURE IS 1;
	 SIGNAL	wire_my_sopc_addr_router_001_src_channel_103m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_my_sopc_addr_router_001_src_channel_104m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_my_sopc_addr_router_001_src_channel_105m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_my_sopc_addr_router_001_src_channel_106m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_my_sopc_addr_router_001_src_channel_107m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_my_sopc_addr_router_001_src_channel_108m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_my_sopc_addr_router_001_src_channel_109m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_my_sopc_addr_router_001_src_channel_115m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_my_sopc_addr_router_001_src_channel_117m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_my_sopc_addr_router_001_src_channel_118m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_my_sopc_addr_router_001_src_channel_119m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_my_sopc_addr_router_001_src_channel_120m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_my_sopc_addr_router_001_src_channel_121m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_my_sopc_addr_router_001_src_channel_122m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_my_sopc_addr_router_001_src_channel_123m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_my_sopc_addr_router_001_src_channel_38m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_my_sopc_addr_router_001_src_channel_39m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_my_sopc_addr_router_001_src_channel_50m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_my_sopc_addr_router_001_src_channel_52m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_my_sopc_addr_router_001_src_channel_53m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_my_sopc_addr_router_001_src_channel_64m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_my_sopc_addr_router_001_src_channel_65m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_my_sopc_addr_router_001_src_channel_66m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_my_sopc_addr_router_001_src_channel_67m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_my_sopc_addr_router_001_src_channel_75m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_my_sopc_addr_router_001_src_channel_78m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_my_sopc_addr_router_001_src_channel_79m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_my_sopc_addr_router_001_src_channel_80m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_my_sopc_addr_router_001_src_channel_81m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_my_sopc_addr_router_001_src_channel_89m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_my_sopc_addr_router_001_src_channel_90m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_my_sopc_addr_router_001_src_channel_92m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_my_sopc_addr_router_001_src_channel_93m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_my_sopc_addr_router_001_src_channel_94m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_my_sopc_addr_router_001_src_channel_95m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_my_sopc_addr_router_001_src_data_111m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_my_sopc_addr_router_001_src_data_112m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_my_sopc_addr_router_001_src_data_113m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_my_sopc_addr_router_001_src_data_125m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_my_sopc_addr_router_001_src_data_126m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_my_sopc_addr_router_001_src_data_127m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_my_sopc_addr_router_001_src_data_43m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_my_sopc_addr_router_001_src_data_55m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_my_sopc_addr_router_001_src_data_56m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_my_sopc_addr_router_001_src_data_57m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_my_sopc_addr_router_001_src_data_69m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_my_sopc_addr_router_001_src_data_70m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_my_sopc_addr_router_001_src_data_71m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_my_sopc_addr_router_001_src_data_83m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_my_sopc_addr_router_001_src_data_84m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_my_sopc_addr_router_001_src_data_85m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_my_sopc_addr_router_001_src_data_97m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_my_sopc_addr_router_001_src_data_98m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_my_sopc_addr_router_001_src_data_99m_dataout	:	STD_LOGIC;
	 SIGNAL  wire_w_lg_w_sink_data_range120w339w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_sink_data_range144w278w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w1w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w2w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_sink_data_range123w284w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_sink_data_range147w277w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  s_wire_my_sopc_addr_router_001_src_channel_0_358_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_my_sopc_addr_router_001_src_channel_1_375_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_my_sopc_addr_router_001_src_channel_2_392_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_my_sopc_addr_router_001_src_channel_3_409_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_my_sopc_addr_router_001_src_channel_4_426_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_my_sopc_addr_router_001_src_channel_5_443_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_my_sopc_addr_router_001_src_channel_6_460_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_my_sopc_addr_router_001_src_channel_7_477_dataout :	STD_LOGIC;
	 SIGNAL  wire_w_sink_data_range120w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_sink_data_range123w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_sink_data_range144w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_sink_data_range147w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
 BEGIN

	wire_w_lg_w_sink_data_range120w339w(0) <= wire_w_sink_data_range120w(0) AND wire_w_lg_w_sink_data_range123w284w(0);
	wire_w_lg_w_sink_data_range144w278w(0) <= wire_w_sink_data_range144w(0) AND wire_w_lg_w_sink_data_range147w277w(0);
	wire_w1w(0) <= NOT s_wire_my_sopc_addr_router_001_src_channel_0_358_dataout;
	wire_w2w(0) <= NOT s_wire_my_sopc_addr_router_001_src_channel_1_375_dataout;
	wire_w_lg_w_sink_data_range123w284w(0) <= NOT wire_w_sink_data_range123w(0);
	wire_w_lg_w_sink_data_range147w277w(0) <= NOT wire_w_sink_data_range147w(0);
	s_wire_my_sopc_addr_router_001_src_channel_0_358_dataout <= (((wire_w_lg_w_sink_data_range144w278w(0) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND sink_data(51));
	s_wire_my_sopc_addr_router_001_src_channel_1_375_dataout <= (((((((((((wire_w_lg_w_sink_data_range123w284w(0) AND sink_data(41)) AND (NOT sink_data(42))) AND (NOT sink_data(43))) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND sink_data(51));
	s_wire_my_sopc_addr_router_001_src_channel_2_392_dataout <= (((((((((((sink_data(40) AND sink_data(41)) AND (NOT sink_data(42))) AND (NOT sink_data(43))) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND sink_data(51));
	s_wire_my_sopc_addr_router_001_src_channel_3_409_dataout <= ((((((((((((sink_data(39) AND sink_data(40)) AND (NOT sink_data(41))) AND sink_data(42)) AND (NOT sink_data(43))) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND sink_data(51));
	s_wire_my_sopc_addr_router_001_src_channel_4_426_dataout <= (((((((((((((NOT sink_data(39)) AND wire_w_lg_w_sink_data_range123w284w(0)) AND sink_data(41)) AND sink_data(42)) AND (NOT sink_data(43))) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND sink_data(51));
	s_wire_my_sopc_addr_router_001_src_channel_5_443_dataout <= (((((((((((wire_w_lg_w_sink_data_range120w339w(0) AND sink_data(41)) AND sink_data(42)) AND (NOT sink_data(43))) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND sink_data(51));
	s_wire_my_sopc_addr_router_001_src_channel_6_460_dataout <= (((((((((((((NOT sink_data(39)) AND sink_data(40)) AND sink_data(41)) AND sink_data(42)) AND (NOT sink_data(43))) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND sink_data(51));
	s_wire_my_sopc_addr_router_001_src_channel_7_477_dataout <= ((((((((((((sink_data(39) AND sink_data(40)) AND sink_data(41)) AND sink_data(42)) AND (NOT sink_data(43))) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND sink_data(51));
	sink_ready <= src_ready;
	src_channel <= ( wire_my_sopc_addr_router_001_src_channel_115m_dataout & s_wire_my_sopc_addr_router_001_src_channel_7_477_dataout & wire_my_sopc_addr_router_001_src_channel_117m_dataout & wire_my_sopc_addr_router_001_src_channel_118m_dataout & wire_my_sopc_addr_router_001_src_channel_119m_dataout & wire_my_sopc_addr_router_001_src_channel_120m_dataout & wire_my_sopc_addr_router_001_src_channel_121m_dataout & wire_my_sopc_addr_router_001_src_channel_122m_dataout & wire_my_sopc_addr_router_001_src_channel_123m_dataout);
	src_data <= ( sink_data(90 DOWNTO 81) & s_wire_my_sopc_addr_router_001_src_channel_7_477_dataout & wire_my_sopc_addr_router_001_src_data_125m_dataout & wire_my_sopc_addr_router_001_src_data_126m_dataout & wire_my_sopc_addr_router_001_src_data_127m_dataout & sink_data(76 DOWNTO 0));
	src_endofpacket <= sink_endofpacket;
	src_startofpacket <= sink_startofpacket;
	src_valid <= sink_valid;
	wire_w_sink_data_range120w(0) <= sink_data(39);
	wire_w_sink_data_range123w(0) <= sink_data(40);
	wire_w_sink_data_range144w(0) <= sink_data(47);
	wire_w_sink_data_range147w(0) <= sink_data(48);
	wire_my_sopc_addr_router_001_src_channel_103m_dataout <= wire_my_sopc_addr_router_001_src_channel_89m_dataout AND NOT(s_wire_my_sopc_addr_router_001_src_channel_6_460_dataout);
	wire_my_sopc_addr_router_001_src_channel_104m_dataout <= wire_my_sopc_addr_router_001_src_channel_90m_dataout AND NOT(s_wire_my_sopc_addr_router_001_src_channel_6_460_dataout);
	wire_my_sopc_addr_router_001_src_channel_105m_dataout <= s_wire_my_sopc_addr_router_001_src_channel_5_443_dataout AND NOT(s_wire_my_sopc_addr_router_001_src_channel_6_460_dataout);
	wire_my_sopc_addr_router_001_src_channel_106m_dataout <= wire_my_sopc_addr_router_001_src_channel_92m_dataout AND NOT(s_wire_my_sopc_addr_router_001_src_channel_6_460_dataout);
	wire_my_sopc_addr_router_001_src_channel_107m_dataout <= wire_my_sopc_addr_router_001_src_channel_93m_dataout AND NOT(s_wire_my_sopc_addr_router_001_src_channel_6_460_dataout);
	wire_my_sopc_addr_router_001_src_channel_108m_dataout <= wire_my_sopc_addr_router_001_src_channel_94m_dataout AND NOT(s_wire_my_sopc_addr_router_001_src_channel_6_460_dataout);
	wire_my_sopc_addr_router_001_src_channel_109m_dataout <= wire_my_sopc_addr_router_001_src_channel_95m_dataout AND NOT(s_wire_my_sopc_addr_router_001_src_channel_6_460_dataout);
	wire_my_sopc_addr_router_001_src_channel_115m_dataout <= s_wire_my_sopc_addr_router_001_src_channel_6_460_dataout AND NOT(s_wire_my_sopc_addr_router_001_src_channel_7_477_dataout);
	wire_my_sopc_addr_router_001_src_channel_117m_dataout <= wire_my_sopc_addr_router_001_src_channel_103m_dataout AND NOT(s_wire_my_sopc_addr_router_001_src_channel_7_477_dataout);
	wire_my_sopc_addr_router_001_src_channel_118m_dataout <= wire_my_sopc_addr_router_001_src_channel_104m_dataout AND NOT(s_wire_my_sopc_addr_router_001_src_channel_7_477_dataout);
	wire_my_sopc_addr_router_001_src_channel_119m_dataout <= wire_my_sopc_addr_router_001_src_channel_105m_dataout AND NOT(s_wire_my_sopc_addr_router_001_src_channel_7_477_dataout);
	wire_my_sopc_addr_router_001_src_channel_120m_dataout <= wire_my_sopc_addr_router_001_src_channel_106m_dataout AND NOT(s_wire_my_sopc_addr_router_001_src_channel_7_477_dataout);
	wire_my_sopc_addr_router_001_src_channel_121m_dataout <= wire_my_sopc_addr_router_001_src_channel_107m_dataout AND NOT(s_wire_my_sopc_addr_router_001_src_channel_7_477_dataout);
	wire_my_sopc_addr_router_001_src_channel_122m_dataout <= wire_my_sopc_addr_router_001_src_channel_108m_dataout AND NOT(s_wire_my_sopc_addr_router_001_src_channel_7_477_dataout);
	wire_my_sopc_addr_router_001_src_channel_123m_dataout <= wire_my_sopc_addr_router_001_src_channel_109m_dataout AND NOT(s_wire_my_sopc_addr_router_001_src_channel_7_477_dataout);
	wire_my_sopc_addr_router_001_src_channel_38m_dataout <= wire_w1w(0) AND NOT(s_wire_my_sopc_addr_router_001_src_channel_1_375_dataout);
	wire_my_sopc_addr_router_001_src_channel_39m_dataout <= s_wire_my_sopc_addr_router_001_src_channel_0_358_dataout AND NOT(s_wire_my_sopc_addr_router_001_src_channel_1_375_dataout);
	wire_my_sopc_addr_router_001_src_channel_50m_dataout <= s_wire_my_sopc_addr_router_001_src_channel_1_375_dataout AND NOT(s_wire_my_sopc_addr_router_001_src_channel_2_392_dataout);
	wire_my_sopc_addr_router_001_src_channel_52m_dataout <= wire_my_sopc_addr_router_001_src_channel_38m_dataout AND NOT(s_wire_my_sopc_addr_router_001_src_channel_2_392_dataout);
	wire_my_sopc_addr_router_001_src_channel_53m_dataout <= wire_my_sopc_addr_router_001_src_channel_39m_dataout AND NOT(s_wire_my_sopc_addr_router_001_src_channel_2_392_dataout);
	wire_my_sopc_addr_router_001_src_channel_64m_dataout <= wire_my_sopc_addr_router_001_src_channel_50m_dataout AND NOT(s_wire_my_sopc_addr_router_001_src_channel_3_409_dataout);
	wire_my_sopc_addr_router_001_src_channel_65m_dataout <= s_wire_my_sopc_addr_router_001_src_channel_2_392_dataout AND NOT(s_wire_my_sopc_addr_router_001_src_channel_3_409_dataout);
	wire_my_sopc_addr_router_001_src_channel_66m_dataout <= wire_my_sopc_addr_router_001_src_channel_52m_dataout AND NOT(s_wire_my_sopc_addr_router_001_src_channel_3_409_dataout);
	wire_my_sopc_addr_router_001_src_channel_67m_dataout <= wire_my_sopc_addr_router_001_src_channel_53m_dataout AND NOT(s_wire_my_sopc_addr_router_001_src_channel_3_409_dataout);
	wire_my_sopc_addr_router_001_src_channel_75m_dataout <= s_wire_my_sopc_addr_router_001_src_channel_3_409_dataout AND NOT(s_wire_my_sopc_addr_router_001_src_channel_4_426_dataout);
	wire_my_sopc_addr_router_001_src_channel_78m_dataout <= wire_my_sopc_addr_router_001_src_channel_64m_dataout AND NOT(s_wire_my_sopc_addr_router_001_src_channel_4_426_dataout);
	wire_my_sopc_addr_router_001_src_channel_79m_dataout <= wire_my_sopc_addr_router_001_src_channel_65m_dataout AND NOT(s_wire_my_sopc_addr_router_001_src_channel_4_426_dataout);
	wire_my_sopc_addr_router_001_src_channel_80m_dataout <= wire_my_sopc_addr_router_001_src_channel_66m_dataout AND NOT(s_wire_my_sopc_addr_router_001_src_channel_4_426_dataout);
	wire_my_sopc_addr_router_001_src_channel_81m_dataout <= wire_my_sopc_addr_router_001_src_channel_67m_dataout AND NOT(s_wire_my_sopc_addr_router_001_src_channel_4_426_dataout);
	wire_my_sopc_addr_router_001_src_channel_89m_dataout <= wire_my_sopc_addr_router_001_src_channel_75m_dataout AND NOT(s_wire_my_sopc_addr_router_001_src_channel_5_443_dataout);
	wire_my_sopc_addr_router_001_src_channel_90m_dataout <= s_wire_my_sopc_addr_router_001_src_channel_4_426_dataout AND NOT(s_wire_my_sopc_addr_router_001_src_channel_5_443_dataout);
	wire_my_sopc_addr_router_001_src_channel_92m_dataout <= wire_my_sopc_addr_router_001_src_channel_78m_dataout AND NOT(s_wire_my_sopc_addr_router_001_src_channel_5_443_dataout);
	wire_my_sopc_addr_router_001_src_channel_93m_dataout <= wire_my_sopc_addr_router_001_src_channel_79m_dataout AND NOT(s_wire_my_sopc_addr_router_001_src_channel_5_443_dataout);
	wire_my_sopc_addr_router_001_src_channel_94m_dataout <= wire_my_sopc_addr_router_001_src_channel_80m_dataout AND NOT(s_wire_my_sopc_addr_router_001_src_channel_5_443_dataout);
	wire_my_sopc_addr_router_001_src_channel_95m_dataout <= wire_my_sopc_addr_router_001_src_channel_81m_dataout AND NOT(s_wire_my_sopc_addr_router_001_src_channel_5_443_dataout);
	wire_my_sopc_addr_router_001_src_data_111m_dataout <= wire_my_sopc_addr_router_001_src_data_97m_dataout OR s_wire_my_sopc_addr_router_001_src_channel_6_460_dataout;
	wire_my_sopc_addr_router_001_src_data_112m_dataout <= wire_my_sopc_addr_router_001_src_data_98m_dataout AND NOT(s_wire_my_sopc_addr_router_001_src_channel_6_460_dataout);
	wire_my_sopc_addr_router_001_src_data_113m_dataout <= wire_my_sopc_addr_router_001_src_data_99m_dataout OR s_wire_my_sopc_addr_router_001_src_channel_6_460_dataout;
	wire_my_sopc_addr_router_001_src_data_125m_dataout <= wire_my_sopc_addr_router_001_src_data_111m_dataout AND NOT(s_wire_my_sopc_addr_router_001_src_channel_7_477_dataout);
	wire_my_sopc_addr_router_001_src_data_126m_dataout <= wire_my_sopc_addr_router_001_src_data_112m_dataout AND NOT(s_wire_my_sopc_addr_router_001_src_channel_7_477_dataout);
	wire_my_sopc_addr_router_001_src_data_127m_dataout <= wire_my_sopc_addr_router_001_src_data_113m_dataout AND NOT(s_wire_my_sopc_addr_router_001_src_channel_7_477_dataout);
	wire_my_sopc_addr_router_001_src_data_43m_dataout <= wire_w1w(0) AND NOT(s_wire_my_sopc_addr_router_001_src_channel_1_375_dataout);
	wire_my_sopc_addr_router_001_src_data_55m_dataout <= wire_w2w(0) AND NOT(s_wire_my_sopc_addr_router_001_src_channel_2_392_dataout);
	wire_my_sopc_addr_router_001_src_data_56m_dataout <= wire_w2w(0) AND NOT(s_wire_my_sopc_addr_router_001_src_channel_2_392_dataout);
	wire_my_sopc_addr_router_001_src_data_57m_dataout <= wire_my_sopc_addr_router_001_src_data_43m_dataout OR s_wire_my_sopc_addr_router_001_src_channel_2_392_dataout;
	wire_my_sopc_addr_router_001_src_data_69m_dataout <= wire_my_sopc_addr_router_001_src_data_55m_dataout OR s_wire_my_sopc_addr_router_001_src_channel_3_409_dataout;
	wire_my_sopc_addr_router_001_src_data_70m_dataout <= wire_my_sopc_addr_router_001_src_data_56m_dataout AND NOT(s_wire_my_sopc_addr_router_001_src_channel_3_409_dataout);
	wire_my_sopc_addr_router_001_src_data_71m_dataout <= wire_my_sopc_addr_router_001_src_data_57m_dataout AND NOT(s_wire_my_sopc_addr_router_001_src_channel_3_409_dataout);
	wire_my_sopc_addr_router_001_src_data_83m_dataout <= wire_my_sopc_addr_router_001_src_data_69m_dataout AND NOT(s_wire_my_sopc_addr_router_001_src_channel_4_426_dataout);
	wire_my_sopc_addr_router_001_src_data_84m_dataout <= wire_my_sopc_addr_router_001_src_data_70m_dataout OR s_wire_my_sopc_addr_router_001_src_channel_4_426_dataout;
	wire_my_sopc_addr_router_001_src_data_85m_dataout <= wire_my_sopc_addr_router_001_src_data_71m_dataout OR s_wire_my_sopc_addr_router_001_src_channel_4_426_dataout;
	wire_my_sopc_addr_router_001_src_data_97m_dataout <= wire_my_sopc_addr_router_001_src_data_83m_dataout AND NOT(s_wire_my_sopc_addr_router_001_src_channel_5_443_dataout);
	wire_my_sopc_addr_router_001_src_data_98m_dataout <= wire_my_sopc_addr_router_001_src_data_84m_dataout OR s_wire_my_sopc_addr_router_001_src_channel_5_443_dataout;
	wire_my_sopc_addr_router_001_src_data_99m_dataout <= wire_my_sopc_addr_router_001_src_data_85m_dataout AND NOT(s_wire_my_sopc_addr_router_001_src_channel_5_443_dataout);

 END RTL; --my_sopc_addr_router_001
--synopsys translate_on
--VALID FILE
