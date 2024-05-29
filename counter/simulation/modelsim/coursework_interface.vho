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

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "05/20/2023 18:12:35"

-- 
-- Device: Altera EP2C5Q208C8 Package PQFP208
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	coursework_interface IS
    PORT (
	start : OUT std_logic;
	Data_in : IN std_logic_vector(7 DOWNTO 0);
	Clock : IN std_logic;
	nIOW : IN std_logic;
	mode : OUT std_logic;
	reset : OUT std_logic;
	Enable : OUT std_logic;
	Addr : IN std_logic_vector(7 DOWNTO 0);
	Q : OUT std_logic_vector(9 DOWNTO 0)
	);
END coursework_interface;

-- Design Ports Information
-- start	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Data_in[7]	=>  Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Data_in[6]	=>  Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Data_in[5]	=>  Location: PIN_160,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Data_in[4]	=>  Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Data_in[3]	=>  Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mode	=>  Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reset	=>  Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Enable	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[9]	=>  Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[8]	=>  Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[7]	=>  Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[6]	=>  Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[5]	=>  Location: PIN_56,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[4]	=>  Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[3]	=>  Location: PIN_35,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[2]	=>  Location: PIN_46,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[1]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[0]	=>  Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Addr[6]	=>  Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Addr[5]	=>  Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Addr[4]	=>  Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Addr[7]	=>  Location: PIN_13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Addr[3]	=>  Location: PIN_10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Addr[2]	=>  Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Addr[1]	=>  Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Addr[0]	=>  Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Data_in[0]	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Clock	=>  Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- nIOW	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Data_in[1]	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Data_in[2]	=>  Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF coursework_interface IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_Data_in : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Clock : std_logic;
SIGNAL ww_nIOW : std_logic;
SIGNAL ww_mode : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_Enable : std_logic;
SIGNAL ww_Addr : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Q : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clock~combout\ : std_logic;
SIGNAL \Clock~clkctrl_outclk\ : std_logic;
SIGNAL \inst18~feeder_combout\ : std_logic;
SIGNAL \nIOW~combout\ : std_logic;
SIGNAL \inst18~regout\ : std_logic;
SIGNAL \inst19~feeder_combout\ : std_logic;
SIGNAL \inst19~regout\ : std_logic;
SIGNAL \inst20~feeder_combout\ : std_logic;
SIGNAL \inst20~regout\ : std_logic;
SIGNAL \inst2~1_combout\ : std_logic;
SIGNAL \inst2~0_combout\ : std_logic;
SIGNAL \inst2~combout\ : std_logic;
SIGNAL \inst~combout\ : std_logic;
SIGNAL \inst~clkctrl_outclk\ : std_logic;
SIGNAL \inst26|inst12~0_combout\ : std_logic;
SIGNAL \inst26|inst12~regout\ : std_logic;
SIGNAL \inst26|inst13~2_cout\ : std_logic;
SIGNAL \inst26|inst13~3_combout\ : std_logic;
SIGNAL \inst26|inst13~regout\ : std_logic;
SIGNAL \inst26|inst13~4\ : std_logic;
SIGNAL \inst26|inst17~2\ : std_logic;
SIGNAL \inst26|inst18~1_combout\ : std_logic;
SIGNAL \inst26|inst18~regout\ : std_logic;
SIGNAL \inst26|inst18~2\ : std_logic;
SIGNAL \inst26|inst19~2\ : std_logic;
SIGNAL \inst26|inst20~1_combout\ : std_logic;
SIGNAL \inst26|inst20~regout\ : std_logic;
SIGNAL \inst26|inst20~2\ : std_logic;
SIGNAL \inst26|inst21~2\ : std_logic;
SIGNAL \inst26|inst22~1_combout\ : std_logic;
SIGNAL \inst26|inst22~regout\ : std_logic;
SIGNAL \inst26|inst22~2\ : std_logic;
SIGNAL \inst26|inst23~1_combout\ : std_logic;
SIGNAL \inst26|inst23~regout\ : std_logic;
SIGNAL \inst26|inst23~2\ : std_logic;
SIGNAL \inst26|inst24~1_combout\ : std_logic;
SIGNAL \inst26|inst24~regout\ : std_logic;
SIGNAL \inst26|inst21~1_combout\ : std_logic;
SIGNAL \inst26|inst21~regout\ : std_logic;
SIGNAL \inst26|inst19~1_combout\ : std_logic;
SIGNAL \inst26|inst19~regout\ : std_logic;
SIGNAL \inst26|inst17~1_combout\ : std_logic;
SIGNAL \inst26|inst17~regout\ : std_logic;
SIGNAL \Data_in~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Addr~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_nIOW~combout\ : std_logic;
SIGNAL \ALT_INV_inst2~combout\ : std_logic;

