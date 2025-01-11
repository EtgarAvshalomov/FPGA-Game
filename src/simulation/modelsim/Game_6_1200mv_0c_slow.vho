-- Copyright (C) 1991-2010 Altera Corporation
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

-- VENDOR "Altera"
-- PROGRAM "Quartus II"
-- VERSION "Version 9.1 Build 350 03/24/2010 Service Pack 2 SJ Web Edition"

-- DATE "08/15/2024 15:31:02"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Game IS
    PORT (
	HEX2_DP : OUT std_logic;
	STOPPER_CLK : IN std_logic;
	GAME_START : IN std_logic;
	STOPPER_RESET : IN std_logic;
	SW : IN std_logic_vector(7 DOWNTO 0);
	HEX0S : OUT std_logic_vector(6 DOWNTO 0);
	STOPPER_SEL : IN std_logic;
	HEX1S : OUT std_logic_vector(6 DOWNTO 0);
	HEX2S : OUT std_logic_vector(6 DOWNTO 0);
	HEX3S : OUT std_logic_vector(6 DOWNTO 0);
	led : OUT std_logic_vector(9 DOWNTO 4);
	LED_RESET : IN std_logic
	);
END Game;

-- Design Ports Information
-- HEX2_DP	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0S[6]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0S[5]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0S[4]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0S[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0S[2]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0S[1]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0S[0]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1S[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1S[5]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1S[4]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1S[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1S[2]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1S[1]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1S[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2S[6]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2S[5]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2S[4]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2S[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2S[2]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2S[1]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2S[0]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3S[6]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3S[5]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3S[4]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3S[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3S[2]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3S[1]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3S[0]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[9]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[8]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[7]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[6]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[5]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[4]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STOPPER_SEL	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STOPPER_RESET	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STOPPER_CLK	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_RESET	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GAME_START	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default

ARCHITECTURE structure OF Game IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_HEX2_DP : std_logic;
SIGNAL ww_STOPPER_CLK : std_logic;
SIGNAL ww_GAME_START : std_logic;
SIGNAL ww_STOPPER_RESET : std_logic;
SIGNAL ww_SW : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX0S : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_STOPPER_SEL : std_logic;
SIGNAL ww_HEX1S : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2S : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3S : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led : std_logic_vector(9 DOWNTO 4);
SIGNAL ww_LED_RESET : std_logic;
SIGNAL \inst3|inst|lpm_counter_component|auto_generated|cout_actual~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst8|inst92|inst1~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|inst19~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \STOPPER_CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita8~combout\ : std_logic;
SIGNAL \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita16~combout\ : std_logic;
SIGNAL \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita18~combout\ : std_logic;
SIGNAL \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita19~combout\ : std_logic;
SIGNAL \inst3|inst|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\ : std_logic;
SIGNAL \inst3|inst|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~5_combout\ : std_logic;
SIGNAL \inst|inst3|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ : std_logic;
SIGNAL \inst|inst19~q\ : std_logic;
SIGNAL \inst1|inst28|inst3~q\ : std_logic;
SIGNAL \inst1|inst18~0_combout\ : std_logic;
SIGNAL \inst|inst18~combout\ : std_logic;
SIGNAL \inst|inst19~0_combout\ : std_logic;
SIGNAL \inst3|inst|lpm_counter_component|auto_generated|cout_actual~clkctrl_outclk\ : std_logic;
SIGNAL \inst8|inst92|inst1~clkctrl_outclk\ : std_logic;
SIGNAL \inst|inst19~clkctrl_outclk\ : std_logic;
SIGNAL \inst|inst19~feeder_combout\ : std_logic;
SIGNAL \HEX2_DP~output_o\ : std_logic;
SIGNAL \HEX0S[6]~output_o\ : std_logic;
SIGNAL \HEX0S[5]~output_o\ : std_logic;
SIGNAL \HEX0S[4]~output_o\ : std_logic;
SIGNAL \HEX0S[3]~output_o\ : std_logic;
SIGNAL \HEX0S[2]~output_o\ : std_logic;
SIGNAL \HEX0S[1]~output_o\ : std_logic;
SIGNAL \HEX0S[0]~output_o\ : std_logic;
SIGNAL \HEX1S[6]~output_o\ : std_logic;
SIGNAL \HEX1S[5]~output_o\ : std_logic;
SIGNAL \HEX1S[4]~output_o\ : std_logic;
SIGNAL \HEX1S[3]~output_o\ : std_logic;
SIGNAL \HEX1S[2]~output_o\ : std_logic;
SIGNAL \HEX1S[1]~output_o\ : std_logic;
SIGNAL \HEX1S[0]~output_o\ : std_logic;
SIGNAL \HEX2S[6]~output_o\ : std_logic;
SIGNAL \HEX2S[5]~output_o\ : std_logic;
SIGNAL \HEX2S[4]~output_o\ : std_logic;
SIGNAL \HEX2S[3]~output_o\ : std_logic;
SIGNAL \HEX2S[2]~output_o\ : std_logic;
SIGNAL \HEX2S[1]~output_o\ : std_logic;
SIGNAL \HEX2S[0]~output_o\ : std_logic;
SIGNAL \HEX3S[6]~output_o\ : std_logic;
SIGNAL \HEX3S[5]~output_o\ : std_logic;
SIGNAL \HEX3S[4]~output_o\ : std_logic;
SIGNAL \HEX3S[3]~output_o\ : std_logic;
SIGNAL \HEX3S[2]~output_o\ : std_logic;
SIGNAL \HEX3S[1]~output_o\ : std_logic;
SIGNAL \HEX3S[0]~output_o\ : std_logic;
SIGNAL \led[9]~output_o\ : std_logic;
SIGNAL \led[8]~output_o\ : std_logic;
SIGNAL \led[7]~output_o\ : std_logic;
SIGNAL \led[6]~output_o\ : std_logic;
SIGNAL \led[5]~output_o\ : std_logic;
SIGNAL \led[4]~output_o\ : std_logic;
SIGNAL \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit[1]~feeder_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \STOPPER_RESET~input_o\ : std_logic;
SIGNAL \GAME_START~input_o\ : std_logic;
SIGNAL \inst8|inst49|inst~0_combout\ : std_logic;
SIGNAL \inst8|inst49|inst~q\ : std_logic;
SIGNAL \inst8|inst49|inst7~q\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \inst8|inst~1_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \inst8|inst~0_combout\ : std_logic;
SIGNAL \inst8|inst~combout\ : std_logic;
SIGNAL \inst8|inst92|inst~q\ : std_logic;
SIGNAL \inst8|inst92|inst7~q\ : std_logic;
SIGNAL \inst8|inst92|inst1~combout\ : std_logic;
SIGNAL \inst8|inst45~combout\ : std_logic;
SIGNAL \inst8|inst25~0_combout\ : std_logic;
SIGNAL \inst8|inst25~q\ : std_logic;
SIGNAL \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit[25]~0_combout\ : std_logic;
SIGNAL \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit[0]~feeder_combout\ : std_logic;
SIGNAL \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita8~COUT\ : std_logic;
SIGNAL \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita9~combout\ : std_logic;
SIGNAL \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita9~COUT\ : std_logic;
SIGNAL \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita10~COUT\ : std_logic;
SIGNAL \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita11~combout\ : std_logic;
SIGNAL \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita11~COUT\ : std_logic;
SIGNAL \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita12~combout\ : std_logic;
SIGNAL \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita12~COUT\ : std_logic;
SIGNAL \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita13~combout\ : std_logic;
SIGNAL \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita10~combout\ : std_logic;
SIGNAL \inst3|inst|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~3_combout\ : std_logic;
SIGNAL \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita13~COUT\ : std_logic;
SIGNAL \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita14~combout\ : std_logic;
SIGNAL \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita14~COUT\ : std_logic;
SIGNAL \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita15~combout\ : std_logic;
SIGNAL \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita15~COUT\ : std_logic;
SIGNAL \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita16~COUT\ : std_logic;
SIGNAL \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita17~combout\ : std_logic;
SIGNAL \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita17~COUT\ : std_logic;
SIGNAL \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita18~COUT\ : std_logic;
SIGNAL \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita19~COUT\ : std_logic;
SIGNAL \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita20~combout\ : std_logic;
SIGNAL \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita20~COUT\ : std_logic;
SIGNAL \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita21~combout\ : std_logic;
SIGNAL \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita21~COUT\ : std_logic;
SIGNAL \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita22~combout\ : std_logic;
SIGNAL \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita22~COUT\ : std_logic;
SIGNAL \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita23~combout\ : std_logic;
SIGNAL \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita23~COUT\ : std_logic;
SIGNAL \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita24~combout\ : std_logic;
SIGNAL \inst3|inst|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ : std_logic;
SIGNAL \inst3|inst|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~2_combout\ : std_logic;
SIGNAL \inst3|inst|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~4_combout\ : std_logic;
SIGNAL \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \inst3|inst|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~6_combout\ : std_logic;
SIGNAL \inst3|inst|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~7_combout\ : std_logic;
SIGNAL \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita24~COUT\ : std_logic;
SIGNAL \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita25~combout\ : std_logic;
SIGNAL \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita25~COUT\ : std_logic;
SIGNAL \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita25~0_combout\ : std_logic;
SIGNAL \inst3|inst|lpm_counter_component|auto_generated|cout_actual~combout\ : std_logic;
SIGNAL \STOPPER_SEL~input_o\ : std_logic;
SIGNAL \inst|inst|lpm_counter_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \inst|inst|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst|inst|lpm_counter_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst|inst|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst|inst|lpm_counter_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst|inst|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst|inst|lpm_counter_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \inst|inst|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ : std_logic;
SIGNAL \inst|inst|lpm_counter_component|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \inst|inst|lpm_counter_component|auto_generated|counter_comb_bita3~0_combout\ : std_logic;
SIGNAL \inst|inst|lpm_counter_component|auto_generated|cout_actual~combout\ : std_logic;
SIGNAL \inst9|inst41~q\ : std_logic;
SIGNAL \inst25|inst|inst5~0_combout\ : std_logic;
SIGNAL \inst9|inst44~q\ : std_logic;
SIGNAL \inst25|inst3|inst5~0_combout\ : std_logic;
SIGNAL \inst9|inst43~q\ : std_logic;
SIGNAL \inst25|inst2|inst5~0_combout\ : std_logic;
SIGNAL \inst9|inst42~q\ : std_logic;
SIGNAL \inst25|inst1|inst5~0_combout\ : std_logic;
SIGNAL \inst2|ss[6]~0_combout\ : std_logic;
SIGNAL \inst2|ss[5]~1_combout\ : std_logic;
SIGNAL \inst2|ss[4]~2_combout\ : std_logic;
SIGNAL \inst2|ss[3]~3_combout\ : std_logic;
SIGNAL \inst2|ss[2]~4_combout\ : std_logic;
SIGNAL \inst2|ss[1]~5_combout\ : std_logic;
SIGNAL \inst2|ss[0]~6_combout\ : std_logic;
SIGNAL \inst|inst3|lpm_counter_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \inst|inst3|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst|inst3|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst|inst3|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst|inst3|lpm_counter_component|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \inst|inst3|lpm_counter_component|auto_generated|counter_comb_bita3~0_combout\ : std_logic;
SIGNAL \inst|inst3|lpm_counter_component|auto_generated|cout_actual~combout\ : std_logic;
SIGNAL \inst9|inst37~q\ : std_logic;
SIGNAL \inst25|inst4|inst5~0_combout\ : std_logic;
SIGNAL \inst|inst3|lpm_counter_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \inst9|inst40~q\ : std_logic;
SIGNAL \inst25|inst7|inst5~0_combout\ : std_logic;
SIGNAL \inst|inst3|lpm_counter_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst9|inst39~q\ : std_logic;
SIGNAL \inst25|inst6|inst5~0_combout\ : std_logic;
SIGNAL \inst|inst3|lpm_counter_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst9|inst38~q\ : std_logic;
SIGNAL \inst25|inst5|inst5~0_combout\ : std_logic;
SIGNAL \inst4|ss[6]~0_combout\ : std_logic;
SIGNAL \inst4|ss[5]~1_combout\ : std_logic;
SIGNAL \inst4|ss[4]~2_combout\ : std_logic;
SIGNAL \inst4|ss[3]~3_combout\ : std_logic;
SIGNAL \inst4|ss[2]~4_combout\ : std_logic;
SIGNAL \inst4|ss[1]~5_combout\ : std_logic;
SIGNAL \inst4|ss[0]~6_combout\ : std_logic;
SIGNAL \inst5|inst|lpm_counter_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \inst5|inst|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst5|inst|lpm_counter_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst5|inst|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst5|inst|lpm_counter_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \inst5|inst|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ : std_logic;
SIGNAL \inst5|inst|lpm_counter_component|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \inst5|inst|lpm_counter_component|auto_generated|counter_comb_bita3~0_combout\ : std_logic;
SIGNAL \inst5|inst|lpm_counter_component|auto_generated|cout_actual~combout\ : std_logic;
SIGNAL \inst5|inst|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst5|inst|lpm_counter_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst9|inst33~q\ : std_logic;
SIGNAL \inst25|inst9|inst5~0_combout\ : std_logic;
SIGNAL \inst9|inst36~q\ : std_logic;
SIGNAL \inst25|inst11|inst5~0_combout\ : std_logic;
SIGNAL \inst9|inst35~q\ : std_logic;
SIGNAL \inst25|inst10|inst5~0_combout\ : std_logic;
SIGNAL \inst9|inst31~q\ : std_logic;
SIGNAL \inst25|inst8|inst5~0_combout\ : std_logic;
SIGNAL \inst6|ss[6]~0_combout\ : std_logic;
SIGNAL \inst6|ss[5]~1_combout\ : std_logic;
SIGNAL \inst6|ss[4]~2_combout\ : std_logic;
SIGNAL \inst6|ss[3]~3_combout\ : std_logic;
SIGNAL \inst6|ss[2]~4_combout\ : std_logic;
SIGNAL \inst6|ss[1]~5_combout\ : std_logic;
SIGNAL \inst6|ss[0]~6_combout\ : std_logic;
SIGNAL \inst5|inst3|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst5|inst3|lpm_counter_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst5|inst3|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst5|inst3|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst5|inst3|lpm_counter_component|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \inst5|inst3|lpm_counter_component|auto_generated|counter_comb_bita3~0_combout\ : std_logic;
SIGNAL \inst5|inst3|lpm_counter_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \inst5|inst3|lpm_counter_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst5|inst3|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ : std_logic;
SIGNAL \inst5|inst3|lpm_counter_component|auto_generated|cout_actual~combout\ : std_logic;
SIGNAL \inst9|inst23~q\ : std_logic;
SIGNAL \inst25|inst13|inst5~0_combout\ : std_logic;
SIGNAL \inst5|inst3|lpm_counter_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \inst9|inst29~q\ : std_logic;
SIGNAL \inst25|inst15|inst5~0_combout\ : std_logic;
SIGNAL \inst9|inst12~q\ : std_logic;
SIGNAL \inst25|inst12|inst5~0_combout\ : std_logic;
SIGNAL \inst9|inst27~q\ : std_logic;
SIGNAL \inst25|inst14|inst5~0_combout\ : std_logic;
SIGNAL \inst7|ss[6]~0_combout\ : std_logic;
SIGNAL \inst7|ss[5]~1_combout\ : std_logic;
SIGNAL \inst7|ss[4]~2_combout\ : std_logic;
SIGNAL \inst7|ss[3]~3_combout\ : std_logic;
SIGNAL \inst7|ss[2]~4_combout\ : std_logic;
SIGNAL \inst7|ss[1]~5_combout\ : std_logic;
SIGNAL \inst7|ss[0]~6_combout\ : std_logic;
SIGNAL \STOPPER_CLK~input_o\ : std_logic;
SIGNAL \STOPPER_CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \LED_RESET~input_o\ : std_logic;
SIGNAL \inst1|inst24|inst~q\ : std_logic;
SIGNAL \inst1|inst24|inst3~q\ : std_logic;
SIGNAL \inst1|inst24|inst4~combout\ : std_logic;
SIGNAL \inst1|inst30|inst~feeder_combout\ : std_logic;
SIGNAL \inst1|inst30|inst~q\ : std_logic;
SIGNAL \inst1|inst30|inst3~q\ : std_logic;
SIGNAL \inst1|inst28|inst~feeder_combout\ : std_logic;
SIGNAL \inst1|inst28|inst~q\ : std_logic;
SIGNAL \inst1|inst14~0_combout\ : std_logic;
SIGNAL \inst1|inst13~0_combout\ : std_logic;
SIGNAL \inst1|inst13~q\ : std_logic;
SIGNAL \inst1|inst32|inst~feeder_combout\ : std_logic;
SIGNAL \inst1|inst32|inst~q\ : std_logic;
SIGNAL \inst1|inst32|inst3~q\ : std_logic;
SIGNAL \inst1|inst32|inst4~combout\ : std_logic;
SIGNAL \inst1|inst20|inst~q\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \inst1|inst22|inst~feeder_combout\ : std_logic;
SIGNAL \inst1|inst22|inst~q\ : std_logic;
SIGNAL \inst1|inst22|inst3~q\ : std_logic;
SIGNAL \inst1|inst20|inst3~feeder_combout\ : std_logic;
SIGNAL \inst1|inst20|inst3~q\ : std_logic;
SIGNAL \inst1|inst16~0_combout\ : std_logic;
SIGNAL \inst1|inst11~0_combout\ : std_logic;
SIGNAL \inst1|inst11~q\ : std_logic;
SIGNAL \inst1|inst10~4_combout\ : std_logic;
SIGNAL \inst1|inst10~q\ : std_logic;
SIGNAL \inst1|inst9~0_combout\ : std_logic;
SIGNAL \inst1|inst9~q\ : std_logic;
SIGNAL \inst1|inst26|inst~feeder_combout\ : std_logic;
SIGNAL \inst1|inst26|inst~q\ : std_logic;
SIGNAL \inst1|inst26|inst3~feeder_combout\ : std_logic;
SIGNAL \inst1|inst26|inst3~q\ : std_logic;
SIGNAL \inst1|inst15~0_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \inst1|inst34|inst~feeder_combout\ : std_logic;
SIGNAL \inst1|inst34|inst~q\ : std_logic;
SIGNAL \inst1|inst34|inst3~q\ : std_logic;
SIGNAL \inst1|inst15~1_combout\ : std_logic;
SIGNAL \inst1|inst8~0_combout\ : std_logic;
SIGNAL \inst1|inst8~q\ : std_logic;
SIGNAL \inst1|inst21~0_combout\ : std_logic;
SIGNAL \inst1|inst21~q\ : std_logic;
SIGNAL \inst|inst3|lpm_counter_component|auto_generated|counter_reg_bit\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|inst|lpm_counter_component|auto_generated|counter_reg_bit\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|inst3|lpm_counter_component|auto_generated|counter_reg_bit\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|inst|lpm_counter_component|auto_generated|counter_reg_bit\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \inst2|ALT_INV_ss[4]~2_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_ss[0]~6_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_ss[4]~2_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_ss[0]~6_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_ss[4]~2_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_ss[0]~6_combout\ : std_logic;
SIGNAL \inst7|ALT_INV_ss[4]~2_combout\ : std_logic;
SIGNAL \inst7|ALT_INV_ss[0]~6_combout\ : std_logic;
SIGNAL \inst|ALT_INV_inst18~combout\ : std_logic;

BEGIN

HEX2_DP <= ww_HEX2_DP;
ww_STOPPER_CLK <= STOPPER_CLK;
ww_GAME_START <= GAME_START;
ww_STOPPER_RESET <= STOPPER_RESET;
ww_SW <= SW;
HEX0S <= ww_HEX0S;
ww_STOPPER_SEL <= STOPPER_SEL;
HEX1S <= ww_HEX1S;
HEX2S <= ww_HEX2S;
HEX3S <= ww_HEX3S;
led <= ww_led;
ww_LED_RESET <= LED_RESET;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst3|inst|lpm_counter_component|auto_generated|cout_actual~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst3|inst|lpm_counter_component|auto_generated|cout_actual~combout\);

\inst8|inst92|inst1~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst8|inst92|inst1~combout\);

\inst|inst19~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|inst19~q\);

\STOPPER_CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \STOPPER_CLK~input_o\);
\inst2|ALT_INV_ss[4]~2_combout\ <= NOT \inst2|ss[4]~2_combout\;
\inst2|ALT_INV_ss[0]~6_combout\ <= NOT \inst2|ss[0]~6_combout\;
\inst4|ALT_INV_ss[4]~2_combout\ <= NOT \inst4|ss[4]~2_combout\;
\inst4|ALT_INV_ss[0]~6_combout\ <= NOT \inst4|ss[0]~6_combout\;
\inst6|ALT_INV_ss[4]~2_combout\ <= NOT \inst6|ss[4]~2_combout\;
\inst6|ALT_INV_ss[0]~6_combout\ <= NOT \inst6|ss[0]~6_combout\;
\inst7|ALT_INV_ss[4]~2_combout\ <= NOT \inst7|ss[4]~2_combout\;
\inst7|ALT_INV_ss[0]~6_combout\ <= NOT \inst7|ss[0]~6_combout\;
\inst|ALT_INV_inst18~combout\ <= NOT \inst|inst18~combout\;

-- Location: FF_X22_Y16_N13
\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \STOPPER_CLK~input_o\,
	d => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita19~combout\,
	asdata => \~GND~combout\,
	clrn => \STOPPER_RESET~input_o\,
	sload => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(19));

-- Location: FF_X22_Y16_N11
\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \STOPPER_CLK~input_o\,
	d => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita18~combout\,
	asdata => \~GND~combout\,
	clrn => \STOPPER_RESET~input_o\,
	sload => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(18));

