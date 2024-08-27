-- Copyright (C) 2021  Intel Corporation. All rights reserved.
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
-- VERSION "Version 21.1.0 Build 842 10/21/2021 SJ Lite Edition"

-- DATE "08/27/2024 13:59:12"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	D_comparison IS
    PORT (
	Qa : OUT std_logic;
	D : IN std_logic;
	Clk : IN std_logic;
	Qb : OUT std_logic;
	Qc : OUT std_logic
	);
END D_comparison;

-- Design Ports Information
-- Qa	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Qb	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Qc	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF D_comparison IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Qa : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_Clk : std_logic;
SIGNAL ww_Qb : std_logic;
SIGNAL ww_Qc : std_logic;
SIGNAL \Clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Qa~output_o\ : std_logic;
SIGNAL \Qb~output_o\ : std_logic;
SIGNAL \Qc~output_o\ : std_logic;
SIGNAL \D~input_o\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \Clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|a~0_combout\ : std_logic;
SIGNAL \inst1|b2v_inst|a~0_combout\ : std_logic;
SIGNAL \inst1|b2v_inst1|a~0_combout\ : std_logic;
SIGNAL \inst2|b2v_inst|a~0_combout\ : std_logic;
SIGNAL \inst2|b2v_inst1|a~0_combout\ : std_logic;
SIGNAL \inst2|b2v_inst1|ALT_INV_a~0_combout\ : std_logic;
SIGNAL \inst1|b2v_inst1|ALT_INV_a~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_a~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

Qa <= ww_Qa;
ww_D <= D;
ww_Clk <= Clk;
Qb <= ww_Qb;
Qc <= ww_Qc;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clk~input_o\);
\inst2|b2v_inst1|ALT_INV_a~0_combout\ <= NOT \inst2|b2v_inst1|a~0_combout\;
\inst1|b2v_inst1|ALT_INV_a~0_combout\ <= NOT \inst1|b2v_inst1|a~0_combout\;
\inst|ALT_INV_a~0_combout\ <= NOT \inst|a~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X23_Y73_N9
\Qa~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_a~0_combout\,
	devoe => ww_devoe,
	o => \Qa~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\Qb~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|b2v_inst1|ALT_INV_a~0_combout\,
	devoe => ww_devoe,
	o => \Qb~output_o\);

-- Location: IOOBUF_X25_Y73_N16
\Qc~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|b2v_inst1|ALT_INV_a~0_combout\,
	devoe => ww_devoe,
	o => \Qc~output_o\);

-- Location: IOIBUF_X25_Y73_N22
\D~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D,
	o => \D~input_o\);

-- Location: IOIBUF_X0_Y36_N8
\Clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk,
	o => \Clk~input_o\);

-- Location: CLKCTRL_G2
\Clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X25_Y72_N12
\inst|a~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|a~0_combout\ = (GLOBAL(\Clk~inputclkctrl_outclk\) & ((!\D~input_o\))) # (!GLOBAL(\Clk~inputclkctrl_outclk\) & (\inst|a~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|a~0_combout\,
	datac => \D~input_o\,
	datad => \Clk~inputclkctrl_outclk\,
	combout => \inst|a~0_combout\);

-- Location: LCCOMB_X25_Y72_N18
\inst1|b2v_inst|a~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|b2v_inst|a~0_combout\ = (GLOBAL(\Clk~inputclkctrl_outclk\) & (\inst1|b2v_inst|a~0_combout\)) # (!GLOBAL(\Clk~inputclkctrl_outclk\) & ((!\D~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|b2v_inst|a~0_combout\,
	datac => \D~input_o\,
	datad => \Clk~inputclkctrl_outclk\,
	combout => \inst1|b2v_inst|a~0_combout\);

-- Location: LCCOMB_X25_Y72_N2
\inst1|b2v_inst1|a~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|b2v_inst1|a~0_combout\ = (GLOBAL(\Clk~inputclkctrl_outclk\) & ((\inst1|b2v_inst|a~0_combout\))) # (!GLOBAL(\Clk~inputclkctrl_outclk\) & (\inst1|b2v_inst1|a~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|b2v_inst1|a~0_combout\,
	datac => \Clk~inputclkctrl_outclk\,
	datad => \inst1|b2v_inst|a~0_combout\,
	combout => \inst1|b2v_inst1|a~0_combout\);

-- Location: LCCOMB_X25_Y72_N28
\inst2|b2v_inst|a~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|b2v_inst|a~0_combout\ = (GLOBAL(\Clk~inputclkctrl_outclk\) & ((!\D~input_o\))) # (!GLOBAL(\Clk~inputclkctrl_outclk\) & (\inst2|b2v_inst|a~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|b2v_inst|a~0_combout\,
	datac => \D~input_o\,
	datad => \Clk~inputclkctrl_outclk\,
	combout => \inst2|b2v_inst|a~0_combout\);

-- Location: LCCOMB_X25_Y72_N0
\inst2|b2v_inst1|a~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|b2v_inst1|a~0_combout\ = (GLOBAL(\Clk~inputclkctrl_outclk\) & (\inst2|b2v_inst1|a~0_combout\)) # (!GLOBAL(\Clk~inputclkctrl_outclk\) & ((\inst2|b2v_inst|a~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|b2v_inst1|a~0_combout\,
	datac => \Clk~inputclkctrl_outclk\,
	datad => \inst2|b2v_inst|a~0_combout\,
	combout => \inst2|b2v_inst1|a~0_combout\);

ww_Qa <= \Qa~output_o\;

ww_Qb <= \Qb~output_o\;

ww_Qc <= \Qc~output_o\;
END structure;