BEGIN

start <= ww_start;
ww_Data_in <= Data_in;
ww_Clock <= Clock;
ww_nIOW <= nIOW;
mode <= ww_mode;
reset <= ww_reset;
Enable <= ww_Enable;
ww_Addr <= Addr;
Q <= ww_Q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst~combout\);

\Clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Clock~combout\);
\ALT_INV_nIOW~combout\ <= NOT \nIOW~combout\;
\ALT_INV_inst2~combout\ <= NOT \inst2~combout\;

-- Location: PIN_13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Addr[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Addr(7),
	combout => \Addr~combout\(7));

-- Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Addr[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Addr(1),
	combout => \Addr~combout\(1));

-- Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Clock~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Clock,
	combout => \Clock~combout\);

-- Location: CLKCTRL_G2
\Clock~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clock~clkctrl_outclk\);

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Data_in[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Data_in(0),
	combout => \Data_in~combout\(0));

-- Location: LCCOMB_X1_Y2_N0
\inst18~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18~feeder_combout\ = \Data_in~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data_in~combout\(0),
	combout => \inst18~feeder_combout\);

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nIOW~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_nIOW,
	combout => \nIOW~combout\);

-- Location: LCFF_X1_Y2_N1
inst18 : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst18~feeder_combout\,
	ena => \ALT_INV_nIOW~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst18~regout\);

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Data_in[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Data_in(1),
	combout => \Data_in~combout\(1));

-- Location: LCCOMB_X1_Y2_N10
\inst19~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst19~feeder_combout\ = \Data_in~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data_in~combout\(1),
	combout => \inst19~feeder_combout\);

-- Location: LCFF_X1_Y2_N11
inst19 : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst19~feeder_combout\,
	ena => \ALT_INV_nIOW~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst19~regout\);

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Data_in[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Data_in(2),
	combout => \Data_in~combout\(2));

-- Location: LCCOMB_X1_Y2_N4
\inst20~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst20~feeder_combout\ = \Data_in~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data_in~combout\(2),
	combout => \inst20~feeder_combout\);

-- Location: LCFF_X1_Y2_N5
inst20 : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst20~feeder_combout\,
	ena => \ALT_INV_nIOW~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst20~regout\);

-- Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Addr[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Addr(2),
	combout => \Addr~combout\(2));

-- Location: PIN_10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Addr[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Addr(3),
	combout => \Addr~combout\(3));

-- Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Addr[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Addr(0),
	combout => \Addr~combout\(0));

-- Location: LCCOMB_X1_Y6_N24
\inst2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2~1_combout\ = (\Addr~combout\(1)) # ((\Addr~combout\(2)) # ((\Addr~combout\(3)) # (\Addr~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Addr~combout\(1),
	datab => \Addr~combout\(2),
	datac => \Addr~combout\(3),
	datad => \Addr~combout\(0),
	combout => \inst2~1_combout\);

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Addr[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Addr(6),
	combout => \Addr~combout\(6));

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Addr[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Addr(4),
	combout => \Addr~combout\(4));

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Addr[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Addr(5),
	combout => \Addr~combout\(5));

-- Location: LCCOMB_X1_Y11_N16
\inst2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2~0_combout\ = ((\Addr~combout\(6)) # ((\Addr~combout\(4)) # (\Addr~combout\(5)))) # (!\Addr~combout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Addr~combout\(7),
	datab => \Addr~combout\(6),
	datac => \Addr~combout\(4),
	datad => \Addr~combout\(5),
	combout => \inst2~0_combout\);

-- Location: LCCOMB_X1_Y6_N22
inst2 : cycloneii_lcell_comb
-- Equation(s):
-- \inst2~combout\ = (\inst2~1_combout\) # (\inst2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2~1_combout\,
	datac => \inst2~0_combout\,
	combout => \inst2~combout\);

-- Location: LCCOMB_X1_Y6_N20
inst : cycloneii_lcell_comb
-- Equation(s):
-- \inst~combout\ = LCELL((!\inst2~0_combout\ & (!\inst2~1_combout\ & \Clock~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2~0_combout\,
	datac => \inst2~1_combout\,
	datad => \Clock~combout\,
	combout => \inst~combout\);

-- Location: CLKCTRL_G1
\inst~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y2_N2
\inst26|inst12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst26|inst12~0_combout\ = !\inst26|inst12~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst26|inst12~regout\,
	combout => \inst26|inst12~0_combout\);

-- Location: LCFF_X1_Y2_N3
\inst26|inst12\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst~clkctrl_outclk\,
	datain => \inst26|inst12~0_combout\,
	aclr => \inst20~regout\,
	ena => \inst18~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst26|inst12~regout\);

