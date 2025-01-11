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

library ieee;
use ieee.std_logic_1164.all;
library altera;
use altera.altera_syn_attributes.all;

entity Game is
	port
	(
		GAME_START : in std_logic;
		HEX0S : out std_logic_vector(6 downto 0);
		HEX1S : out std_logic_vector(6 downto 0);
		HEX2_DP : out std_logic;
		HEX2S : out std_logic_vector(6 downto 0);
		HEX3S : out std_logic_vector(6 downto 0);
		led : out std_logic_vector(9 downto 4);
		reset_LED : in std_logic;
		STOPPER_CLK : in std_logic;
		STOPPER_ENA : in std_logic;
		STOPPER_RESET : in std_logic;
		STOPPER_SEL : in std_logic;
		SW : in std_logic_vector(7 downto 0)
	);

end Game;

architecture ppl_type of Game is

begin

end;