-- Location: FF_X22_Y16_N7
\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \STOPPER_CLK~input_o\,
	d => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita16~combout\,
	asdata => \~GND~combout\,
	clrn => \STOPPER_RESET~input_o\,
	sload => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(16));

-- Location: FF_X22_Y17_N23
\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \STOPPER_CLK~input_o\,
	d => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita8~combout\,
	asdata => \~GND~combout\,
	clrn => \STOPPER_RESET~input_o\,
	sload => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(8));

-- Location: LCCOMB_X22_Y17_N6
\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita0~combout\ = \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita0~combout\,
	cout => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X22_Y17_N8
\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita1~combout\ = (\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(1) & (!\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(1) & ((\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\) # (!\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita1~combout\,
	cout => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCCOMB_X22_Y17_N22
\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita8~combout\ = (\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(8) & (\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita7~COUT\ $ (GND))) # 
-- (!\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(8) & (!\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita7~COUT\ & VCC))
-- \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita8~COUT\ = CARRY((\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(8) & !\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita7~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(8),
	datad => VCC,
	cin => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita7~COUT\,
	combout => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita8~combout\,
	cout => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita8~COUT\);

-- Location: LCCOMB_X22_Y16_N6
\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita16~combout\ = (\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(16) & (\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita15~COUT\ $ (GND))) # 
-- (!\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(16) & (!\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita15~COUT\ & VCC))
-- \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita16~COUT\ = CARRY((\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(16) & !\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita15~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(16),
	datad => VCC,
	cin => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita15~COUT\,
	combout => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita16~combout\,
	cout => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita16~COUT\);

-- Location: LCCOMB_X22_Y16_N10
\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita18~combout\ = (\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(18) & (\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita17~COUT\ $ (GND))) # 
-- (!\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(18) & (!\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita17~COUT\ & VCC))
-- \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita18~COUT\ = CARRY((\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(18) & !\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita17~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(18),
	datad => VCC,
	cin => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita17~COUT\,
	combout => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita18~combout\,
	cout => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita18~COUT\);

-- Location: LCCOMB_X22_Y16_N12
\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita19~combout\ = (\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(19) & (!\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita18~COUT\)) # 
-- (!\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(19) & ((\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita18~COUT\) # (GND)))
-- \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita19~COUT\ = CARRY((!\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita18~COUT\) # (!\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(19),
	datad => VCC,
	cin => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita18~COUT\,
	combout => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita19~combout\,
	cout => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita19~COUT\);

-- Location: LCCOMB_X22_Y16_N30
\inst3|inst|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\ = (\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(19) & (\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(21) & 
-- (\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(20) & !\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(19),
	datab => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(21),
	datac => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(20),
	datad => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(18),
	combout => \inst3|inst|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\);

-- Location: LCCOMB_X20_Y18_N22
\inst3|inst|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~5_combout\ = (\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(6) & (!\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(7) & 
-- (!\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(9) & !\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(6),
	datab => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(7),
	datac => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(9),
	datad => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(8),
	combout => \inst3|inst|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~5_combout\);

-- Location: LCCOMB_X24_Y27_N28
\inst|inst3|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst3|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ = (!\inst|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(3) & (\inst|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(0) & 
-- (\inst|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(2) & !\inst|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(3),
	datab => \inst|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(0),
	datac => \inst|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(2),
	datad => \inst|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(1),
	combout => \inst|inst3|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\);

-- Location: FF_X24_Y27_N11
\inst|inst19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst|lpm_counter_component|auto_generated|cout_actual~clkctrl_outclk\,
	d => \inst|inst19~feeder_combout\,
	clrn => \inst|ALT_INV_inst18~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst19~q\);

-- Location: FF_X3_Y23_N31
\inst1|inst28|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \STOPPER_CLK~inputclkctrl_outclk\,
	asdata => \inst1|inst28|inst~q\,
	clrn => \LED_RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst28|inst3~q\);

-- Location: LCCOMB_X3_Y23_N30
\inst1|inst18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst18~0_combout\ = (\inst1|inst26|inst~q\ & ((\inst1|inst28|inst~q\ $ (\inst1|inst28|inst3~q\)) # (!\inst1|inst26|inst3~q\))) # (!\inst1|inst26|inst~q\ & ((\inst1|inst26|inst3~q\) # (\inst1|inst28|inst~q\ $ (\inst1|inst28|inst3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst26|inst~q\,
	datab => \inst1|inst28|inst~q\,
	datac => \inst1|inst28|inst3~q\,
	datad => \inst1|inst26|inst3~q\,
	combout => \inst1|inst18~0_combout\);

-- Location: LCCOMB_X24_Y27_N6
\inst|inst18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst18~combout\ = (\inst|inst3|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ & (!\inst|inst|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ & 
-- (!\inst|inst|lpm_counter_component|auto_generated|counter_comb_bita3~0_combout\))) # (!\inst|inst3|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ & 
-- (((!\inst|inst|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ & !\inst|inst|lpm_counter_component|auto_generated|counter_comb_bita3~0_combout\)) # 
-- (!\inst|inst3|lpm_counter_component|auto_generated|counter_comb_bita3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\,
	datab => \inst|inst|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\,
	datac => \inst|inst|lpm_counter_component|auto_generated|counter_comb_bita3~0_combout\,
	datad => \inst|inst3|lpm_counter_component|auto_generated|counter_comb_bita3~0_combout\,
	combout => \inst|inst18~combout\);

-- Location: LCCOMB_X24_Y27_N30
\inst|inst19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst19~0_combout\ = !\inst|inst19~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst19~q\,
	combout => \inst|inst19~0_combout\);

-- Location: CLKCTRL_G18
\inst3|inst|lpm_counter_component|auto_generated|cout_actual~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst3|inst|lpm_counter_component|auto_generated|cout_actual~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst3|inst|lpm_counter_component|auto_generated|cout_actual~clkctrl_outclk\);

-- Location: CLKCTRL_G4
\inst8|inst92|inst1~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst8|inst92|inst1~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst8|inst92|inst1~clkctrl_outclk\);

-- Location: CLKCTRL_G11
\inst|inst19~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|inst19~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|inst19~clkctrl_outclk\);

-- Location: LCCOMB_X24_Y27_N10
\inst|inst19~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst19~feeder_combout\ = \inst|inst19~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst19~0_combout\,
	combout => \inst|inst19~feeder_combout\);

-- Location: IOOBUF_X32_Y29_N16
\HEX2_DP~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst|lpm_counter_component|auto_generated|cout_actual~combout\,
	devoe => ww_devoe,
	o => \HEX2_DP~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\HEX0S[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ss[6]~0_combout\,
	devoe => ww_devoe,
	o => \HEX0S[6]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\HEX0S[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ss[5]~1_combout\,
	devoe => ww_devoe,
	o => \HEX0S[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\HEX0S[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_ss[4]~2_combout\,
	devoe => ww_devoe,
	o => \HEX0S[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\HEX0S[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ss[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX0S[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\HEX0S[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ss[2]~4_combout\,
	devoe => ww_devoe,
	o => \HEX0S[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\HEX0S[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ss[1]~5_combout\,
	devoe => ww_devoe,
	o => \HEX0S[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\HEX0S[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_ss[0]~6_combout\,
	devoe => ww_devoe,
	o => \HEX0S[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\HEX1S[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|ss[6]~0_combout\,
	devoe => ww_devoe,
	o => \HEX1S[6]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\HEX1S[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|ss[5]~1_combout\,
	devoe => ww_devoe,
	o => \HEX1S[5]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\HEX1S[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|ALT_INV_ss[4]~2_combout\,
	devoe => ww_devoe,
	o => \HEX1S[4]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\HEX1S[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|ss[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX1S[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\HEX1S[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|ss[2]~4_combout\,
	devoe => ww_devoe,
	o => \HEX1S[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\HEX1S[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|ss[1]~5_combout\,
	devoe => ww_devoe,
	o => \HEX1S[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\HEX1S[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|ALT_INV_ss[0]~6_combout\,
	devoe => ww_devoe,
	o => \HEX1S[0]~output_o\);

-- Location: IOOBUF_X32_Y29_N30
\HEX2S[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|ss[6]~0_combout\,
	devoe => ww_devoe,
	o => \HEX2S[6]~output_o\);

-- Location: IOOBUF_X30_Y29_N30
\HEX2S[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|ss[5]~1_combout\,
	devoe => ww_devoe,
	o => \HEX2S[5]~output_o\);

-- Location: IOOBUF_X28_Y29_N2
\HEX2S[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|ALT_INV_ss[4]~2_combout\,
	devoe => ww_devoe,
	o => \HEX2S[4]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\HEX2S[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|ss[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX2S[3]~output_o\);

-- Location: IOOBUF_X30_Y29_N16
\HEX2S[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|ss[2]~4_combout\,
	devoe => ww_devoe,
	o => \HEX2S[2]~output_o\);

-- Location: IOOBUF_X30_Y29_N23
\HEX2S[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|ss[1]~5_combout\,
	devoe => ww_devoe,
	o => \HEX2S[1]~output_o\);

-- Location: IOOBUF_X37_Y29_N2
\HEX2S[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|ALT_INV_ss[0]~6_combout\,
	devoe => ww_devoe,
	o => \HEX2S[0]~output_o\);

-- Location: IOOBUF_X32_Y29_N23
\HEX3S[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|ss[6]~0_combout\,
	devoe => ww_devoe,
	o => \HEX3S[6]~output_o\);

-- Location: IOOBUF_X39_Y29_N16
\HEX3S[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|ss[5]~1_combout\,
	devoe => ww_devoe,
	o => \HEX3S[5]~output_o\);

-- Location: IOOBUF_X32_Y29_N9
\HEX3S[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|ALT_INV_ss[4]~2_combout\,
	devoe => ww_devoe,
	o => \HEX3S[4]~output_o\);

-- Location: IOOBUF_X32_Y29_N2
\HEX3S[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|ss[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX3S[3]~output_o\);

-- Location: IOOBUF_X37_Y29_N23
\HEX3S[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|ss[2]~4_combout\,
	devoe => ww_devoe,
	o => \HEX3S[2]~output_o\);

-- Location: IOOBUF_X37_Y29_N30
\HEX3S[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|ss[1]~5_combout\,
	devoe => ww_devoe,
	o => \HEX3S[1]~output_o\);

-- Location: IOOBUF_X39_Y29_N30
\HEX3S[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|ALT_INV_ss[0]~6_combout\,
	devoe => ww_devoe,
	o => \HEX3S[0]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\led[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst13~q\,
	devoe => ww_devoe,
	o => \led[9]~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\led[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst11~q\,
	devoe => ww_devoe,
	o => \led[8]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\led[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst10~q\,
	devoe => ww_devoe,
	o => \led[7]~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\led[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst9~q\,
	devoe => ww_devoe,
	o => \led[6]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\led[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst8~q\,
	devoe => ww_devoe,
	o => \led[5]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\led[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst21~q\,
	devoe => ww_devoe,
	o => \led[4]~output_o\);

-- Location: LCCOMB_X22_Y17_N2
\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit[1]~feeder_combout\ = \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita1~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita1~combout\,
	combout => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit[1]~feeder_combout\);

-- Location: LCCOMB_X24_Y27_N8
\~GND\ : cycloneiii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: IOIBUF_X0_Y23_N15
\STOPPER_RESET~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_STOPPER_RESET,
	o => \STOPPER_RESET~input_o\);

-- Location: IOIBUF_X0_Y21_N8
\GAME_START~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GAME_START,
	o => \GAME_START~input_o\);

-- Location: LCCOMB_X5_Y23_N18
\inst8|inst49|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst49|inst~0_combout\ = !\GAME_START~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GAME_START~input_o\,
	combout => \inst8|inst49|inst~0_combout\);

-- Location: FF_X5_Y23_N19
\inst8|inst49|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \STOPPER_CLK~inputclkctrl_outclk\,
	d => \inst8|inst49|inst~0_combout\,
	clrn => \STOPPER_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst49|inst~q\);

-- Location: FF_X1_Y22_N21
\inst8|inst49|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \STOPPER_CLK~input_o\,
	asdata => \inst8|inst49|inst~q\,
	clrn => \STOPPER_RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst49|inst7~q\);

-- Location: IOIBUF_X0_Y23_N8
\SW[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\SW[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\SW[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: LCCOMB_X5_Y23_N28
\inst8|inst~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst~1_combout\ = (\SW[1]~input_o\ & (\SW[3]~input_o\ & (\SW[0]~input_o\ & \SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst8|inst~1_combout\);

-- Location: IOIBUF_X0_Y25_N15
\SW[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\SW[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\SW[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: LCCOMB_X5_Y23_N10
\inst8|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst~0_combout\ = (!\SW[7]~input_o\ & (!\SW[6]~input_o\ & (!\SW[4]~input_o\ & !\SW[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[5]~input_o\,
	combout => \inst8|inst~0_combout\);

-- Location: LCCOMB_X5_Y23_N30
\inst8|inst\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst~combout\ = (\inst8|inst~1_combout\ & \inst8|inst~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst~1_combout\,
	datad => \inst8|inst~0_combout\,
	combout => \inst8|inst~combout\);

-- Location: FF_X5_Y23_N31
\inst8|inst92|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \STOPPER_CLK~inputclkctrl_outclk\,
	d => \inst8|inst~combout\,
	clrn => \STOPPER_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst92|inst~q\);

-- Location: FF_X1_Y22_N13
\inst8|inst92|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \STOPPER_CLK~input_o\,
	asdata => \inst8|inst92|inst~q\,
	clrn => \STOPPER_RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst92|inst7~q\);

-- Location: LCCOMB_X1_Y22_N12
\inst8|inst92|inst1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst92|inst1~combout\ = LCELL((\inst8|inst92|inst~q\ & !\inst8|inst92|inst7~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst92|inst~q\,
	datac => \inst8|inst92|inst7~q\,
	combout => \inst8|inst92|inst1~combout\);

-- Location: LCCOMB_X1_Y22_N20
\inst8|inst45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst45~combout\ = LCELL((\inst8|inst92|inst1~combout\) # ((\inst8|inst49|inst~q\ & !\inst8|inst49|inst7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst49|inst~q\,
	datac => \inst8|inst49|inst7~q\,
	datad => \inst8|inst92|inst1~combout\,
	combout => \inst8|inst45~combout\);

-- Location: LCCOMB_X1_Y22_N22
\inst8|inst25~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst25~0_combout\ = \inst8|inst25~q\ $ (\inst8|inst45~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|inst25~q\,
	datad => \inst8|inst45~combout\,
	combout => \inst8|inst25~0_combout\);

-- Location: FF_X1_Y22_N23
\inst8|inst25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst45~combout\,
	d => \inst8|inst25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst25~q\);

-- Location: LCCOMB_X22_Y17_N0
\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit[25]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit[25]~0_combout\ = (\inst3|inst|lpm_counter_component|auto_generated|cout_actual~combout\) # (!\inst8|inst25~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst|lpm_counter_component|auto_generated|cout_actual~combout\,
	datad => \inst8|inst25~q\,
	combout => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit[25]~0_combout\);

-- Location: FF_X22_Y17_N3
\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \STOPPER_CLK~input_o\,
	d => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit[1]~feeder_combout\,
	asdata => \~GND~combout\,
	clrn => \STOPPER_RESET~input_o\,
	sload => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X20_Y18_N30
\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit[0]~feeder_combout\ = \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita0~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita0~combout\,
	combout => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit[0]~feeder_combout\);

-- Location: FF_X20_Y18_N31
\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \STOPPER_CLK~inputclkctrl_outclk\,
	d => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit[0]~feeder_combout\,
	asdata => \~GND~combout\,
	clrn => \STOPPER_RESET~input_o\,
	sload => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X22_Y17_N10
\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita2~combout\ = (\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(2) & (\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(2) & (!\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(2) & !\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita2~combout\,
	cout => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCCOMB_X22_Y17_N12
\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita3~combout\ = (\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(3) & (!\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\)) # 
-- (!\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(3) & ((\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\) # (!\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(3),
	datad => VCC,
	cin => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita3~combout\,
	cout => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita3~COUT\);

-- Location: LCCOMB_X22_Y17_N14
\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita4~combout\ = (\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(4) & (\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita3~COUT\ $ (GND))) # 
-- (!\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(4) & (!\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita3~COUT\ & VCC))
-- \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita4~COUT\ = CARRY((\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(4) & !\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(4),
	datad => VCC,
	cin => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita3~COUT\,
	combout => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita4~combout\,
	cout => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita4~COUT\);

-- Location: FF_X22_Y17_N15
\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \STOPPER_CLK~input_o\,
	d => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita4~combout\,
	asdata => \~GND~combout\,
	clrn => \STOPPER_RESET~input_o\,
	sload => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(4));

-- Location: LCCOMB_X22_Y17_N16
\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita5~combout\ = (\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(5) & (!\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita4~COUT\)) # 
-- (!\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(5) & ((\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita4~COUT\) # (GND)))
-- \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita5~COUT\ = CARRY((!\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita4~COUT\) # (!\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(5),
	datad => VCC,
	cin => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita4~COUT\,
	combout => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita5~combout\,
	cout => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita5~COUT\);

-- Location: FF_X22_Y17_N17
\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \STOPPER_CLK~input_o\,
	d => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita5~combout\,
	asdata => \~GND~combout\,
	clrn => \STOPPER_RESET~input_o\,
	sload => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(5));

-- Location: LCCOMB_X22_Y17_N18
\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita6~combout\ = (\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(6) & (\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita5~COUT\ $ (GND))) # 
-- (!\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(6) & (!\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita5~COUT\ & VCC))
-- \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita6~COUT\ = CARRY((\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(6) & !\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(6),
	datad => VCC,
	cin => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita5~COUT\,
	combout => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita6~combout\,
	cout => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita6~COUT\);

-- Location: FF_X22_Y17_N19
\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \STOPPER_CLK~input_o\,
	d => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita6~combout\,
	asdata => \~GND~combout\,
	clrn => \STOPPER_RESET~input_o\,
	sload => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(6));

-- Location: LCCOMB_X22_Y17_N20
\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita7~combout\ = (\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(7) & (!\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita6~COUT\)) # 
-- (!\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(7) & ((\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita6~COUT\) # (GND)))
-- \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita7~COUT\ = CARRY((!\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita6~COUT\) # (!\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(7),
	datad => VCC,
	cin => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita6~COUT\,
	combout => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita7~combout\,
	cout => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita7~COUT\);

-- Location: FF_X22_Y17_N21
\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \STOPPER_CLK~input_o\,
	d => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita7~combout\,
	asdata => \~GND~combout\,
	clrn => \STOPPER_RESET~input_o\,
	sload => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(7));

-- Location: LCCOMB_X22_Y17_N24
\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita9~combout\ = (\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(9) & (!\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita8~COUT\)) # 
-- (!\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(9) & ((\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita8~COUT\) # (GND)))
-- \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita9~COUT\ = CARRY((!\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita8~COUT\) # (!\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(9),
	datad => VCC,
	cin => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita8~COUT\,
	combout => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita9~combout\,
	cout => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita9~COUT\);

-- Location: FF_X22_Y17_N25
\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \STOPPER_CLK~input_o\,
	d => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita9~combout\,
	asdata => \~GND~combout\,
	clrn => \STOPPER_RESET~input_o\,
	sload => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(9));

-- Location: LCCOMB_X22_Y17_N26
\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita10~combout\ = (\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(10) & (\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita9~COUT\ $ (GND))) # 
-- (!\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(10) & (!\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita9~COUT\ & VCC))
-- \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita10~COUT\ = CARRY((\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(10) & !\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita9~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(10),
	datad => VCC,
	cin => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita9~COUT\,
	combout => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita10~combout\,
	cout => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita10~COUT\);

-- Location: LCCOMB_X22_Y17_N28
\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita11~combout\ = (\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(11) & (!\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita10~COUT\)) # 
-- (!\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(11) & ((\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita10~COUT\) # (GND)))
-- \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita11~COUT\ = CARRY((!\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita10~COUT\) # (!\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(11),
	datad => VCC,
	cin => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita10~COUT\,
	combout => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita11~combout\,
	cout => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita11~COUT\);

-- Location: FF_X22_Y17_N29
\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \STOPPER_CLK~input_o\,
	d => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita11~combout\,
	asdata => \~GND~combout\,
	clrn => \STOPPER_RESET~input_o\,
	sload => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(11));

-- Location: LCCOMB_X22_Y17_N30
\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita12~combout\ = (\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(12) & (\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita11~COUT\ $ (GND))) # 
-- (!\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(12) & (!\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita11~COUT\ & VCC))
-- \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita12~COUT\ = CARRY((\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(12) & !\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita11~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(12),
	datad => VCC,
	cin => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita11~COUT\,
	combout => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita12~combout\,
	cout => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita12~COUT\);

-- Location: FF_X22_Y17_N31
\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \STOPPER_CLK~input_o\,
	d => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita12~combout\,
	asdata => \~GND~combout\,
	clrn => \STOPPER_RESET~input_o\,
	sload => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(12));

-- Location: LCCOMB_X22_Y16_N0
\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita13~combout\ = (\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(13) & (!\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita12~COUT\)) # 
-- (!\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(13) & ((\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita12~COUT\) # (GND)))
-- \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita13~COUT\ = CARRY((!\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita12~COUT\) # (!\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(13),
	datad => VCC,
	cin => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita12~COUT\,
	combout => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita13~combout\,
	cout => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita13~COUT\);

-- Location: FF_X22_Y16_N1
\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \STOPPER_CLK~input_o\,
	d => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita13~combout\,
	asdata => \~GND~combout\,
	clrn => \STOPPER_RESET~input_o\,
	sload => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(13));

-- Location: FF_X22_Y17_N27
\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \STOPPER_CLK~input_o\,
	d => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita10~combout\,
	asdata => \~GND~combout\,
	clrn => \STOPPER_RESET~input_o\,
	sload => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(10));

-- Location: LCCOMB_X22_Y15_N0
\inst3|inst|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~3_combout\ = (!\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(11) & (\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(12) & 
-- (\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(13) & !\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(11),
	datab => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(12),
	datac => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(13),
	datad => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(10),
	combout => \inst3|inst|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~3_combout\);

-- Location: LCCOMB_X22_Y16_N2
\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita14~combout\ = (\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(14) & (\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita13~COUT\ $ (GND))) # 
-- (!\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(14) & (!\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita13~COUT\ & VCC))
-- \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita14~COUT\ = CARRY((\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(14) & !\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita13~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(14),
	datad => VCC,
	cin => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita13~COUT\,
	combout => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita14~combout\,
	cout => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita14~COUT\);

-- Location: FF_X22_Y16_N3
\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \STOPPER_CLK~input_o\,
	d => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita14~combout\,
	asdata => \~GND~combout\,
	clrn => \STOPPER_RESET~input_o\,
	sload => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(14));

-- Location: LCCOMB_X22_Y16_N4
\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita15~combout\ = (\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(15) & (!\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita14~COUT\)) # 
-- (!\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(15) & ((\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita14~COUT\) # (GND)))
-- \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita15~COUT\ = CARRY((!\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita14~COUT\) # (!\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(15),
	datad => VCC,
	cin => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita14~COUT\,
	combout => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita15~combout\,
	cout => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita15~COUT\);

-- Location: FF_X22_Y16_N5
\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \STOPPER_CLK~input_o\,
	d => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita15~combout\,
	asdata => \~GND~combout\,
	clrn => \STOPPER_RESET~input_o\,
	sload => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(15));

-- Location: LCCOMB_X22_Y16_N8
\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita17~combout\ = (\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(17) & (!\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita16~COUT\)) # 
-- (!\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(17) & ((\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita16~COUT\) # (GND)))
-- \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita17~COUT\ = CARRY((!\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita16~COUT\) # (!\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(17),
	datad => VCC,
	cin => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita16~COUT\,
	combout => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita17~combout\,
	cout => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita17~COUT\);

-- Location: FF_X22_Y16_N9
\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \STOPPER_CLK~input_o\,
	d => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita17~combout\,
	asdata => \~GND~combout\,
	clrn => \STOPPER_RESET~input_o\,
	sload => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(17));

-- Location: LCCOMB_X22_Y16_N14
\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita20~combout\ = (\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(20) & (\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita19~COUT\ $ (GND))) # 
-- (!\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(20) & (!\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita19~COUT\ & VCC))
-- \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita20~COUT\ = CARRY((\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(20) & !\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita19~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(20),
	datad => VCC,
	cin => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita19~COUT\,
	combout => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita20~combout\,
	cout => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita20~COUT\);

-- Location: FF_X22_Y16_N15
\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \STOPPER_CLK~input_o\,
	d => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita20~combout\,
	asdata => \~GND~combout\,
	clrn => \STOPPER_RESET~input_o\,
	sload => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(20));

-- Location: LCCOMB_X22_Y16_N16
\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita21~combout\ = (\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(21) & (!\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita20~COUT\)) # 
-- (!\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(21) & ((\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita20~COUT\) # (GND)))
-- \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita21~COUT\ = CARRY((!\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita20~COUT\) # (!\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(21),
	datad => VCC,
	cin => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita20~COUT\,
	combout => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita21~combout\,
	cout => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita21~COUT\);

-- Location: FF_X22_Y16_N17
\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \STOPPER_CLK~input_o\,
	d => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita21~combout\,
	asdata => \~GND~combout\,
	clrn => \STOPPER_RESET~input_o\,
	sload => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(21));

-- Location: LCCOMB_X22_Y16_N18
\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita22~combout\ = (\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(22) & (\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita21~COUT\ $ (GND))) # 
-- (!\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(22) & (!\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita21~COUT\ & VCC))
-- \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita22~COUT\ = CARRY((\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(22) & !\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita21~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(22),
	datad => VCC,
	cin => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita21~COUT\,
	combout => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita22~combout\,
	cout => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita22~COUT\);

-- Location: FF_X22_Y16_N19
\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \STOPPER_CLK~input_o\,
	d => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita22~combout\,
	asdata => \~GND~combout\,
	clrn => \STOPPER_RESET~input_o\,
	sload => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(22));

-- Location: LCCOMB_X22_Y16_N20
\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita23~combout\ = (\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(23) & (!\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita22~COUT\)) # 
-- (!\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(23) & ((\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita22~COUT\) # (GND)))
-- \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita23~COUT\ = CARRY((!\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita22~COUT\) # (!\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(23),
	datad => VCC,
	cin => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita22~COUT\,
	combout => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita23~combout\,
	cout => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita23~COUT\);

-- Location: FF_X22_Y16_N21
\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \STOPPER_CLK~input_o\,
	d => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita23~combout\,
	asdata => \~GND~combout\,
	clrn => \STOPPER_RESET~input_o\,
	sload => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(23));

-- Location: LCCOMB_X22_Y16_N22
\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita24~combout\ = (\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(24) & (\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita23~COUT\ $ (GND))) # 
-- (!\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(24) & (!\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita23~COUT\ & VCC))
-- \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita24~COUT\ = CARRY((\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(24) & !\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita23~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(24),
	datad => VCC,
	cin => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita23~COUT\,
	combout => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita24~combout\,
	cout => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita24~COUT\);

-- Location: FF_X22_Y16_N23
\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \STOPPER_CLK~input_o\,
	d => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita24~combout\,
	asdata => \~GND~combout\,
	clrn => \STOPPER_RESET~input_o\,
	sload => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(24));

-- Location: LCCOMB_X22_Y15_N4
\inst3|inst|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ = (\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(25) & (\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(23) & 
-- (!\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(24) & \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(25),
	datab => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(23),
	datac => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(24),
	datad => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(22),
	combout => \inst3|inst|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\);

-- Location: LCCOMB_X22_Y16_N28
\inst3|inst|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~2_combout\ = (!\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(16) & (\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(17) & 
-- (\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(15) & \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(16),
	datab => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(17),
	datac => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(15),
	datad => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(14),
	combout => \inst3|inst|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~2_combout\);

-- Location: LCCOMB_X22_Y15_N18
\inst3|inst|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~4_combout\ = (\inst3|inst|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\ & 
-- (\inst3|inst|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~3_combout\ & (\inst3|inst|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ & 
-- \inst3|inst|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\,
	datab => \inst3|inst|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~3_combout\,
	datac => \inst3|inst|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\,
	datad => \inst3|inst|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~2_combout\,
	combout => \inst3|inst|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~4_combout\);

-- Location: FF_X22_Y17_N11
\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \STOPPER_CLK~input_o\,
	d => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita2~combout\,
	asdata => \~GND~combout\,
	clrn => \STOPPER_RESET~input_o\,
	sload => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(2));

-- Location: FF_X22_Y17_N13
\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \STOPPER_CLK~input_o\,
	d => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita3~combout\,
	asdata => \~GND~combout\,
	clrn => \STOPPER_RESET~input_o\,
	sload => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X20_Y18_N8
\inst3|inst|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~6_combout\ = (\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(5) & (\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(2) & 
-- (\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(3) & \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(5),
	datab => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(2),
	datac => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(3),
	datad => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(4),
	combout => \inst3|inst|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~6_combout\);

-- Location: LCCOMB_X20_Y18_N26
\inst3|inst|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~7_combout\ = (\inst3|inst|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~5_combout\ & (\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(0) & 
-- (\inst3|inst|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~6_combout\ & \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~5_combout\,
	datab => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(0),
	datac => \inst3|inst|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~6_combout\,
	datad => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(1),
	combout => \inst3|inst|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~7_combout\);

-- Location: LCCOMB_X22_Y16_N24
\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita25~combout\ = (\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(25) & (!\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita24~COUT\)) # 
-- (!\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(25) & ((\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita24~COUT\) # (GND)))
-- \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita25~COUT\ = CARRY((!\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita24~COUT\) # (!\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(25),
	datad => VCC,
	cin => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita24~COUT\,
	combout => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita25~combout\,
	cout => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita25~COUT\);

-- Location: FF_X22_Y16_N25
\inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \STOPPER_CLK~input_o\,
	d => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita25~combout\,
	asdata => \~GND~combout\,
	clrn => \STOPPER_RESET~input_o\,
	sload => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|lpm_counter_component|auto_generated|counter_reg_bit\(25));

-- Location: LCCOMB_X22_Y16_N26
\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita25~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita25~0_combout\ = !\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita25~COUT\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita25~COUT\,
	combout => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita25~0_combout\);

-- Location: LCCOMB_X22_Y17_N4
\inst3|inst|lpm_counter_component|auto_generated|cout_actual\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst|lpm_counter_component|auto_generated|cout_actual~combout\ = LCELL((\inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita25~0_combout\) # ((\inst3|inst|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~4_combout\ & 
-- \inst3|inst|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~4_combout\,
	datac => \inst3|inst|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~7_combout\,
	datad => \inst3|inst|lpm_counter_component|auto_generated|counter_comb_bita25~0_combout\,
	combout => \inst3|inst|lpm_counter_component|auto_generated|cout_actual~combout\);

-- Location: IOIBUF_X0_Y26_N1
\STOPPER_SEL~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_STOPPER_SEL,
	o => \STOPPER_SEL~input_o\);

-- Location: LCCOMB_X24_Y27_N18
\inst|inst|lpm_counter_component|auto_generated|counter_comb_bita0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|lpm_counter_component|auto_generated|counter_comb_bita0~combout\ = \inst|inst|lpm_counter_component|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \inst|inst|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst|inst|lpm_counter_component|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|lpm_counter_component|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \inst|inst|lpm_counter_component|auto_generated|counter_comb_bita0~combout\,
	cout => \inst|inst|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X24_Y27_N20
\inst|inst|lpm_counter_component|auto_generated|counter_comb_bita1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|lpm_counter_component|auto_generated|counter_comb_bita1~combout\ = (\inst|inst|lpm_counter_component|auto_generated|counter_reg_bit\(1) & (!\inst|inst|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\inst|inst|lpm_counter_component|auto_generated|counter_reg_bit\(1) & ((\inst|inst|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \inst|inst|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\inst|inst|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\) # (!\inst|inst|lpm_counter_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|lpm_counter_component|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \inst|inst|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst|inst|lpm_counter_component|auto_generated|counter_comb_bita1~combout\,
	cout => \inst|inst|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: FF_X24_Y27_N21
\inst|inst|lpm_counter_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst|lpm_counter_component|auto_generated|cout_actual~clkctrl_outclk\,
	d => \inst|inst|lpm_counter_component|auto_generated|counter_comb_bita1~combout\,
	asdata => \~GND~combout\,
	clrn => \STOPPER_RESET~input_o\,
	sload => \inst|inst|lpm_counter_component|auto_generated|cout_actual~combout\,
	ena => \inst8|inst25~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|lpm_counter_component|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X24_Y27_N22
\inst|inst|lpm_counter_component|auto_generated|counter_comb_bita2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|lpm_counter_component|auto_generated|counter_comb_bita2~combout\ = (\inst|inst|lpm_counter_component|auto_generated|counter_reg_bit\(2) & (\inst|inst|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\inst|inst|lpm_counter_component|auto_generated|counter_reg_bit\(2) & (!\inst|inst|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \inst|inst|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\inst|inst|lpm_counter_component|auto_generated|counter_reg_bit\(2) & !\inst|inst|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|lpm_counter_component|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \inst|inst|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \inst|inst|lpm_counter_component|auto_generated|counter_comb_bita2~combout\,
	cout => \inst|inst|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: FF_X24_Y27_N23
\inst|inst|lpm_counter_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst|lpm_counter_component|auto_generated|cout_actual~clkctrl_outclk\,
	d => \inst|inst|lpm_counter_component|auto_generated|counter_comb_bita2~combout\,
	asdata => \~GND~combout\,
	clrn => \STOPPER_RESET~input_o\,
	sload => \inst|inst|lpm_counter_component|auto_generated|cout_actual~combout\,
	ena => \inst8|inst25~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|lpm_counter_component|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X24_Y27_N24
\inst|inst|lpm_counter_component|auto_generated|counter_comb_bita3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|lpm_counter_component|auto_generated|counter_comb_bita3~combout\ = (\inst|inst|lpm_counter_component|auto_generated|counter_reg_bit\(3) & (!\inst|inst|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\)) # 
-- (!\inst|inst|lpm_counter_component|auto_generated|counter_reg_bit\(3) & ((\inst|inst|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \inst|inst|lpm_counter_component|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\inst|inst|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\) # (!\inst|inst|lpm_counter_component|auto_generated|counter_reg_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|lpm_counter_component|auto_generated|counter_reg_bit\(3),
	datad => VCC,
	cin => \inst|inst|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \inst|inst|lpm_counter_component|auto_generated|counter_comb_bita3~combout\,
	cout => \inst|inst|lpm_counter_component|auto_generated|counter_comb_bita3~COUT\);

-- Location: FF_X24_Y27_N25
\inst|inst|lpm_counter_component|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst|lpm_counter_component|auto_generated|cout_actual~clkctrl_outclk\,
	d => \inst|inst|lpm_counter_component|auto_generated|counter_comb_bita3~combout\,
	asdata => \~GND~combout\,
	clrn => \STOPPER_RESET~input_o\,
	sload => \inst|inst|lpm_counter_component|auto_generated|cout_actual~combout\,
	ena => \inst8|inst25~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|lpm_counter_component|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X24_Y27_N4
\inst|inst|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ = (\inst|inst|lpm_counter_component|auto_generated|counter_reg_bit\(0) & (!\inst|inst|lpm_counter_component|auto_generated|counter_reg_bit\(2) & 
-- (\inst|inst|lpm_counter_component|auto_generated|counter_reg_bit\(3) & !\inst|inst|lpm_counter_component|auto_generated|counter_reg_bit\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|lpm_counter_component|auto_generated|counter_reg_bit\(0),
	datab => \inst|inst|lpm_counter_component|auto_generated|counter_reg_bit\(2),
	datac => \inst|inst|lpm_counter_component|auto_generated|counter_reg_bit\(3),
	datad => \inst|inst|lpm_counter_component|auto_generated|counter_reg_bit\(1),
	combout => \inst|inst|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\);

-- Location: LCCOMB_X24_Y27_N26
\inst|inst|lpm_counter_component|auto_generated|counter_comb_bita3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|lpm_counter_component|auto_generated|counter_comb_bita3~0_combout\ = !\inst|inst|lpm_counter_component|auto_generated|counter_comb_bita3~COUT\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|inst|lpm_counter_component|auto_generated|counter_comb_bita3~COUT\,
	combout => \inst|inst|lpm_counter_component|auto_generated|counter_comb_bita3~0_combout\);

-- Location: LCCOMB_X24_Y27_N12
\inst|inst|lpm_counter_component|auto_generated|cout_actual\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|lpm_counter_component|auto_generated|cout_actual~combout\ = (\inst|inst|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\) # (\inst|inst|lpm_counter_component|auto_generated|counter_comb_bita3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\,
	datac => \inst|inst|lpm_counter_component|auto_generated|counter_comb_bita3~0_combout\,
	combout => \inst|inst|lpm_counter_component|auto_generated|cout_actual~combout\);

-- Location: FF_X24_Y27_N19
\inst|inst|lpm_counter_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst|lpm_counter_component|auto_generated|cout_actual~clkctrl_outclk\,
	d => \inst|inst|lpm_counter_component|auto_generated|counter_comb_bita0~combout\,
	asdata => \~GND~combout\,
	clrn => \STOPPER_RESET~input_o\,
	sload => \inst|inst|lpm_counter_component|auto_generated|cout_actual~combout\,
	ena => \inst8|inst25~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|lpm_counter_component|auto_generated|counter_reg_bit\(0));

-- Location: FF_X23_Y23_N5
\inst9|inst41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst92|inst1~clkctrl_outclk\,
	asdata => \inst|inst|lpm_counter_component|auto_generated|counter_reg_bit\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst41~q\);

-- Location: LCCOMB_X23_Y23_N4
\inst25|inst|inst5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst25|inst|inst5~0_combout\ = (\STOPPER_SEL~input_o\ & ((\inst9|inst41~q\))) # (!\STOPPER_SEL~input_o\ & (\inst|inst|lpm_counter_component|auto_generated|counter_reg_bit\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|lpm_counter_component|auto_generated|counter_reg_bit\(0),
	datab => \STOPPER_SEL~input_o\,
	datac => \inst9|inst41~q\,
	combout => \inst25|inst|inst5~0_combout\);

-- Location: FF_X23_Y23_N23
\inst9|inst44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst92|inst1~clkctrl_outclk\,
	asdata => \inst|inst|lpm_counter_component|auto_generated|counter_reg_bit\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst44~q\);

-- Location: LCCOMB_X23_Y23_N22
\inst25|inst3|inst5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst25|inst3|inst5~0_combout\ = (\STOPPER_SEL~input_o\ & ((\inst9|inst44~q\))) # (!\STOPPER_SEL~input_o\ & (\inst|inst|lpm_counter_component|auto_generated|counter_reg_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|lpm_counter_component|auto_generated|counter_reg_bit\(3),
	datab => \STOPPER_SEL~input_o\,
	datac => \inst9|inst44~q\,
	combout => \inst25|inst3|inst5~0_combout\);

-- Location: FF_X23_Y23_N25
\inst9|inst43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst92|inst1~clkctrl_outclk\,
	asdata => \inst|inst|lpm_counter_component|auto_generated|counter_reg_bit\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst43~q\);

-- Location: LCCOMB_X23_Y23_N24
\inst25|inst2|inst5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst25|inst2|inst5~0_combout\ = (\STOPPER_SEL~input_o\ & ((\inst9|inst43~q\))) # (!\STOPPER_SEL~input_o\ & (\inst|inst|lpm_counter_component|auto_generated|counter_reg_bit\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|lpm_counter_component|auto_generated|counter_reg_bit\(2),
	datab => \STOPPER_SEL~input_o\,
	datac => \inst9|inst43~q\,
	combout => \inst25|inst2|inst5~0_combout\);

-- Location: FF_X23_Y23_N3
\inst9|inst42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst92|inst1~clkctrl_outclk\,
	asdata => \inst|inst|lpm_counter_component|auto_generated|counter_reg_bit\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst42~q\);

-- Location: LCCOMB_X23_Y23_N2
\inst25|inst1|inst5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst25|inst1|inst5~0_combout\ = (\STOPPER_SEL~input_o\ & ((\inst9|inst42~q\))) # (!\STOPPER_SEL~input_o\ & (\inst|inst|lpm_counter_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|lpm_counter_component|auto_generated|counter_reg_bit\(1),
	datab => \STOPPER_SEL~input_o\,
	datac => \inst9|inst42~q\,
	combout => \inst25|inst1|inst5~0_combout\);

-- Location: LCCOMB_X24_Y28_N24
\inst2|ss[6]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|ss[6]~0_combout\ = (\inst25|inst3|inst5~0_combout\ & (\inst25|inst|inst5~0_combout\ & (\inst25|inst2|inst5~0_combout\ $ (\inst25|inst1|inst5~0_combout\)))) # (!\inst25|inst3|inst5~0_combout\ & (!\inst25|inst1|inst5~0_combout\ & 
-- (\inst25|inst|inst5~0_combout\ $ (\inst25|inst2|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst|inst5~0_combout\,
	datab => \inst25|inst3|inst5~0_combout\,
	datac => \inst25|inst2|inst5~0_combout\,
	datad => \inst25|inst1|inst5~0_combout\,
	combout => \inst2|ss[6]~0_combout\);

-- Location: LCCOMB_X24_Y28_N26
\inst2|ss[5]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|ss[5]~1_combout\ = (\inst25|inst3|inst5~0_combout\ & ((\inst25|inst|inst5~0_combout\ & ((\inst25|inst1|inst5~0_combout\))) # (!\inst25|inst|inst5~0_combout\ & (\inst25|inst2|inst5~0_combout\)))) # (!\inst25|inst3|inst5~0_combout\ & 
-- (\inst25|inst2|inst5~0_combout\ & (\inst25|inst|inst5~0_combout\ $ (\inst25|inst1|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst|inst5~0_combout\,
	datab => \inst25|inst3|inst5~0_combout\,
	datac => \inst25|inst2|inst5~0_combout\,
	datad => \inst25|inst1|inst5~0_combout\,
	combout => \inst2|ss[5]~1_combout\);

-- Location: LCCOMB_X24_Y28_N20
\inst2|ss[4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|ss[4]~2_combout\ = (\inst25|inst3|inst5~0_combout\ & (((\inst25|inst|inst5~0_combout\ & !\inst25|inst1|inst5~0_combout\)) # (!\inst25|inst2|inst5~0_combout\))) # (!\inst25|inst3|inst5~0_combout\ & ((\inst25|inst|inst5~0_combout\) # 
-- ((\inst25|inst2|inst5~0_combout\) # (!\inst25|inst1|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst|inst5~0_combout\,
	datab => \inst25|inst3|inst5~0_combout\,
	datac => \inst25|inst2|inst5~0_combout\,
	datad => \inst25|inst1|inst5~0_combout\,
	combout => \inst2|ss[4]~2_combout\);

-- Location: LCCOMB_X24_Y28_N6
\inst2|ss[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|ss[3]~3_combout\ = (\inst25|inst1|inst5~0_combout\ & ((\inst25|inst|inst5~0_combout\ & ((\inst25|inst2|inst5~0_combout\))) # (!\inst25|inst|inst5~0_combout\ & (\inst25|inst3|inst5~0_combout\ & !\inst25|inst2|inst5~0_combout\)))) # 
-- (!\inst25|inst1|inst5~0_combout\ & (!\inst25|inst3|inst5~0_combout\ & (\inst25|inst|inst5~0_combout\ $ (\inst25|inst2|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst|inst5~0_combout\,
	datab => \inst25|inst3|inst5~0_combout\,
	datac => \inst25|inst2|inst5~0_combout\,
	datad => \inst25|inst1|inst5~0_combout\,
	combout => \inst2|ss[3]~3_combout\);

-- Location: LCCOMB_X24_Y28_N8
\inst2|ss[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|ss[2]~4_combout\ = (\inst25|inst1|inst5~0_combout\ & (\inst25|inst|inst5~0_combout\ & (!\inst25|inst3|inst5~0_combout\))) # (!\inst25|inst1|inst5~0_combout\ & ((\inst25|inst2|inst5~0_combout\ & ((!\inst25|inst3|inst5~0_combout\))) # 
-- (!\inst25|inst2|inst5~0_combout\ & (\inst25|inst|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst|inst5~0_combout\,
	datab => \inst25|inst3|inst5~0_combout\,
	datac => \inst25|inst2|inst5~0_combout\,
	datad => \inst25|inst1|inst5~0_combout\,
	combout => \inst2|ss[2]~4_combout\);

-- Location: LCCOMB_X24_Y28_N10
\inst2|ss[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|ss[1]~5_combout\ = (\inst25|inst|inst5~0_combout\ & (\inst25|inst3|inst5~0_combout\ $ (((\inst25|inst1|inst5~0_combout\) # (!\inst25|inst2|inst5~0_combout\))))) # (!\inst25|inst|inst5~0_combout\ & (!\inst25|inst3|inst5~0_combout\ & 
-- (!\inst25|inst2|inst5~0_combout\ & \inst25|inst1|inst5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst|inst5~0_combout\,
	datab => \inst25|inst3|inst5~0_combout\,
	datac => \inst25|inst2|inst5~0_combout\,
	datad => \inst25|inst1|inst5~0_combout\,
	combout => \inst2|ss[1]~5_combout\);

-- Location: LCCOMB_X24_Y28_N12
\inst2|ss[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|ss[0]~6_combout\ = (\inst25|inst|inst5~0_combout\ & ((\inst25|inst3|inst5~0_combout\) # (\inst25|inst2|inst5~0_combout\ $ (\inst25|inst1|inst5~0_combout\)))) # (!\inst25|inst|inst5~0_combout\ & ((\inst25|inst1|inst5~0_combout\) # 
-- (\inst25|inst3|inst5~0_combout\ $ (\inst25|inst2|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst|inst5~0_combout\,
	datab => \inst25|inst3|inst5~0_combout\,
	datac => \inst25|inst2|inst5~0_combout\,
	datad => \inst25|inst1|inst5~0_combout\,
	combout => \inst2|ss[0]~6_combout\);

-- Location: LCCOMB_X23_Y27_N10
\inst|inst3|lpm_counter_component|auto_generated|counter_comb_bita0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst3|lpm_counter_component|auto_generated|counter_comb_bita0~combout\ = \inst|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \inst|inst3|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \inst|inst3|lpm_counter_component|auto_generated|counter_comb_bita0~combout\,
	cout => \inst|inst3|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X23_Y27_N12
\inst|inst3|lpm_counter_component|auto_generated|counter_comb_bita1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst3|lpm_counter_component|auto_generated|counter_comb_bita1~combout\ = (\inst|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(1) & (!\inst|inst3|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\inst|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(1) & ((\inst|inst3|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \inst|inst3|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\inst|inst3|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\) # (!\inst|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \inst|inst3|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst|inst3|lpm_counter_component|auto_generated|counter_comb_bita1~combout\,
	cout => \inst|inst3|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCCOMB_X23_Y27_N14
\inst|inst3|lpm_counter_component|auto_generated|counter_comb_bita2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst3|lpm_counter_component|auto_generated|counter_comb_bita2~combout\ = (\inst|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(2) & (\inst|inst3|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\inst|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(2) & (!\inst|inst3|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \inst|inst3|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\inst|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(2) & !\inst|inst3|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \inst|inst3|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \inst|inst3|lpm_counter_component|auto_generated|counter_comb_bita2~combout\,
	cout => \inst|inst3|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCCOMB_X23_Y27_N16
\inst|inst3|lpm_counter_component|auto_generated|counter_comb_bita3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst3|lpm_counter_component|auto_generated|counter_comb_bita3~combout\ = (\inst|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(3) & (!\inst|inst3|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\)) # 
-- (!\inst|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(3) & ((\inst|inst3|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \inst|inst3|lpm_counter_component|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\inst|inst3|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\) # (!\inst|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(3),
	datad => VCC,
	cin => \inst|inst3|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \inst|inst3|lpm_counter_component|auto_generated|counter_comb_bita3~combout\,
	cout => \inst|inst3|lpm_counter_component|auto_generated|counter_comb_bita3~COUT\);

-- Location: LCCOMB_X23_Y27_N18
\inst|inst3|lpm_counter_component|auto_generated|counter_comb_bita3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst3|lpm_counter_component|auto_generated|counter_comb_bita3~0_combout\ = !\inst|inst3|lpm_counter_component|auto_generated|counter_comb_bita3~COUT\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|inst3|lpm_counter_component|auto_generated|counter_comb_bita3~COUT\,
	combout => \inst|inst3|lpm_counter_component|auto_generated|counter_comb_bita3~0_combout\);

-- Location: LCCOMB_X24_Y27_N16
\inst|inst3|lpm_counter_component|auto_generated|cout_actual\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst3|lpm_counter_component|auto_generated|cout_actual~combout\ = (\inst|inst3|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\) # (\inst|inst3|lpm_counter_component|auto_generated|counter_comb_bita3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\,
	datad => \inst|inst3|lpm_counter_component|auto_generated|counter_comb_bita3~0_combout\,
	combout => \inst|inst3|lpm_counter_component|auto_generated|cout_actual~combout\);

-- Location: FF_X23_Y27_N11
\inst|inst3|lpm_counter_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst|lpm_counter_component|auto_generated|cout_actual~clkctrl_outclk\,
	d => \inst|inst3|lpm_counter_component|auto_generated|counter_comb_bita0~combout\,
	asdata => \~GND~combout\,
	clrn => \STOPPER_RESET~input_o\,
	sload => \inst|inst3|lpm_counter_component|auto_generated|cout_actual~combout\,
	ena => \inst|inst|lpm_counter_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(0));

-- Location: FF_X23_Y26_N27
\inst9|inst37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst92|inst1~clkctrl_outclk\,
	asdata => \inst|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst37~q\);

-- Location: LCCOMB_X23_Y26_N26
\inst25|inst4|inst5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst25|inst4|inst5~0_combout\ = (\STOPPER_SEL~input_o\ & ((\inst9|inst37~q\))) # (!\STOPPER_SEL~input_o\ & (\inst|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(0),
	datac => \inst9|inst37~q\,
	datad => \STOPPER_SEL~input_o\,
	combout => \inst25|inst4|inst5~0_combout\);

-- Location: FF_X23_Y27_N17
\inst|inst3|lpm_counter_component|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst|lpm_counter_component|auto_generated|cout_actual~clkctrl_outclk\,
	d => \inst|inst3|lpm_counter_component|auto_generated|counter_comb_bita3~combout\,
	asdata => \~GND~combout\,
	clrn => \STOPPER_RESET~input_o\,
	sload => \inst|inst3|lpm_counter_component|auto_generated|cout_actual~combout\,
	ena => \inst|inst|lpm_counter_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(3));

-- Location: FF_X23_Y26_N29
\inst9|inst40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst92|inst1~clkctrl_outclk\,
	asdata => \inst|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst40~q\);

-- Location: LCCOMB_X23_Y26_N28
\inst25|inst7|inst5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst25|inst7|inst5~0_combout\ = (\STOPPER_SEL~input_o\ & ((\inst9|inst40~q\))) # (!\STOPPER_SEL~input_o\ & (\inst|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(3),
	datac => \inst9|inst40~q\,
	datad => \STOPPER_SEL~input_o\,
	combout => \inst25|inst7|inst5~0_combout\);

-- Location: FF_X23_Y27_N15
\inst|inst3|lpm_counter_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst|lpm_counter_component|auto_generated|cout_actual~clkctrl_outclk\,
	d => \inst|inst3|lpm_counter_component|auto_generated|counter_comb_bita2~combout\,
	asdata => \~GND~combout\,
	clrn => \STOPPER_RESET~input_o\,
	sload => \inst|inst3|lpm_counter_component|auto_generated|cout_actual~combout\,
	ena => \inst|inst|lpm_counter_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(2));

-- Location: FF_X23_Y23_N1
\inst9|inst39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst92|inst1~clkctrl_outclk\,
	asdata => \inst|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst39~q\);

-- Location: LCCOMB_X23_Y23_N0
\inst25|inst6|inst5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst25|inst6|inst5~0_combout\ = (\STOPPER_SEL~input_o\ & ((\inst9|inst39~q\))) # (!\STOPPER_SEL~input_o\ & (\inst|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(2),
	datab => \STOPPER_SEL~input_o\,
	datac => \inst9|inst39~q\,
	combout => \inst25|inst6|inst5~0_combout\);

-- Location: FF_X23_Y27_N13
\inst|inst3|lpm_counter_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst|lpm_counter_component|auto_generated|cout_actual~clkctrl_outclk\,
	d => \inst|inst3|lpm_counter_component|auto_generated|counter_comb_bita1~combout\,
	asdata => \~GND~combout\,
	clrn => \STOPPER_RESET~input_o\,
	sload => \inst|inst3|lpm_counter_component|auto_generated|cout_actual~combout\,
	ena => \inst|inst|lpm_counter_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(1));

-- Location: FF_X23_Y26_N25
\inst9|inst38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst92|inst1~clkctrl_outclk\,
	asdata => \inst|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst38~q\);

-- Location: LCCOMB_X23_Y26_N24
\inst25|inst5|inst5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst25|inst5|inst5~0_combout\ = (\STOPPER_SEL~input_o\ & ((\inst9|inst38~q\))) # (!\STOPPER_SEL~input_o\ & (\inst|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(1),
	datac => \inst9|inst38~q\,
	datad => \STOPPER_SEL~input_o\,
	combout => \inst25|inst5|inst5~0_combout\);

-- Location: LCCOMB_X23_Y26_N30
\inst4|ss[6]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|ss[6]~0_combout\ = (\inst25|inst7|inst5~0_combout\ & (\inst25|inst4|inst5~0_combout\ & (\inst25|inst6|inst5~0_combout\ $ (\inst25|inst5|inst5~0_combout\)))) # (!\inst25|inst7|inst5~0_combout\ & (!\inst25|inst5|inst5~0_combout\ & 
-- (\inst25|inst4|inst5~0_combout\ $ (\inst25|inst6|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst4|inst5~0_combout\,
	datab => \inst25|inst7|inst5~0_combout\,
	datac => \inst25|inst6|inst5~0_combout\,
	datad => \inst25|inst5|inst5~0_combout\,
	combout => \inst4|ss[6]~0_combout\);

-- Location: LCCOMB_X23_Y26_N8
\inst4|ss[5]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|ss[5]~1_combout\ = (\inst25|inst7|inst5~0_combout\ & ((\inst25|inst4|inst5~0_combout\ & ((\inst25|inst5|inst5~0_combout\))) # (!\inst25|inst4|inst5~0_combout\ & (\inst25|inst6|inst5~0_combout\)))) # (!\inst25|inst7|inst5~0_combout\ & 
-- (\inst25|inst6|inst5~0_combout\ & (\inst25|inst4|inst5~0_combout\ $ (\inst25|inst5|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst4|inst5~0_combout\,
	datab => \inst25|inst7|inst5~0_combout\,
	datac => \inst25|inst6|inst5~0_combout\,
	datad => \inst25|inst5|inst5~0_combout\,
	combout => \inst4|ss[5]~1_combout\);

-- Location: LCCOMB_X23_Y26_N18
\inst4|ss[4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|ss[4]~2_combout\ = (\inst25|inst7|inst5~0_combout\ & (((\inst25|inst4|inst5~0_combout\ & !\inst25|inst5|inst5~0_combout\)) # (!\inst25|inst6|inst5~0_combout\))) # (!\inst25|inst7|inst5~0_combout\ & ((\inst25|inst4|inst5~0_combout\) # 
-- ((\inst25|inst6|inst5~0_combout\) # (!\inst25|inst5|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst4|inst5~0_combout\,
	datab => \inst25|inst7|inst5~0_combout\,
	datac => \inst25|inst6|inst5~0_combout\,
	datad => \inst25|inst5|inst5~0_combout\,
	combout => \inst4|ss[4]~2_combout\);

-- Location: LCCOMB_X23_Y26_N12
\inst4|ss[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|ss[3]~3_combout\ = (\inst25|inst5|inst5~0_combout\ & ((\inst25|inst4|inst5~0_combout\ & ((\inst25|inst6|inst5~0_combout\))) # (!\inst25|inst4|inst5~0_combout\ & (\inst25|inst7|inst5~0_combout\ & !\inst25|inst6|inst5~0_combout\)))) # 
-- (!\inst25|inst5|inst5~0_combout\ & (!\inst25|inst7|inst5~0_combout\ & (\inst25|inst4|inst5~0_combout\ $ (\inst25|inst6|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst4|inst5~0_combout\,
	datab => \inst25|inst7|inst5~0_combout\,
	datac => \inst25|inst6|inst5~0_combout\,
	datad => \inst25|inst5|inst5~0_combout\,
	combout => \inst4|ss[3]~3_combout\);

-- Location: LCCOMB_X23_Y26_N14
\inst4|ss[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|ss[2]~4_combout\ = (\inst25|inst5|inst5~0_combout\ & (\inst25|inst4|inst5~0_combout\ & (!\inst25|inst7|inst5~0_combout\))) # (!\inst25|inst5|inst5~0_combout\ & ((\inst25|inst6|inst5~0_combout\ & ((!\inst25|inst7|inst5~0_combout\))) # 
-- (!\inst25|inst6|inst5~0_combout\ & (\inst25|inst4|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst4|inst5~0_combout\,
	datab => \inst25|inst7|inst5~0_combout\,
	datac => \inst25|inst6|inst5~0_combout\,
	datad => \inst25|inst5|inst5~0_combout\,
	combout => \inst4|ss[2]~4_combout\);

-- Location: LCCOMB_X23_Y26_N16
\inst4|ss[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|ss[1]~5_combout\ = (\inst25|inst4|inst5~0_combout\ & (\inst25|inst7|inst5~0_combout\ $ (((\inst25|inst5|inst5~0_combout\) # (!\inst25|inst6|inst5~0_combout\))))) # (!\inst25|inst4|inst5~0_combout\ & (!\inst25|inst7|inst5~0_combout\ & 
-- (!\inst25|inst6|inst5~0_combout\ & \inst25|inst5|inst5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst4|inst5~0_combout\,
	datab => \inst25|inst7|inst5~0_combout\,
	datac => \inst25|inst6|inst5~0_combout\,
	datad => \inst25|inst5|inst5~0_combout\,
	combout => \inst4|ss[1]~5_combout\);

-- Location: LCCOMB_X23_Y26_N10
\inst4|ss[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|ss[0]~6_combout\ = (\inst25|inst4|inst5~0_combout\ & ((\inst25|inst7|inst5~0_combout\) # (\inst25|inst6|inst5~0_combout\ $ (\inst25|inst5|inst5~0_combout\)))) # (!\inst25|inst4|inst5~0_combout\ & ((\inst25|inst5|inst5~0_combout\) # 
-- (\inst25|inst7|inst5~0_combout\ $ (\inst25|inst6|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst4|inst5~0_combout\,
	datab => \inst25|inst7|inst5~0_combout\,
	datac => \inst25|inst6|inst5~0_combout\,
	datad => \inst25|inst5|inst5~0_combout\,
	combout => \inst4|ss[0]~6_combout\);

-- Location: LCCOMB_X22_Y25_N0
\inst5|inst|lpm_counter_component|auto_generated|counter_comb_bita0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|inst|lpm_counter_component|auto_generated|counter_comb_bita0~combout\ = \inst5|inst|lpm_counter_component|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \inst5|inst|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst5|inst|lpm_counter_component|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst|lpm_counter_component|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \inst5|inst|lpm_counter_component|auto_generated|counter_comb_bita0~combout\,
	cout => \inst5|inst|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X22_Y25_N2
\inst5|inst|lpm_counter_component|auto_generated|counter_comb_bita1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|inst|lpm_counter_component|auto_generated|counter_comb_bita1~combout\ = (\inst5|inst|lpm_counter_component|auto_generated|counter_reg_bit\(1) & (!\inst5|inst|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\inst5|inst|lpm_counter_component|auto_generated|counter_reg_bit\(1) & ((\inst5|inst|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \inst5|inst|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\inst5|inst|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\) # (!\inst5|inst|lpm_counter_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst|lpm_counter_component|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \inst5|inst|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst5|inst|lpm_counter_component|auto_generated|counter_comb_bita1~combout\,
	cout => \inst5|inst|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCCOMB_X22_Y25_N4
\inst5|inst|lpm_counter_component|auto_generated|counter_comb_bita2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|inst|lpm_counter_component|auto_generated|counter_comb_bita2~combout\ = (\inst5|inst|lpm_counter_component|auto_generated|counter_reg_bit\(2) & (\inst5|inst|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\inst5|inst|lpm_counter_component|auto_generated|counter_reg_bit\(2) & (!\inst5|inst|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \inst5|inst|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\inst5|inst|lpm_counter_component|auto_generated|counter_reg_bit\(2) & !\inst5|inst|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst|lpm_counter_component|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \inst5|inst|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \inst5|inst|lpm_counter_component|auto_generated|counter_comb_bita2~combout\,
	cout => \inst5|inst|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: FF_X22_Y25_N5
\inst5|inst|lpm_counter_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst19~clkctrl_outclk\,
	d => \inst5|inst|lpm_counter_component|auto_generated|counter_comb_bita2~combout\,
	asdata => \~GND~combout\,
	clrn => \STOPPER_RESET~input_o\,
	sload => \inst5|inst|lpm_counter_component|auto_generated|cout_actual~combout\,
	ena => \inst8|inst25~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst|lpm_counter_component|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X22_Y25_N6
\inst5|inst|lpm_counter_component|auto_generated|counter_comb_bita3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|inst|lpm_counter_component|auto_generated|counter_comb_bita3~combout\ = (\inst5|inst|lpm_counter_component|auto_generated|counter_reg_bit\(3) & (!\inst5|inst|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\)) # 
-- (!\inst5|inst|lpm_counter_component|auto_generated|counter_reg_bit\(3) & ((\inst5|inst|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \inst5|inst|lpm_counter_component|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\inst5|inst|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\) # (!\inst5|inst|lpm_counter_component|auto_generated|counter_reg_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|lpm_counter_component|auto_generated|counter_reg_bit\(3),
	datad => VCC,
	cin => \inst5|inst|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \inst5|inst|lpm_counter_component|auto_generated|counter_comb_bita3~combout\,
	cout => \inst5|inst|lpm_counter_component|auto_generated|counter_comb_bita3~COUT\);

-- Location: FF_X22_Y25_N7
\inst5|inst|lpm_counter_component|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst19~clkctrl_outclk\,
	d => \inst5|inst|lpm_counter_component|auto_generated|counter_comb_bita3~combout\,
	asdata => \~GND~combout\,
	clrn => \STOPPER_RESET~input_o\,
	sload => \inst5|inst|lpm_counter_component|auto_generated|cout_actual~combout\,
	ena => \inst8|inst25~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst|lpm_counter_component|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X22_Y23_N24
\inst5|inst|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|inst|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ = (\inst5|inst|lpm_counter_component|auto_generated|counter_reg_bit\(0) & (!\inst5|inst|lpm_counter_component|auto_generated|counter_reg_bit\(1) & 
-- (\inst5|inst|lpm_counter_component|auto_generated|counter_reg_bit\(3) & !\inst5|inst|lpm_counter_component|auto_generated|counter_reg_bit\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|lpm_counter_component|auto_generated|counter_reg_bit\(0),
	datab => \inst5|inst|lpm_counter_component|auto_generated|counter_reg_bit\(1),
	datac => \inst5|inst|lpm_counter_component|auto_generated|counter_reg_bit\(3),
	datad => \inst5|inst|lpm_counter_component|auto_generated|counter_reg_bit\(2),
	combout => \inst5|inst|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\);

-- Location: LCCOMB_X22_Y25_N8
\inst5|inst|lpm_counter_component|auto_generated|counter_comb_bita3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|inst|lpm_counter_component|auto_generated|counter_comb_bita3~0_combout\ = !\inst5|inst|lpm_counter_component|auto_generated|counter_comb_bita3~COUT\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst5|inst|lpm_counter_component|auto_generated|counter_comb_bita3~COUT\,
	combout => \inst5|inst|lpm_counter_component|auto_generated|counter_comb_bita3~0_combout\);

-- Location: LCCOMB_X22_Y23_N2
\inst5|inst|lpm_counter_component|auto_generated|cout_actual\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|inst|lpm_counter_component|auto_generated|cout_actual~combout\ = (\inst5|inst|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\) # (\inst5|inst|lpm_counter_component|auto_generated|counter_comb_bita3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\,
	datad => \inst5|inst|lpm_counter_component|auto_generated|counter_comb_bita3~0_combout\,
	combout => \inst5|inst|lpm_counter_component|auto_generated|cout_actual~combout\);

-- Location: FF_X22_Y25_N1
\inst5|inst|lpm_counter_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst19~clkctrl_outclk\,
	d => \inst5|inst|lpm_counter_component|auto_generated|counter_comb_bita0~combout\,
	asdata => \~GND~combout\,
	clrn => \STOPPER_RESET~input_o\,
	sload => \inst5|inst|lpm_counter_component|auto_generated|cout_actual~combout\,
	ena => \inst8|inst25~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst|lpm_counter_component|auto_generated|counter_reg_bit\(0));

-- Location: FF_X22_Y25_N3
\inst5|inst|lpm_counter_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst19~clkctrl_outclk\,
	d => \inst5|inst|lpm_counter_component|auto_generated|counter_comb_bita1~combout\,
	asdata => \~GND~combout\,
	clrn => \STOPPER_RESET~input_o\,
	sload => \inst5|inst|lpm_counter_component|auto_generated|cout_actual~combout\,
	ena => \inst8|inst25~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst|lpm_counter_component|auto_generated|counter_reg_bit\(1));

-- Location: FF_X23_Y26_N7
\inst9|inst33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst92|inst1~clkctrl_outclk\,
	asdata => \inst5|inst|lpm_counter_component|auto_generated|counter_reg_bit\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst33~q\);

-- Location: LCCOMB_X23_Y26_N6
\inst25|inst9|inst5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst25|inst9|inst5~0_combout\ = (\STOPPER_SEL~input_o\ & ((\inst9|inst33~q\))) # (!\STOPPER_SEL~input_o\ & (\inst5|inst|lpm_counter_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst|lpm_counter_component|auto_generated|counter_reg_bit\(1),
	datac => \inst9|inst33~q\,
	datad => \STOPPER_SEL~input_o\,
	combout => \inst25|inst9|inst5~0_combout\);

-- Location: FF_X23_Y26_N3
\inst9|inst36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst92|inst1~clkctrl_outclk\,
	asdata => \inst5|inst|lpm_counter_component|auto_generated|counter_reg_bit\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst36~q\);

-- Location: LCCOMB_X23_Y26_N2
\inst25|inst11|inst5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst25|inst11|inst5~0_combout\ = (\STOPPER_SEL~input_o\ & ((\inst9|inst36~q\))) # (!\STOPPER_SEL~input_o\ & (\inst5|inst|lpm_counter_component|auto_generated|counter_reg_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|lpm_counter_component|auto_generated|counter_reg_bit\(3),
	datac => \inst9|inst36~q\,
	datad => \STOPPER_SEL~input_o\,
	combout => \inst25|inst11|inst5~0_combout\);

-- Location: FF_X23_Y26_N5
\inst9|inst35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst92|inst1~clkctrl_outclk\,
	asdata => \inst5|inst|lpm_counter_component|auto_generated|counter_reg_bit\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst35~q\);

-- Location: LCCOMB_X23_Y26_N4
\inst25|inst10|inst5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst25|inst10|inst5~0_combout\ = (\STOPPER_SEL~input_o\ & ((\inst9|inst35~q\))) # (!\STOPPER_SEL~input_o\ & (\inst5|inst|lpm_counter_component|auto_generated|counter_reg_bit\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst|lpm_counter_component|auto_generated|counter_reg_bit\(2),
	datac => \inst9|inst35~q\,
	datad => \STOPPER_SEL~input_o\,
	combout => \inst25|inst10|inst5~0_combout\);

-- Location: FF_X23_Y26_N1
\inst9|inst31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst92|inst1~clkctrl_outclk\,
	asdata => \inst5|inst|lpm_counter_component|auto_generated|counter_reg_bit\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst31~q\);

-- Location: LCCOMB_X23_Y26_N0
\inst25|inst8|inst5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst25|inst8|inst5~0_combout\ = (\STOPPER_SEL~input_o\ & ((\inst9|inst31~q\))) # (!\STOPPER_SEL~input_o\ & (\inst5|inst|lpm_counter_component|auto_generated|counter_reg_bit\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|lpm_counter_component|auto_generated|counter_reg_bit\(0),
	datac => \inst9|inst31~q\,
	datad => \STOPPER_SEL~input_o\,
	combout => \inst25|inst8|inst5~0_combout\);

-- Location: LCCOMB_X23_Y26_N20
\inst6|ss[6]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|ss[6]~0_combout\ = (\inst25|inst11|inst5~0_combout\ & (\inst25|inst8|inst5~0_combout\ & (\inst25|inst9|inst5~0_combout\ $ (\inst25|inst10|inst5~0_combout\)))) # (!\inst25|inst11|inst5~0_combout\ & (!\inst25|inst9|inst5~0_combout\ & 
-- (\inst25|inst10|inst5~0_combout\ $ (\inst25|inst8|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst9|inst5~0_combout\,
	datab => \inst25|inst11|inst5~0_combout\,
	datac => \inst25|inst10|inst5~0_combout\,
	datad => \inst25|inst8|inst5~0_combout\,
	combout => \inst6|ss[6]~0_combout\);

-- Location: LCCOMB_X23_Y26_N22
\inst6|ss[5]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|ss[5]~1_combout\ = (\inst25|inst9|inst5~0_combout\ & ((\inst25|inst8|inst5~0_combout\ & (\inst25|inst11|inst5~0_combout\)) # (!\inst25|inst8|inst5~0_combout\ & ((\inst25|inst10|inst5~0_combout\))))) # (!\inst25|inst9|inst5~0_combout\ & 
-- (\inst25|inst10|inst5~0_combout\ & (\inst25|inst11|inst5~0_combout\ $ (\inst25|inst8|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst9|inst5~0_combout\,
	datab => \inst25|inst11|inst5~0_combout\,
	datac => \inst25|inst10|inst5~0_combout\,
	datad => \inst25|inst8|inst5~0_combout\,
	combout => \inst6|ss[5]~1_combout\);

-- Location: LCCOMB_X33_Y27_N0
\inst6|ss[4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|ss[4]~2_combout\ = (\inst25|inst11|inst5~0_combout\ & (((\inst25|inst8|inst5~0_combout\ & !\inst25|inst9|inst5~0_combout\)) # (!\inst25|inst10|inst5~0_combout\))) # (!\inst25|inst11|inst5~0_combout\ & ((\inst25|inst8|inst5~0_combout\) # 
-- ((\inst25|inst10|inst5~0_combout\) # (!\inst25|inst9|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst11|inst5~0_combout\,
	datab => \inst25|inst8|inst5~0_combout\,
	datac => \inst25|inst9|inst5~0_combout\,
	datad => \inst25|inst10|inst5~0_combout\,
	combout => \inst6|ss[4]~2_combout\);

-- Location: LCCOMB_X33_Y27_N26
\inst6|ss[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|ss[3]~3_combout\ = (\inst25|inst9|inst5~0_combout\ & ((\inst25|inst8|inst5~0_combout\ & ((\inst25|inst10|inst5~0_combout\))) # (!\inst25|inst8|inst5~0_combout\ & (\inst25|inst11|inst5~0_combout\ & !\inst25|inst10|inst5~0_combout\)))) # 
-- (!\inst25|inst9|inst5~0_combout\ & (!\inst25|inst11|inst5~0_combout\ & (\inst25|inst8|inst5~0_combout\ $ (\inst25|inst10|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst11|inst5~0_combout\,
	datab => \inst25|inst8|inst5~0_combout\,
	datac => \inst25|inst9|inst5~0_combout\,
	datad => \inst25|inst10|inst5~0_combout\,
	combout => \inst6|ss[3]~3_combout\);

-- Location: LCCOMB_X33_Y27_N4
\inst6|ss[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|ss[2]~4_combout\ = (\inst25|inst9|inst5~0_combout\ & (!\inst25|inst11|inst5~0_combout\ & (\inst25|inst8|inst5~0_combout\))) # (!\inst25|inst9|inst5~0_combout\ & ((\inst25|inst10|inst5~0_combout\ & (!\inst25|inst11|inst5~0_combout\)) # 
-- (!\inst25|inst10|inst5~0_combout\ & ((\inst25|inst8|inst5~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst11|inst5~0_combout\,
	datab => \inst25|inst8|inst5~0_combout\,
	datac => \inst25|inst9|inst5~0_combout\,
	datad => \inst25|inst10|inst5~0_combout\,
	combout => \inst6|ss[2]~4_combout\);

-- Location: LCCOMB_X33_Y27_N22
\inst6|ss[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|ss[1]~5_combout\ = (\inst25|inst8|inst5~0_combout\ & (\inst25|inst11|inst5~0_combout\ $ (((\inst25|inst9|inst5~0_combout\) # (!\inst25|inst10|inst5~0_combout\))))) # (!\inst25|inst8|inst5~0_combout\ & (!\inst25|inst11|inst5~0_combout\ & 
-- (\inst25|inst9|inst5~0_combout\ & !\inst25|inst10|inst5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst11|inst5~0_combout\,
	datab => \inst25|inst8|inst5~0_combout\,
	datac => \inst25|inst9|inst5~0_combout\,
	datad => \inst25|inst10|inst5~0_combout\,
	combout => \inst6|ss[1]~5_combout\);

-- Location: LCCOMB_X33_Y27_N24
\inst6|ss[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|ss[0]~6_combout\ = (\inst25|inst8|inst5~0_combout\ & ((\inst25|inst11|inst5~0_combout\) # (\inst25|inst9|inst5~0_combout\ $ (\inst25|inst10|inst5~0_combout\)))) # (!\inst25|inst8|inst5~0_combout\ & ((\inst25|inst9|inst5~0_combout\) # 
-- (\inst25|inst11|inst5~0_combout\ $ (\inst25|inst10|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst11|inst5~0_combout\,
	datab => \inst25|inst8|inst5~0_combout\,
	datac => \inst25|inst9|inst5~0_combout\,
	datad => \inst25|inst10|inst5~0_combout\,
	combout => \inst6|ss[0]~6_combout\);

-- Location: LCCOMB_X22_Y23_N6
\inst5|inst3|lpm_counter_component|auto_generated|counter_comb_bita0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|inst3|lpm_counter_component|auto_generated|counter_comb_bita0~combout\ = \inst5|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \inst5|inst3|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst5|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \inst5|inst3|lpm_counter_component|auto_generated|counter_comb_bita0~combout\,
	cout => \inst5|inst3|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X22_Y23_N8
\inst5|inst3|lpm_counter_component|auto_generated|counter_comb_bita1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|inst3|lpm_counter_component|auto_generated|counter_comb_bita1~combout\ = (\inst5|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(1) & (!\inst5|inst3|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\inst5|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(1) & ((\inst5|inst3|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \inst5|inst3|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\inst5|inst3|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\) # (!\inst5|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \inst5|inst3|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst5|inst3|lpm_counter_component|auto_generated|counter_comb_bita1~combout\,
	cout => \inst5|inst3|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCCOMB_X22_Y23_N10
\inst5|inst3|lpm_counter_component|auto_generated|counter_comb_bita2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|inst3|lpm_counter_component|auto_generated|counter_comb_bita2~combout\ = (\inst5|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(2) & (\inst5|inst3|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\inst5|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(2) & (!\inst5|inst3|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \inst5|inst3|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\inst5|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(2) & !\inst5|inst3|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \inst5|inst3|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \inst5|inst3|lpm_counter_component|auto_generated|counter_comb_bita2~combout\,
	cout => \inst5|inst3|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCCOMB_X22_Y23_N12
\inst5|inst3|lpm_counter_component|auto_generated|counter_comb_bita3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|inst3|lpm_counter_component|auto_generated|counter_comb_bita3~combout\ = (\inst5|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(3) & (!\inst5|inst3|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\)) # 
-- (!\inst5|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(3) & ((\inst5|inst3|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \inst5|inst3|lpm_counter_component|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\inst5|inst3|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\) # (!\inst5|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(3),
	datad => VCC,
	cin => \inst5|inst3|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \inst5|inst3|lpm_counter_component|auto_generated|counter_comb_bita3~combout\,
	cout => \inst5|inst3|lpm_counter_component|auto_generated|counter_comb_bita3~COUT\);

-- Location: LCCOMB_X22_Y23_N14
\inst5|inst3|lpm_counter_component|auto_generated|counter_comb_bita3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|inst3|lpm_counter_component|auto_generated|counter_comb_bita3~0_combout\ = !\inst5|inst3|lpm_counter_component|auto_generated|counter_comb_bita3~COUT\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst5|inst3|lpm_counter_component|auto_generated|counter_comb_bita3~COUT\,
	combout => \inst5|inst3|lpm_counter_component|auto_generated|counter_comb_bita3~0_combout\);

-- Location: FF_X22_Y23_N7
\inst5|inst3|lpm_counter_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst19~clkctrl_outclk\,
	d => \inst5|inst3|lpm_counter_component|auto_generated|counter_comb_bita0~combout\,
	asdata => \~GND~combout\,
	clrn => \STOPPER_RESET~input_o\,
	sload => \inst5|inst3|lpm_counter_component|auto_generated|cout_actual~combout\,
	ena => \inst5|inst|lpm_counter_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(0));

-- Location: FF_X22_Y23_N11
\inst5|inst3|lpm_counter_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst19~clkctrl_outclk\,
	d => \inst5|inst3|lpm_counter_component|auto_generated|counter_comb_bita2~combout\,
	asdata => \~GND~combout\,
	clrn => \STOPPER_RESET~input_o\,
	sload => \inst5|inst3|lpm_counter_component|auto_generated|cout_actual~combout\,
	ena => \inst5|inst|lpm_counter_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X22_Y23_N28
\inst5|inst3|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|inst3|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ = (!\inst5|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(3) & (\inst5|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(0) & 
-- (!\inst5|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(1) & \inst5|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(3),
	datab => \inst5|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(0),
	datac => \inst5|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(1),
	datad => \inst5|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(2),
	combout => \inst5|inst3|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\);

-- Location: LCCOMB_X22_Y23_N0
\inst5|inst3|lpm_counter_component|auto_generated|cout_actual\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|inst3|lpm_counter_component|auto_generated|cout_actual~combout\ = (\inst5|inst3|lpm_counter_component|auto_generated|counter_comb_bita3~0_combout\) # (\inst5|inst3|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|inst3|lpm_counter_component|auto_generated|counter_comb_bita3~0_combout\,
	datad => \inst5|inst3|lpm_counter_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\,
	combout => \inst5|inst3|lpm_counter_component|auto_generated|cout_actual~combout\);

-- Location: FF_X22_Y23_N9
\inst5|inst3|lpm_counter_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst19~clkctrl_outclk\,
	d => \inst5|inst3|lpm_counter_component|auto_generated|counter_comb_bita1~combout\,
	asdata => \~GND~combout\,
	clrn => \STOPPER_RESET~input_o\,
	sload => \inst5|inst3|lpm_counter_component|auto_generated|cout_actual~combout\,
	ena => \inst5|inst|lpm_counter_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(1));

-- Location: FF_X23_Y23_N13
\inst9|inst23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst92|inst1~clkctrl_outclk\,
	asdata => \inst5|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst23~q\);

-- Location: LCCOMB_X23_Y23_N12
\inst25|inst13|inst5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst25|inst13|inst5~0_combout\ = (\STOPPER_SEL~input_o\ & ((\inst9|inst23~q\))) # (!\STOPPER_SEL~input_o\ & (\inst5|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(1),
	datab => \STOPPER_SEL~input_o\,
	datac => \inst9|inst23~q\,
	combout => \inst25|inst13|inst5~0_combout\);

-- Location: FF_X22_Y23_N13
\inst5|inst3|lpm_counter_component|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst19~clkctrl_outclk\,
	d => \inst5|inst3|lpm_counter_component|auto_generated|counter_comb_bita3~combout\,
	asdata => \~GND~combout\,
	clrn => \STOPPER_RESET~input_o\,
	sload => \inst5|inst3|lpm_counter_component|auto_generated|cout_actual~combout\,
	ena => \inst5|inst|lpm_counter_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(3));

-- Location: FF_X23_Y23_N17
\inst9|inst29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst92|inst1~clkctrl_outclk\,
	asdata => \inst5|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst29~q\);

-- Location: LCCOMB_X23_Y23_N16
\inst25|inst15|inst5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst25|inst15|inst5~0_combout\ = (\STOPPER_SEL~input_o\ & ((\inst9|inst29~q\))) # (!\STOPPER_SEL~input_o\ & (\inst5|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(3),
	datab => \STOPPER_SEL~input_o\,
	datac => \inst9|inst29~q\,
	combout => \inst25|inst15|inst5~0_combout\);

-- Location: FF_X23_Y23_N31
\inst9|inst12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst92|inst1~clkctrl_outclk\,
	asdata => \inst5|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst12~q\);

-- Location: LCCOMB_X23_Y23_N30
\inst25|inst12|inst5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst25|inst12|inst5~0_combout\ = (\STOPPER_SEL~input_o\ & ((\inst9|inst12~q\))) # (!\STOPPER_SEL~input_o\ & (\inst5|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(0),
	datac => \inst9|inst12~q\,
	datad => \STOPPER_SEL~input_o\,
	combout => \inst25|inst12|inst5~0_combout\);

-- Location: FF_X23_Y23_N11
\inst9|inst27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst92|inst1~clkctrl_outclk\,
	asdata => \inst5|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst27~q\);

-- Location: LCCOMB_X23_Y23_N10
\inst25|inst14|inst5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst25|inst14|inst5~0_combout\ = (\STOPPER_SEL~input_o\ & ((\inst9|inst27~q\))) # (!\STOPPER_SEL~input_o\ & (\inst5|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst3|lpm_counter_component|auto_generated|counter_reg_bit\(2),
	datab => \STOPPER_SEL~input_o\,
	datac => \inst9|inst27~q\,
	combout => \inst25|inst14|inst5~0_combout\);

-- Location: LCCOMB_X23_Y23_N26
\inst7|ss[6]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|ss[6]~0_combout\ = (\inst25|inst15|inst5~0_combout\ & (\inst25|inst12|inst5~0_combout\ & (\inst25|inst13|inst5~0_combout\ $ (\inst25|inst14|inst5~0_combout\)))) # (!\inst25|inst15|inst5~0_combout\ & (!\inst25|inst13|inst5~0_combout\ & 
-- (\inst25|inst12|inst5~0_combout\ $ (\inst25|inst14|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst13|inst5~0_combout\,
	datab => \inst25|inst15|inst5~0_combout\,
	datac => \inst25|inst12|inst5~0_combout\,
	datad => \inst25|inst14|inst5~0_combout\,
	combout => \inst7|ss[6]~0_combout\);

-- Location: LCCOMB_X23_Y23_N20
\inst7|ss[5]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|ss[5]~1_combout\ = (\inst25|inst13|inst5~0_combout\ & ((\inst25|inst12|inst5~0_combout\ & (\inst25|inst15|inst5~0_combout\)) # (!\inst25|inst12|inst5~0_combout\ & ((\inst25|inst14|inst5~0_combout\))))) # (!\inst25|inst13|inst5~0_combout\ & 
-- (\inst25|inst14|inst5~0_combout\ & (\inst25|inst15|inst5~0_combout\ $ (\inst25|inst12|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst13|inst5~0_combout\,
	datab => \inst25|inst15|inst5~0_combout\,
	datac => \inst25|inst12|inst5~0_combout\,
	datad => \inst25|inst14|inst5~0_combout\,
	combout => \inst7|ss[5]~1_combout\);

-- Location: LCCOMB_X23_Y23_N6
\inst7|ss[4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|ss[4]~2_combout\ = (\inst25|inst15|inst5~0_combout\ & (((!\inst25|inst13|inst5~0_combout\ & \inst25|inst12|inst5~0_combout\)) # (!\inst25|inst14|inst5~0_combout\))) # (!\inst25|inst15|inst5~0_combout\ & (((\inst25|inst12|inst5~0_combout\) # 
-- (\inst25|inst14|inst5~0_combout\)) # (!\inst25|inst13|inst5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst13|inst5~0_combout\,
	datab => \inst25|inst15|inst5~0_combout\,
	datac => \inst25|inst12|inst5~0_combout\,
	datad => \inst25|inst14|inst5~0_combout\,
	combout => \inst7|ss[4]~2_combout\);

-- Location: LCCOMB_X23_Y23_N8
\inst7|ss[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|ss[3]~3_combout\ = (\inst25|inst13|inst5~0_combout\ & ((\inst25|inst12|inst5~0_combout\ & ((\inst25|inst14|inst5~0_combout\))) # (!\inst25|inst12|inst5~0_combout\ & (\inst25|inst15|inst5~0_combout\ & !\inst25|inst14|inst5~0_combout\)))) # 
-- (!\inst25|inst13|inst5~0_combout\ & (!\inst25|inst15|inst5~0_combout\ & (\inst25|inst12|inst5~0_combout\ $ (\inst25|inst14|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst13|inst5~0_combout\,
	datab => \inst25|inst15|inst5~0_combout\,
	datac => \inst25|inst12|inst5~0_combout\,
	datad => \inst25|inst14|inst5~0_combout\,
	combout => \inst7|ss[3]~3_combout\);

-- Location: LCCOMB_X23_Y23_N18
\inst7|ss[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|ss[2]~4_combout\ = (\inst25|inst13|inst5~0_combout\ & (!\inst25|inst15|inst5~0_combout\ & (\inst25|inst12|inst5~0_combout\))) # (!\inst25|inst13|inst5~0_combout\ & ((\inst25|inst14|inst5~0_combout\ & (!\inst25|inst15|inst5~0_combout\)) # 
-- (!\inst25|inst14|inst5~0_combout\ & ((\inst25|inst12|inst5~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst13|inst5~0_combout\,
	datab => \inst25|inst15|inst5~0_combout\,
	datac => \inst25|inst12|inst5~0_combout\,
	datad => \inst25|inst14|inst5~0_combout\,
	combout => \inst7|ss[2]~4_combout\);

-- Location: LCCOMB_X23_Y23_N28
\inst7|ss[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|ss[1]~5_combout\ = (\inst25|inst13|inst5~0_combout\ & (!\inst25|inst15|inst5~0_combout\ & ((\inst25|inst12|inst5~0_combout\) # (!\inst25|inst14|inst5~0_combout\)))) # (!\inst25|inst13|inst5~0_combout\ & (\inst25|inst12|inst5~0_combout\ & 
-- (\inst25|inst15|inst5~0_combout\ $ (!\inst25|inst14|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst13|inst5~0_combout\,
	datab => \inst25|inst15|inst5~0_combout\,
	datac => \inst25|inst12|inst5~0_combout\,
	datad => \inst25|inst14|inst5~0_combout\,
	combout => \inst7|ss[1]~5_combout\);

-- Location: LCCOMB_X23_Y23_N14
\inst7|ss[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|ss[0]~6_combout\ = (\inst25|inst12|inst5~0_combout\ & ((\inst25|inst15|inst5~0_combout\) # (\inst25|inst13|inst5~0_combout\ $ (\inst25|inst14|inst5~0_combout\)))) # (!\inst25|inst12|inst5~0_combout\ & ((\inst25|inst13|inst5~0_combout\) # 
-- (\inst25|inst15|inst5~0_combout\ $ (\inst25|inst14|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst13|inst5~0_combout\,
	datab => \inst25|inst15|inst5~0_combout\,
	datac => \inst25|inst12|inst5~0_combout\,
	datad => \inst25|inst14|inst5~0_combout\,
	combout => \inst7|ss[0]~6_combout\);

-- Location: IOIBUF_X41_Y15_N1
\STOPPER_CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_STOPPER_CLK,
	o => \STOPPER_CLK~input_o\);

-- Location: CLKCTRL_G9
\STOPPER_CLK~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \STOPPER_CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \STOPPER_CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y23_N1
\LED_RESET~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LED_RESET,
	o => \LED_RESET~input_o\);

-- Location: FF_X3_Y23_N3
\inst1|inst24|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \STOPPER_CLK~inputclkctrl_outclk\,
	asdata => \SW[2]~input_o\,
	clrn => \LED_RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst24|inst~q\);

-- Location: FF_X3_Y23_N1
\inst1|inst24|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \STOPPER_CLK~inputclkctrl_outclk\,
	asdata => \inst1|inst24|inst~q\,
	clrn => \LED_RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst24|inst3~q\);

-- Location: LCCOMB_X3_Y23_N28
\inst1|inst24|inst4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst24|inst4~combout\ = \inst1|inst24|inst3~q\ $ (\inst1|inst24|inst~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst24|inst3~q\,
	datad => \inst1|inst24|inst~q\,
	combout => \inst1|inst24|inst4~combout\);

-- Location: LCCOMB_X5_Y23_N6
\inst1|inst30|inst~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst30|inst~feeder_combout\ = \SW[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[5]~input_o\,
	combout => \inst1|inst30|inst~feeder_combout\);

-- Location: FF_X5_Y23_N7
\inst1|inst30|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \STOPPER_CLK~inputclkctrl_outclk\,
	d => \inst1|inst30|inst~feeder_combout\,
	clrn => \LED_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst30|inst~q\);

-- Location: FF_X3_Y23_N21
\inst1|inst30|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \STOPPER_CLK~inputclkctrl_outclk\,
	asdata => \inst1|inst30|inst~q\,
	clrn => \LED_RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst30|inst3~q\);

-- Location: LCCOMB_X3_Y23_N14
\inst1|inst28|inst~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst28|inst~feeder_combout\ = \SW[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[4]~input_o\,
	combout => \inst1|inst28|inst~feeder_combout\);

-- Location: FF_X3_Y23_N15
\inst1|inst28|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \STOPPER_CLK~inputclkctrl_outclk\,
	d => \inst1|inst28|inst~feeder_combout\,
	clrn => \LED_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst28|inst~q\);

-- Location: LCCOMB_X3_Y23_N20
\inst1|inst14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst14~0_combout\ = (\inst1|inst28|inst3~q\ & (\inst1|inst28|inst~q\ & (\inst1|inst30|inst~q\ $ (!\inst1|inst30|inst3~q\)))) # (!\inst1|inst28|inst3~q\ & (!\inst1|inst28|inst~q\ & (\inst1|inst30|inst~q\ $ (!\inst1|inst30|inst3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst28|inst3~q\,
	datab => \inst1|inst30|inst~q\,
	datac => \inst1|inst30|inst3~q\,
	datad => \inst1|inst28|inst~q\,
	combout => \inst1|inst14~0_combout\);

-- Location: LCCOMB_X3_Y23_N24
\inst1|inst13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst13~0_combout\ = \inst1|inst13~q\ $ (((\inst1|inst32|inst4~combout\) # ((\inst1|inst24|inst4~combout\) # (!\inst1|inst14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst32|inst4~combout\,
	datab => \inst1|inst24|inst4~combout\,
	datac => \inst1|inst13~q\,
	datad => \inst1|inst14~0_combout\,
	combout => \inst1|inst13~0_combout\);

-- Location: FF_X3_Y23_N25
\inst1|inst13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \STOPPER_CLK~inputclkctrl_outclk\,
	d => \inst1|inst13~0_combout\,
	clrn => \LED_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst13~q\);

-- Location: LCCOMB_X3_Y23_N26
\inst1|inst32|inst~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst32|inst~feeder_combout\ = \SW[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[6]~input_o\,
	combout => \inst1|inst32|inst~feeder_combout\);

-- Location: FF_X3_Y23_N27
\inst1|inst32|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \STOPPER_CLK~inputclkctrl_outclk\,
	d => \inst1|inst32|inst~feeder_combout\,
	clrn => \LED_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst32|inst~q\);

-- Location: FF_X3_Y23_N29
\inst1|inst32|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \STOPPER_CLK~inputclkctrl_outclk\,
	asdata => \inst1|inst32|inst~q\,
	clrn => \LED_RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst32|inst3~q\);

-- Location: LCCOMB_X3_Y23_N0
\inst1|inst32|inst4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst32|inst4~combout\ = \inst1|inst32|inst~q\ $ (\inst1|inst32|inst3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst32|inst~q\,
	datad => \inst1|inst32|inst3~q\,
	combout => \inst1|inst32|inst4~combout\);

-- Location: FF_X3_Y23_N9
\inst1|inst20|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \STOPPER_CLK~inputclkctrl_outclk\,
	asdata => \SW[0]~input_o\,
	clrn => \LED_RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst20|inst~q\);

-- Location: IOIBUF_X0_Y27_N1
\SW[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LCCOMB_X5_Y23_N20
\inst1|inst22|inst~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst22|inst~feeder_combout\ = \SW[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[1]~input_o\,
	combout => \inst1|inst22|inst~feeder_combout\);

-- Location: FF_X5_Y23_N21
\inst1|inst22|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \STOPPER_CLK~inputclkctrl_outclk\,
	d => \inst1|inst22|inst~feeder_combout\,
	clrn => \LED_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst22|inst~q\);

-- Location: FF_X3_Y23_N17
\inst1|inst22|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \STOPPER_CLK~inputclkctrl_outclk\,
	asdata => \inst1|inst22|inst~q\,
	clrn => \LED_RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst22|inst3~q\);

-- Location: LCCOMB_X4_Y23_N24
\inst1|inst20|inst3~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst20|inst3~feeder_combout\ = \inst1|inst20|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|inst20|inst~q\,
	combout => \inst1|inst20|inst3~feeder_combout\);

-- Location: FF_X4_Y23_N25
\inst1|inst20|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \STOPPER_CLK~inputclkctrl_outclk\,
	d => \inst1|inst20|inst3~feeder_combout\,
	clrn => \LED_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst20|inst3~q\);

-- Location: LCCOMB_X3_Y23_N16
\inst1|inst16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst16~0_combout\ = (\inst1|inst22|inst~q\ & (\inst1|inst22|inst3~q\ & (\inst1|inst20|inst~q\ $ (!\inst1|inst20|inst3~q\)))) # (!\inst1|inst22|inst~q\ & (!\inst1|inst22|inst3~q\ & (\inst1|inst20|inst~q\ $ (!\inst1|inst20|inst3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst22|inst~q\,
	datab => \inst1|inst20|inst~q\,
	datac => \inst1|inst22|inst3~q\,
	datad => \inst1|inst20|inst3~q\,
	combout => \inst1|inst16~0_combout\);

-- Location: LCCOMB_X3_Y23_N12
\inst1|inst11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst11~0_combout\ = \inst1|inst11~q\ $ (((\inst1|inst18~0_combout\) # ((\inst1|inst32|inst4~combout\) # (!\inst1|inst16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst18~0_combout\,
	datab => \inst1|inst32|inst4~combout\,
	datac => \inst1|inst11~q\,
	datad => \inst1|inst16~0_combout\,
	combout => \inst1|inst11~0_combout\);

-- Location: FF_X3_Y23_N13
\inst1|inst11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \STOPPER_CLK~inputclkctrl_outclk\,
	d => \inst1|inst11~0_combout\,
	clrn => \LED_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst11~q\);

-- Location: LCCOMB_X3_Y23_N6
\inst1|inst10~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst10~4_combout\ = \inst1|inst10~q\ $ (((\inst1|inst24|inst4~combout\) # (\inst1|inst32|inst~q\ $ (\inst1|inst32|inst3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst32|inst~q\,
	datab => \inst1|inst24|inst4~combout\,
	datac => \inst1|inst10~q\,
	datad => \inst1|inst32|inst3~q\,
	combout => \inst1|inst10~4_combout\);

-- Location: FF_X3_Y23_N7
\inst1|inst10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \STOPPER_CLK~inputclkctrl_outclk\,
	d => \inst1|inst10~4_combout\,
	clrn => \LED_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst10~q\);

-- Location: LCCOMB_X3_Y23_N10
\inst1|inst9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst9~0_combout\ = \inst1|inst9~q\ $ (((\inst1|inst24|inst4~combout\) # ((!\inst1|inst16~0_combout\) # (!\inst1|inst14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst24|inst4~combout\,
	datab => \inst1|inst14~0_combout\,
	datac => \inst1|inst9~q\,
	datad => \inst1|inst16~0_combout\,
	combout => \inst1|inst9~0_combout\);

-- Location: FF_X3_Y23_N11
\inst1|inst9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \STOPPER_CLK~inputclkctrl_outclk\,
	d => \inst1|inst9~0_combout\,
	clrn => \LED_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst9~q\);

-- Location: LCCOMB_X5_Y23_N4
\inst1|inst26|inst~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst26|inst~feeder_combout\ = \SW[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[3]~input_o\,
	combout => \inst1|inst26|inst~feeder_combout\);

-- Location: FF_X5_Y23_N5
\inst1|inst26|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \STOPPER_CLK~inputclkctrl_outclk\,
	d => \inst1|inst26|inst~feeder_combout\,
	clrn => \LED_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst26|inst~q\);

-- Location: LCCOMB_X5_Y23_N22
\inst1|inst26|inst3~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst26|inst3~feeder_combout\ = \inst1|inst26|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst26|inst~q\,
	combout => \inst1|inst26|inst3~feeder_combout\);

-- Location: FF_X5_Y23_N23
\inst1|inst26|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \STOPPER_CLK~inputclkctrl_outclk\,
	d => \inst1|inst26|inst3~feeder_combout\,
	clrn => \LED_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst26|inst3~q\);

-- Location: LCCOMB_X3_Y23_N8
\inst1|inst15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst15~0_combout\ = (\inst1|inst26|inst~q\ & ((\inst1|inst20|inst3~q\ $ (\inst1|inst20|inst~q\)) # (!\inst1|inst26|inst3~q\))) # (!\inst1|inst26|inst~q\ & ((\inst1|inst26|inst3~q\) # (\inst1|inst20|inst3~q\ $ (\inst1|inst20|inst~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst26|inst~q\,
	datab => \inst1|inst20|inst3~q\,
	datac => \inst1|inst20|inst~q\,
	datad => \inst1|inst26|inst3~q\,
	combout => \inst1|inst15~0_combout\);

-- Location: IOIBUF_X0_Y26_N8
\SW[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: LCCOMB_X5_Y23_N8
\inst1|inst34|inst~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst34|inst~feeder_combout\ = \SW[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[7]~input_o\,
	combout => \inst1|inst34|inst~feeder_combout\);

-- Location: FF_X5_Y23_N9
\inst1|inst34|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \STOPPER_CLK~inputclkctrl_outclk\,
	d => \inst1|inst34|inst~feeder_combout\,
	clrn => \LED_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst34|inst~q\);

-- Location: FF_X3_Y23_N19
\inst1|inst34|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \STOPPER_CLK~inputclkctrl_outclk\,
	asdata => \inst1|inst34|inst~q\,
	clrn => \LED_RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst34|inst3~q\);

-- Location: LCCOMB_X3_Y23_N18
\inst1|inst15~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst15~1_combout\ = (\inst1|inst24|inst3~q\ & ((\inst1|inst34|inst~q\ $ (\inst1|inst34|inst3~q\)) # (!\inst1|inst24|inst~q\))) # (!\inst1|inst24|inst3~q\ & ((\inst1|inst24|inst~q\) # (\inst1|inst34|inst~q\ $ (\inst1|inst34|inst3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst24|inst3~q\,
	datab => \inst1|inst34|inst~q\,
	datac => \inst1|inst34|inst3~q\,
	datad => \inst1|inst24|inst~q\,
	combout => \inst1|inst15~1_combout\);

-- Location: LCCOMB_X3_Y23_N4
\inst1|inst8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst8~0_combout\ = \inst1|inst8~q\ $ (((\inst1|inst15~0_combout\) # (\inst1|inst15~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst15~0_combout\,
	datac => \inst1|inst8~q\,
	datad => \inst1|inst15~1_combout\,
	combout => \inst1|inst8~0_combout\);

-- Location: FF_X3_Y23_N5
\inst1|inst8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \STOPPER_CLK~inputclkctrl_outclk\,
	d => \inst1|inst8~0_combout\,
	clrn => \LED_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst8~q\);

-- Location: LCCOMB_X3_Y23_N22
\inst1|inst21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst21~0_combout\ = \inst1|inst21~q\ $ (((\inst1|inst26|inst3~q\ $ (\inst1|inst26|inst~q\)) # (!\inst1|inst14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst26|inst3~q\,
	datab => \inst1|inst26|inst~q\,
	datac => \inst1|inst21~q\,
	datad => \inst1|inst14~0_combout\,
	combout => \inst1|inst21~0_combout\);

-- Location: FF_X3_Y23_N23
\inst1|inst21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \STOPPER_CLK~inputclkctrl_outclk\,
	d => \inst1|inst21~0_combout\,
	clrn => \LED_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst21~q\);

ww_HEX2_DP <= \HEX2_DP~output_o\;

ww_HEX0S(6) <= \HEX0S[6]~output_o\;

ww_HEX0S(5) <= \HEX0S[5]~output_o\;

ww_HEX0S(4) <= \HEX0S[4]~output_o\;

ww_HEX0S(3) <= \HEX0S[3]~output_o\;

ww_HEX0S(2) <= \HEX0S[2]~output_o\;

ww_HEX0S(1) <= \HEX0S[1]~output_o\;

ww_HEX0S(0) <= \HEX0S[0]~output_o\;

ww_HEX1S(6) <= \HEX1S[6]~output_o\;

ww_HEX1S(5) <= \HEX1S[5]~output_o\;

ww_HEX1S(4) <= \HEX1S[4]~output_o\;

ww_HEX1S(3) <= \HEX1S[3]~output_o\;

ww_HEX1S(2) <= \HEX1S[2]~output_o\;

ww_HEX1S(1) <= \HEX1S[1]~output_o\;

ww_HEX1S(0) <= \HEX1S[0]~output_o\;

ww_HEX2S(6) <= \HEX2S[6]~output_o\;

ww_HEX2S(5) <= \HEX2S[5]~output_o\;

ww_HEX2S(4) <= \HEX2S[4]~output_o\;

ww_HEX2S(3) <= \HEX2S[3]~output_o\;

ww_HEX2S(2) <= \HEX2S[2]~output_o\;

ww_HEX2S(1) <= \HEX2S[1]~output_o\;

ww_HEX2S(0) <= \HEX2S[0]~output_o\;

ww_HEX3S(6) <= \HEX3S[6]~output_o\;

ww_HEX3S(5) <= \HEX3S[5]~output_o\;

ww_HEX3S(4) <= \HEX3S[4]~output_o\;

ww_HEX3S(3) <= \HEX3S[3]~output_o\;

ww_HEX3S(2) <= \HEX3S[2]~output_o\;

ww_HEX3S(1) <= \HEX3S[1]~output_o\;

ww_HEX3S(0) <= \HEX3S[0]~output_o\;

ww_led(9) <= \led[9]~output_o\;

ww_led(8) <= \led[8]~output_o\;

ww_led(7) <= \led[7]~output_o\;

ww_led(6) <= \led[6]~output_o\;

ww_led(5) <= \led[5]~output_o\;

ww_led(4) <= \led[4]~output_o\;
END structure;