-- Location: LCCOMB_X1_Y2_N12
\inst26|inst13~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst26|inst13~2_cout\ = CARRY(\inst26|inst12~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst26|inst12~regout\,
	datad => VCC,
	cout => \inst26|inst13~2_cout\);

-- Location: LCCOMB_X1_Y2_N14
\inst26|inst13~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst26|inst13~3_combout\ = (\inst19~regout\ & ((\inst26|inst13~regout\ & (\inst26|inst13~2_cout\ & VCC)) # (!\inst26|inst13~regout\ & (!\inst26|inst13~2_cout\)))) # (!\inst19~regout\ & ((\inst26|inst13~regout\ & (!\inst26|inst13~2_cout\)) # 
-- (!\inst26|inst13~regout\ & ((\inst26|inst13~2_cout\) # (GND)))))
-- \inst26|inst13~4\ = CARRY((\inst19~regout\ & (!\inst26|inst13~regout\ & !\inst26|inst13~2_cout\)) # (!\inst19~regout\ & ((!\inst26|inst13~2_cout\) # (!\inst26|inst13~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19~regout\,
	datab => \inst26|inst13~regout\,
	datad => VCC,
	cin => \inst26|inst13~2_cout\,
	combout => \inst26|inst13~3_combout\,
	cout => \inst26|inst13~4\);

-- Location: LCFF_X1_Y2_N15
\inst26|inst13\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst~clkctrl_outclk\,
	datain => \inst26|inst13~3_combout\,
	aclr => \inst20~regout\,
	ena => \inst18~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst26|inst13~regout\);

-- Location: LCCOMB_X1_Y2_N16
\inst26|inst17~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst26|inst17~1_combout\ = ((\inst26|inst17~regout\ $ (\inst19~regout\ $ (\inst26|inst13~4\)))) # (GND)
-- \inst26|inst17~2\ = CARRY((\inst26|inst17~regout\ & ((!\inst26|inst13~4\) # (!\inst19~regout\))) # (!\inst26|inst17~regout\ & (!\inst19~regout\ & !\inst26|inst13~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|inst17~regout\,
	datab => \inst19~regout\,
	datad => VCC,
	cin => \inst26|inst13~4\,
	combout => \inst26|inst17~1_combout\,
	cout => \inst26|inst17~2\);

-- Location: LCCOMB_X1_Y2_N18
\inst26|inst18~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst26|inst18~1_combout\ = (\inst26|inst18~regout\ & (\inst26|inst17~2\ & VCC)) # (!\inst26|inst18~regout\ & (!\inst26|inst17~2\))
-- \inst26|inst18~2\ = CARRY((!\inst26|inst18~regout\ & !\inst26|inst17~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst26|inst18~regout\,
	datad => VCC,
	cin => \inst26|inst17~2\,
	combout => \inst26|inst18~1_combout\,
	cout => \inst26|inst18~2\);

-- Location: LCFF_X1_Y2_N19
\inst26|inst18\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst~clkctrl_outclk\,
	datain => \inst26|inst18~1_combout\,
	aclr => \inst20~regout\,
	ena => \inst18~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst26|inst18~regout\);

-- Location: LCCOMB_X1_Y2_N20
\inst26|inst19~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst26|inst19~1_combout\ = (\inst26|inst19~regout\ & ((GND) # (!\inst26|inst18~2\))) # (!\inst26|inst19~regout\ & (\inst26|inst18~2\ $ (GND)))
-- \inst26|inst19~2\ = CARRY((\inst26|inst19~regout\) # (!\inst26|inst18~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|inst19~regout\,
	datad => VCC,
	cin => \inst26|inst18~2\,
	combout => \inst26|inst19~1_combout\,
	cout => \inst26|inst19~2\);

-- Location: LCCOMB_X1_Y2_N22
\inst26|inst20~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst26|inst20~1_combout\ = (\inst26|inst20~regout\ & (\inst26|inst19~2\ & VCC)) # (!\inst26|inst20~regout\ & (!\inst26|inst19~2\))
-- \inst26|inst20~2\ = CARRY((!\inst26|inst20~regout\ & !\inst26|inst19~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst26|inst20~regout\,
	datad => VCC,
	cin => \inst26|inst19~2\,
	combout => \inst26|inst20~1_combout\,
	cout => \inst26|inst20~2\);

-- Location: LCFF_X1_Y2_N23
\inst26|inst20\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst~clkctrl_outclk\,
	datain => \inst26|inst20~1_combout\,
	aclr => \inst20~regout\,
	ena => \inst18~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst26|inst20~regout\);

-- Location: LCCOMB_X1_Y2_N24
\inst26|inst21~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst26|inst21~1_combout\ = (\inst26|inst21~regout\ & ((GND) # (!\inst26|inst20~2\))) # (!\inst26|inst21~regout\ & (\inst26|inst20~2\ $ (GND)))
-- \inst26|inst21~2\ = CARRY((\inst26|inst21~regout\) # (!\inst26|inst20~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|inst21~regout\,
	datad => VCC,
	cin => \inst26|inst20~2\,
	combout => \inst26|inst21~1_combout\,
	cout => \inst26|inst21~2\);

-- Location: LCCOMB_X1_Y2_N26
\inst26|inst22~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst26|inst22~1_combout\ = (\inst26|inst22~regout\ & (\inst26|inst21~2\ & VCC)) # (!\inst26|inst22~regout\ & (!\inst26|inst21~2\))
-- \inst26|inst22~2\ = CARRY((!\inst26|inst22~regout\ & !\inst26|inst21~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst26|inst22~regout\,
	datad => VCC,
	cin => \inst26|inst21~2\,
	combout => \inst26|inst22~1_combout\,
	cout => \inst26|inst22~2\);

-- Location: LCFF_X1_Y2_N27
\inst26|inst22\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst~clkctrl_outclk\,
	datain => \inst26|inst22~1_combout\,
	aclr => \inst20~regout\,
	ena => \inst18~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst26|inst22~regout\);

-- Location: LCCOMB_X1_Y2_N28
\inst26|inst23~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst26|inst23~1_combout\ = (\inst26|inst23~regout\ & ((GND) # (!\inst26|inst22~2\))) # (!\inst26|inst23~regout\ & (\inst26|inst22~2\ $ (GND)))
-- \inst26|inst23~2\ = CARRY((\inst26|inst23~regout\) # (!\inst26|inst22~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst26|inst23~regout\,
	datad => VCC,
	cin => \inst26|inst22~2\,
	combout => \inst26|inst23~1_combout\,
	cout => \inst26|inst23~2\);

-- Location: LCFF_X1_Y2_N29
\inst26|inst23\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst~clkctrl_outclk\,
	datain => \inst26|inst23~1_combout\,
	aclr => \inst20~regout\,
	ena => \inst18~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst26|inst23~regout\);

-- Location: LCCOMB_X1_Y2_N30
\inst26|inst24~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst26|inst24~1_combout\ = \inst26|inst23~2\ $ (!\inst26|inst24~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst26|inst24~regout\,
	cin => \inst26|inst23~2\,
	combout => \inst26|inst24~1_combout\);

-- Location: LCFF_X1_Y2_N31
\inst26|inst24\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst~clkctrl_outclk\,
	datain => \inst26|inst24~1_combout\,
	aclr => \inst20~regout\,
	ena => \inst18~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst26|inst24~regout\);

-- Location: LCFF_X1_Y2_N25
\inst26|inst21\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst~clkctrl_outclk\,
	datain => \inst26|inst21~1_combout\,
	aclr => \inst20~regout\,
	ena => \inst18~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst26|inst21~regout\);

-- Location: LCFF_X1_Y2_N21
\inst26|inst19\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst~clkctrl_outclk\,
	datain => \inst26|inst19~1_combout\,
	aclr => \inst20~regout\,
	ena => \inst18~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst26|inst19~regout\);

-- Location: LCFF_X1_Y2_N17
\inst26|inst17\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst~clkctrl_outclk\,
	datain => \inst26|inst17~1_combout\,
	aclr => \inst20~regout\,
	ena => \inst18~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst26|inst17~regout\);

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\start~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst18~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_start);

-- Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Data_in[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Data_in(7));

-- Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Data_in[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Data_in(6));

-- Location: PIN_160,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Data_in[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Data_in(5));

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Data_in[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Data_in(4));

-- Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Data_in[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Data_in(3));

-- Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mode~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst19~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mode);

-- Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\reset~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst20~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_reset);

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Enable~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_inst2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Enable);

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst26|inst24~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(9));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst26|inst23~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(8));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst26|inst22~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(7));

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst26|inst21~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(6));

-- Location: PIN_56,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst26|inst20~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(5));

-- Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst26|inst19~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(4));

-- Location: PIN_35,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst26|inst18~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(3));

-- Location: PIN_46,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst26|inst17~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(2));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst26|inst13~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(1));

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst26|inst12~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(0));
END structure;


