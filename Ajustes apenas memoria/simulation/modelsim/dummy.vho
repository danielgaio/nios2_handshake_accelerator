-- Copyright (C) 2016  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.1.0 Build 196 10/24/2016 SJ Lite Edition"

-- DATE "05/10/2021 08:14:03"

-- 
-- Device: Altera EP4CE6F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	memory_top IS
    PORT (
	Clock : IN std_logic;
	Resetn : IN std_logic;
	read : IN std_logic;
	write : IN std_logic;
	Input_acel : IN std_logic_vector(31 DOWNTO 0);
	Output_acel : BUFFER std_logic_vector(31 DOWNTO 0)
	);
END memory_top;

-- Design Ports Information
-- read	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_acel[0]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_acel[1]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_acel[2]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_acel[3]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_acel[4]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_acel[5]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_acel[6]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_acel[7]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_acel[8]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_acel[15]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_acel[16]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_acel[17]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_acel[18]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_acel[19]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_acel[20]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_acel[21]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_acel[22]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_acel[23]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_acel[24]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_acel[25]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_acel[26]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_acel[27]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_acel[28]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_acel[29]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_acel[30]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_acel[31]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output_acel[0]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output_acel[1]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output_acel[2]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output_acel[3]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output_acel[4]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output_acel[5]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output_acel[6]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output_acel[7]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output_acel[8]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output_acel[9]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output_acel[10]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output_acel[11]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output_acel[12]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output_acel[13]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output_acel[14]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output_acel[15]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output_acel[16]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output_acel[17]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output_acel[18]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output_acel[19]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output_acel[20]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output_acel[21]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output_acel[22]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output_acel[23]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output_acel[24]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output_acel[25]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output_acel[26]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output_acel[27]	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output_acel[28]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output_acel[29]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output_acel[30]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output_acel[31]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_acel[11]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_acel[12]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_acel[13]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_acel[14]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_acel[9]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_acel[10]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Resetn	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF memory_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_Resetn : std_logic;
SIGNAL ww_read : std_logic;
SIGNAL ww_write : std_logic;
SIGNAL ww_Input_acel : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Output_acel : std_logic_vector(31 DOWNTO 0);
SIGNAL \Resetn~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \read~input_o\ : std_logic;
SIGNAL \write~input_o\ : std_logic;
SIGNAL \Input_acel[0]~input_o\ : std_logic;
SIGNAL \Input_acel[1]~input_o\ : std_logic;
SIGNAL \Input_acel[2]~input_o\ : std_logic;
SIGNAL \Input_acel[3]~input_o\ : std_logic;
SIGNAL \Input_acel[4]~input_o\ : std_logic;
SIGNAL \Input_acel[5]~input_o\ : std_logic;
SIGNAL \Input_acel[6]~input_o\ : std_logic;
SIGNAL \Input_acel[7]~input_o\ : std_logic;
SIGNAL \Input_acel[8]~input_o\ : std_logic;
SIGNAL \Input_acel[15]~input_o\ : std_logic;
SIGNAL \Input_acel[16]~input_o\ : std_logic;
SIGNAL \Input_acel[17]~input_o\ : std_logic;
SIGNAL \Input_acel[18]~input_o\ : std_logic;
SIGNAL \Input_acel[19]~input_o\ : std_logic;
SIGNAL \Input_acel[20]~input_o\ : std_logic;
SIGNAL \Input_acel[21]~input_o\ : std_logic;
SIGNAL \Input_acel[22]~input_o\ : std_logic;
SIGNAL \Input_acel[23]~input_o\ : std_logic;
SIGNAL \Input_acel[24]~input_o\ : std_logic;
SIGNAL \Input_acel[25]~input_o\ : std_logic;
SIGNAL \Input_acel[26]~input_o\ : std_logic;
SIGNAL \Input_acel[27]~input_o\ : std_logic;
SIGNAL \Input_acel[28]~input_o\ : std_logic;
SIGNAL \Input_acel[29]~input_o\ : std_logic;
SIGNAL \Input_acel[30]~input_o\ : std_logic;
SIGNAL \Input_acel[31]~input_o\ : std_logic;
SIGNAL \Output_acel[0]~output_o\ : std_logic;
SIGNAL \Output_acel[1]~output_o\ : std_logic;
SIGNAL \Output_acel[2]~output_o\ : std_logic;
SIGNAL \Output_acel[3]~output_o\ : std_logic;
SIGNAL \Output_acel[4]~output_o\ : std_logic;
SIGNAL \Output_acel[5]~output_o\ : std_logic;
SIGNAL \Output_acel[6]~output_o\ : std_logic;
SIGNAL \Output_acel[7]~output_o\ : std_logic;
SIGNAL \Output_acel[8]~output_o\ : std_logic;
SIGNAL \Output_acel[9]~output_o\ : std_logic;
SIGNAL \Output_acel[10]~output_o\ : std_logic;
SIGNAL \Output_acel[11]~output_o\ : std_logic;
SIGNAL \Output_acel[12]~output_o\ : std_logic;
SIGNAL \Output_acel[13]~output_o\ : std_logic;
SIGNAL \Output_acel[14]~output_o\ : std_logic;
SIGNAL \Output_acel[15]~output_o\ : std_logic;
SIGNAL \Output_acel[16]~output_o\ : std_logic;
SIGNAL \Output_acel[17]~output_o\ : std_logic;
SIGNAL \Output_acel[18]~output_o\ : std_logic;
SIGNAL \Output_acel[19]~output_o\ : std_logic;
SIGNAL \Output_acel[20]~output_o\ : std_logic;
SIGNAL \Output_acel[21]~output_o\ : std_logic;
SIGNAL \Output_acel[22]~output_o\ : std_logic;
SIGNAL \Output_acel[23]~output_o\ : std_logic;
SIGNAL \Output_acel[24]~output_o\ : std_logic;
SIGNAL \Output_acel[25]~output_o\ : std_logic;
SIGNAL \Output_acel[26]~output_o\ : std_logic;
SIGNAL \Output_acel[27]~output_o\ : std_logic;
SIGNAL \Output_acel[28]~output_o\ : std_logic;
SIGNAL \Output_acel[29]~output_o\ : std_logic;
SIGNAL \Output_acel[30]~output_o\ : std_logic;
SIGNAL \Output_acel[31]~output_o\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \Clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \Input_acel[11]~input_o\ : std_logic;
SIGNAL \Input_acel[10]~input_o\ : std_logic;
SIGNAL \Input_acel[9]~input_o\ : std_logic;
SIGNAL \my_memory_fsm|Selector2~0_combout\ : std_logic;
SIGNAL \my_memory_fsm|state.s2~feeder_combout\ : std_logic;
SIGNAL \Resetn~input_o\ : std_logic;
SIGNAL \Resetn~inputclkctrl_outclk\ : std_logic;
SIGNAL \my_memory_fsm|state.s2~q\ : std_logic;
SIGNAL \my_memory_fsm|state~11_combout\ : std_logic;
SIGNAL \my_memory_fsm|state.s3~feeder_combout\ : std_logic;
SIGNAL \my_memory_fsm|state.s3~q\ : std_logic;
SIGNAL \my_memory_fsm|Selector1~0_combout\ : std_logic;
SIGNAL \my_memory_fsm|state.s0~feeder_combout\ : std_logic;
SIGNAL \my_memory_fsm|state.s0~q\ : std_logic;
SIGNAL \my_memory_fsm|state~10_combout\ : std_logic;
SIGNAL \my_memory_fsm|state.s1~feeder_combout\ : std_logic;
SIGNAL \my_memory_fsm|state.s1~q\ : std_logic;
SIGNAL \my_memory_fsm|read_address~0_combout\ : std_logic;
SIGNAL \my_memory_fsm|read_address~combout\ : std_logic;
SIGNAL \my_memory_fsm|dado_ptr~combout\ : std_logic;
SIGNAL \my_memory|data_out[0]~0_combout\ : std_logic;
SIGNAL \Input_acel[12]~input_o\ : std_logic;
SIGNAL \my_memory|address_reg[1]~feeder_combout\ : std_logic;
SIGNAL \my_memory|data_out[1]~feeder_combout\ : std_logic;
SIGNAL \Input_acel[13]~input_o\ : std_logic;
SIGNAL \my_memory|address_reg[2]~feeder_combout\ : std_logic;
SIGNAL \my_memory|data_out[2]~feeder_combout\ : std_logic;
SIGNAL \Input_acel[14]~input_o\ : std_logic;
SIGNAL \my_memory|data_out[3]~feeder_combout\ : std_logic;
SIGNAL \my_memory_fsm|Ack_out_sm~combout\ : std_logic;
SIGNAL \my_memory|data_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \my_memory|address_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Resetn~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_Clock <= Clock;
ww_Resetn <= Resetn;
ww_read <= read;
ww_write <= write;
ww_Input_acel <= Input_acel;
Output_acel <= ww_Output_acel;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Resetn~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Resetn~input_o\);

\Clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clock~input_o\);
\ALT_INV_Resetn~inputclkctrl_outclk\ <= NOT \Resetn~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y8_N23
\Output_acel[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \my_memory|data_out\(0),
	devoe => ww_devoe,
	o => \Output_acel[0]~output_o\);

-- Location: IOOBUF_X0_Y8_N2
\Output_acel[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \my_memory|data_out\(1),
	devoe => ww_devoe,
	o => \Output_acel[1]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\Output_acel[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \my_memory|data_out\(2),
	devoe => ww_devoe,
	o => \Output_acel[2]~output_o\);

-- Location: IOOBUF_X0_Y7_N23
\Output_acel[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \my_memory|data_out\(3),
	devoe => ww_devoe,
	o => \Output_acel[3]~output_o\);

-- Location: IOOBUF_X21_Y24_N9
\Output_acel[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Output_acel[4]~output_o\);

-- Location: IOOBUF_X34_Y7_N16
\Output_acel[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Output_acel[5]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\Output_acel[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Output_acel[6]~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\Output_acel[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Output_acel[7]~output_o\);

-- Location: IOOBUF_X0_Y10_N2
\Output_acel[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \my_memory_fsm|dado_ptr~combout\,
	devoe => ww_devoe,
	o => \Output_acel[8]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\Output_acel[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \my_memory_fsm|Ack_out_sm~combout\,
	devoe => ww_devoe,
	o => \Output_acel[9]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\Output_acel[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Output_acel[10]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\Output_acel[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Output_acel[11]~output_o\);

-- Location: IOOBUF_X1_Y24_N2
\Output_acel[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Output_acel[12]~output_o\);

-- Location: IOOBUF_X34_Y8_N16
\Output_acel[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Output_acel[13]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\Output_acel[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Output_acel[14]~output_o\);

-- Location: IOOBUF_X34_Y3_N23
\Output_acel[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Output_acel[15]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\Output_acel[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Output_acel[16]~output_o\);

-- Location: IOOBUF_X28_Y0_N9
\Output_acel[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Output_acel[17]~output_o\);

-- Location: IOOBUF_X13_Y0_N23
\Output_acel[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Output_acel[18]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\Output_acel[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Output_acel[19]~output_o\);

-- Location: IOOBUF_X1_Y24_N9
\Output_acel[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Output_acel[20]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\Output_acel[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Output_acel[21]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\Output_acel[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Output_acel[22]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\Output_acel[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Output_acel[23]~output_o\);

-- Location: IOOBUF_X13_Y24_N9
\Output_acel[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Output_acel[24]~output_o\);

-- Location: IOOBUF_X5_Y24_N23
\Output_acel[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Output_acel[25]~output_o\);

-- Location: IOOBUF_X9_Y24_N23
\Output_acel[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Output_acel[26]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\Output_acel[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Output_acel[27]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\Output_acel[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Output_acel[28]~output_o\);

-- Location: IOOBUF_X0_Y22_N2
\Output_acel[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Output_acel[29]~output_o\);

-- Location: IOOBUF_X3_Y24_N23
\Output_acel[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Output_acel[30]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\Output_acel[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Output_acel[31]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\Clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock,
	o => \Clock~input_o\);

-- Location: CLKCTRL_G2
\Clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y7_N1
\Input_acel[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_acel(11),
	o => \Input_acel[11]~input_o\);

-- Location: IOIBUF_X0_Y10_N15
\Input_acel[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_acel(10),
	o => \Input_acel[10]~input_o\);

-- Location: IOIBUF_X0_Y8_N8
\Input_acel[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_acel(9),
	o => \Input_acel[9]~input_o\);

-- Location: LCCOMB_X1_Y11_N26
\my_memory_fsm|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_memory_fsm|Selector2~0_combout\ = (\Input_acel[10]~input_o\ & (!\Input_acel[9]~input_o\ & ((\my_memory_fsm|state.s2~q\)))) # (!\Input_acel[10]~input_o\ & ((\my_memory_fsm|state.s1~q\) # ((!\Input_acel[9]~input_o\ & \my_memory_fsm|state.s2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Input_acel[10]~input_o\,
	datab => \Input_acel[9]~input_o\,
	datac => \my_memory_fsm|state.s1~q\,
	datad => \my_memory_fsm|state.s2~q\,
	combout => \my_memory_fsm|Selector2~0_combout\);

-- Location: LCCOMB_X1_Y11_N12
\my_memory_fsm|state.s2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_memory_fsm|state.s2~feeder_combout\ = \my_memory_fsm|Selector2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_memory_fsm|Selector2~0_combout\,
	combout => \my_memory_fsm|state.s2~feeder_combout\);

-- Location: IOIBUF_X0_Y11_N15
\Resetn~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Resetn,
	o => \Resetn~input_o\);

-- Location: CLKCTRL_G4
\Resetn~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Resetn~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Resetn~inputclkctrl_outclk\);

-- Location: FF_X1_Y11_N13
\my_memory_fsm|state.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \my_memory_fsm|state.s2~feeder_combout\,
	clrn => \ALT_INV_Resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_memory_fsm|state.s2~q\);

-- Location: LCCOMB_X1_Y11_N28
\my_memory_fsm|state~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_memory_fsm|state~11_combout\ = (\my_memory_fsm|state.s2~q\ & \Input_acel[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_memory_fsm|state.s2~q\,
	datac => \Input_acel[9]~input_o\,
	combout => \my_memory_fsm|state~11_combout\);

-- Location: LCCOMB_X1_Y11_N24
\my_memory_fsm|state.s3~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_memory_fsm|state.s3~feeder_combout\ = \my_memory_fsm|state~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_memory_fsm|state~11_combout\,
	combout => \my_memory_fsm|state.s3~feeder_combout\);

-- Location: FF_X1_Y11_N25
\my_memory_fsm|state.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \my_memory_fsm|state.s3~feeder_combout\,
	clrn => \ALT_INV_Resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_memory_fsm|state.s3~q\);

-- Location: LCCOMB_X1_Y11_N16
\my_memory_fsm|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_memory_fsm|Selector1~0_combout\ = (!\my_memory_fsm|state.s3~q\ & ((\Input_acel[10]~input_o\) # (\my_memory_fsm|state.s0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Input_acel[10]~input_o\,
	datac => \my_memory_fsm|state.s3~q\,
	datad => \my_memory_fsm|state.s0~q\,
	combout => \my_memory_fsm|Selector1~0_combout\);

-- Location: LCCOMB_X1_Y11_N10
\my_memory_fsm|state.s0~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_memory_fsm|state.s0~feeder_combout\ = \my_memory_fsm|Selector1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_memory_fsm|Selector1~0_combout\,
	combout => \my_memory_fsm|state.s0~feeder_combout\);

-- Location: FF_X1_Y11_N11
\my_memory_fsm|state.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \my_memory_fsm|state.s0~feeder_combout\,
	clrn => \ALT_INV_Resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_memory_fsm|state.s0~q\);

-- Location: LCCOMB_X1_Y11_N22
\my_memory_fsm|state~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_memory_fsm|state~10_combout\ = (\Input_acel[10]~input_o\ & ((\my_memory_fsm|state.s1~q\) # (!\my_memory_fsm|state.s0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Input_acel[10]~input_o\,
	datac => \my_memory_fsm|state.s1~q\,
	datad => \my_memory_fsm|state.s0~q\,
	combout => \my_memory_fsm|state~10_combout\);

-- Location: LCCOMB_X1_Y11_N30
\my_memory_fsm|state.s1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_memory_fsm|state.s1~feeder_combout\ = \my_memory_fsm|state~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_memory_fsm|state~10_combout\,
	combout => \my_memory_fsm|state.s1~feeder_combout\);

-- Location: FF_X1_Y11_N31
\my_memory_fsm|state.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \my_memory_fsm|state.s1~feeder_combout\,
	clrn => \ALT_INV_Resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_memory_fsm|state.s1~q\);

-- Location: LCCOMB_X1_Y11_N20
\my_memory_fsm|read_address~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_memory_fsm|read_address~0_combout\ = (\my_memory_fsm|state.s3~q\) # (\my_memory_fsm|state.s2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_memory_fsm|state.s3~q\,
	datad => \my_memory_fsm|state.s2~q\,
	combout => \my_memory_fsm|read_address~0_combout\);

-- Location: LCCOMB_X1_Y11_N14
\my_memory_fsm|read_address\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_memory_fsm|read_address~combout\ = (\my_memory_fsm|read_address~0_combout\ & ((\my_memory_fsm|read_address~combout\))) # (!\my_memory_fsm|read_address~0_combout\ & (\my_memory_fsm|state.s1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_memory_fsm|state.s1~q\,
	datac => \my_memory_fsm|read_address~combout\,
	datad => \my_memory_fsm|read_address~0_combout\,
	combout => \my_memory_fsm|read_address~combout\);

-- Location: FF_X2_Y11_N5
\my_memory|address_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Input_acel[11]~input_o\,
	sload => VCC,
	ena => \my_memory_fsm|read_address~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_memory|address_reg\(0));

-- Location: LCCOMB_X1_Y11_N18
\my_memory_fsm|dado_ptr\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_memory_fsm|dado_ptr~combout\ = (\my_memory_fsm|state.s1~q\ & (\my_memory_fsm|dado_ptr~combout\)) # (!\my_memory_fsm|state.s1~q\ & ((\my_memory_fsm|state.s2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_memory_fsm|dado_ptr~combout\,
	datac => \my_memory_fsm|state.s1~q\,
	datad => \my_memory_fsm|state.s2~q\,
	combout => \my_memory_fsm|dado_ptr~combout\);

-- Location: LCCOMB_X2_Y11_N16
\my_memory|data_out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_memory|data_out[0]~0_combout\ = (\my_memory_fsm|dado_ptr~combout\ & \my_memory_fsm|read_address~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_memory_fsm|dado_ptr~combout\,
	datad => \my_memory_fsm|read_address~combout\,
	combout => \my_memory|data_out[0]~0_combout\);

-- Location: FF_X2_Y11_N17
\my_memory|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \my_memory|address_reg\(0),
	sload => VCC,
	ena => \my_memory|data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_memory|data_out\(0));

-- Location: IOIBUF_X0_Y8_N15
\Input_acel[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_acel(12),
	o => \Input_acel[12]~input_o\);

-- Location: LCCOMB_X2_Y11_N22
\my_memory|address_reg[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_memory|address_reg[1]~feeder_combout\ = \Input_acel[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Input_acel[12]~input_o\,
	combout => \my_memory|address_reg[1]~feeder_combout\);

-- Location: FF_X2_Y11_N23
\my_memory|address_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \my_memory|address_reg[1]~feeder_combout\,
	ena => \my_memory_fsm|read_address~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_memory|address_reg\(1));

-- Location: LCCOMB_X2_Y11_N30
\my_memory|data_out[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_memory|data_out[1]~feeder_combout\ = \my_memory|address_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_memory|address_reg\(1),
	combout => \my_memory|data_out[1]~feeder_combout\);

-- Location: FF_X2_Y11_N31
\my_memory|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \my_memory|data_out[1]~feeder_combout\,
	ena => \my_memory|data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_memory|data_out\(1));

-- Location: IOIBUF_X0_Y7_N15
\Input_acel[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_acel(13),
	o => \Input_acel[13]~input_o\);

-- Location: LCCOMB_X2_Y11_N28
\my_memory|address_reg[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_memory|address_reg[2]~feeder_combout\ = \Input_acel[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Input_acel[13]~input_o\,
	combout => \my_memory|address_reg[2]~feeder_combout\);

-- Location: FF_X2_Y11_N29
\my_memory|address_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \my_memory|address_reg[2]~feeder_combout\,
	ena => \my_memory_fsm|read_address~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_memory|address_reg\(2));

-- Location: LCCOMB_X2_Y11_N20
\my_memory|data_out[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_memory|data_out[2]~feeder_combout\ = \my_memory|address_reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \my_memory|address_reg\(2),
	combout => \my_memory|data_out[2]~feeder_combout\);

-- Location: FF_X2_Y11_N21
\my_memory|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \my_memory|data_out[2]~feeder_combout\,
	ena => \my_memory|data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_memory|data_out\(2));

-- Location: IOIBUF_X0_Y9_N1
\Input_acel[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_acel(14),
	o => \Input_acel[14]~input_o\);

-- Location: FF_X2_Y11_N19
\my_memory|address_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Input_acel[14]~input_o\,
	sload => VCC,
	ena => \my_memory_fsm|read_address~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_memory|address_reg\(3));

-- Location: LCCOMB_X2_Y11_N26
\my_memory|data_out[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_memory|data_out[3]~feeder_combout\ = \my_memory|address_reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \my_memory|address_reg\(3),
	combout => \my_memory|data_out[3]~feeder_combout\);

-- Location: FF_X2_Y11_N27
\my_memory|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \my_memory|data_out[3]~feeder_combout\,
	ena => \my_memory|data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_memory|data_out\(3));

-- Location: LCCOMB_X1_Y11_N8
\my_memory_fsm|Ack_out_sm\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_memory_fsm|Ack_out_sm~combout\ = (\my_memory_fsm|state.s3~q\ & ((\my_memory_fsm|Ack_out_sm~combout\))) # (!\my_memory_fsm|state.s3~q\ & (\my_memory_fsm|state.s1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_memory_fsm|state.s1~q\,
	datab => \my_memory_fsm|state.s3~q\,
	datac => \my_memory_fsm|Ack_out_sm~combout\,
	combout => \my_memory_fsm|Ack_out_sm~combout\);

-- Location: IOIBUF_X21_Y0_N1
\read~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_read,
	o => \read~input_o\);

-- Location: IOIBUF_X13_Y0_N15
\write~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write,
	o => \write~input_o\);

-- Location: IOIBUF_X16_Y24_N8
\Input_acel[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_acel(0),
	o => \Input_acel[0]~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\Input_acel[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_acel(1),
	o => \Input_acel[1]~input_o\);

-- Location: IOIBUF_X32_Y0_N1
\Input_acel[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_acel(2),
	o => \Input_acel[2]~input_o\);

-- Location: IOIBUF_X11_Y24_N1
\Input_acel[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_acel(3),
	o => \Input_acel[3]~input_o\);

-- Location: IOIBUF_X30_Y0_N15
\Input_acel[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_acel(4),
	o => \Input_acel[4]~input_o\);

-- Location: IOIBUF_X7_Y24_N1
\Input_acel[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_acel(5),
	o => \Input_acel[5]~input_o\);

-- Location: IOIBUF_X34_Y5_N22
\Input_acel[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_acel(6),
	o => \Input_acel[6]~input_o\);

-- Location: IOIBUF_X7_Y0_N8
\Input_acel[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_acel(7),
	o => \Input_acel[7]~input_o\);

-- Location: IOIBUF_X28_Y0_N15
\Input_acel[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_acel(8),
	o => \Input_acel[8]~input_o\);

-- Location: IOIBUF_X5_Y24_N8
\Input_acel[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_acel(15),
	o => \Input_acel[15]~input_o\);

-- Location: IOIBUF_X1_Y0_N8
\Input_acel[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_acel(16),
	o => \Input_acel[16]~input_o\);

-- Location: IOIBUF_X3_Y24_N15
\Input_acel[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_acel(17),
	o => \Input_acel[17]~input_o\);

-- Location: IOIBUF_X11_Y0_N15
\Input_acel[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_acel(18),
	o => \Input_acel[18]~input_o\);

-- Location: IOIBUF_X28_Y24_N1
\Input_acel[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_acel(19),
	o => \Input_acel[19]~input_o\);

-- Location: IOIBUF_X23_Y0_N15
\Input_acel[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_acel(20),
	o => \Input_acel[20]~input_o\);

-- Location: IOIBUF_X34_Y9_N15
\Input_acel[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_acel(21),
	o => \Input_acel[21]~input_o\);

-- Location: IOIBUF_X28_Y24_N15
\Input_acel[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_acel(22),
	o => \Input_acel[22]~input_o\);

-- Location: IOIBUF_X23_Y0_N1
\Input_acel[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_acel(23),
	o => \Input_acel[23]~input_o\);

-- Location: IOIBUF_X25_Y24_N22
\Input_acel[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_acel(24),
	o => \Input_acel[24]~input_o\);

-- Location: IOIBUF_X0_Y19_N15
\Input_acel[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_acel(25),
	o => \Input_acel[25]~input_o\);

-- Location: IOIBUF_X9_Y0_N1
\Input_acel[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_acel(26),
	o => \Input_acel[26]~input_o\);

-- Location: IOIBUF_X13_Y24_N1
\Input_acel[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_acel(27),
	o => \Input_acel[27]~input_o\);

-- Location: IOIBUF_X5_Y0_N15
\Input_acel[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_acel(28),
	o => \Input_acel[28]~input_o\);

-- Location: IOIBUF_X32_Y24_N22
\Input_acel[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_acel(29),
	o => \Input_acel[29]~input_o\);

-- Location: IOIBUF_X0_Y11_N22
\Input_acel[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_acel(30),
	o => \Input_acel[30]~input_o\);

-- Location: IOIBUF_X34_Y19_N15
\Input_acel[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_acel(31),
	o => \Input_acel[31]~input_o\);

ww_Output_acel(0) <= \Output_acel[0]~output_o\;

ww_Output_acel(1) <= \Output_acel[1]~output_o\;

ww_Output_acel(2) <= \Output_acel[2]~output_o\;

ww_Output_acel(3) <= \Output_acel[3]~output_o\;

ww_Output_acel(4) <= \Output_acel[4]~output_o\;

ww_Output_acel(5) <= \Output_acel[5]~output_o\;

ww_Output_acel(6) <= \Output_acel[6]~output_o\;

ww_Output_acel(7) <= \Output_acel[7]~output_o\;

ww_Output_acel(8) <= \Output_acel[8]~output_o\;

ww_Output_acel(9) <= \Output_acel[9]~output_o\;

ww_Output_acel(10) <= \Output_acel[10]~output_o\;

ww_Output_acel(11) <= \Output_acel[11]~output_o\;

ww_Output_acel(12) <= \Output_acel[12]~output_o\;

ww_Output_acel(13) <= \Output_acel[13]~output_o\;

ww_Output_acel(14) <= \Output_acel[14]~output_o\;

ww_Output_acel(15) <= \Output_acel[15]~output_o\;

ww_Output_acel(16) <= \Output_acel[16]~output_o\;

ww_Output_acel(17) <= \Output_acel[17]~output_o\;

ww_Output_acel(18) <= \Output_acel[18]~output_o\;

ww_Output_acel(19) <= \Output_acel[19]~output_o\;

ww_Output_acel(20) <= \Output_acel[20]~output_o\;

ww_Output_acel(21) <= \Output_acel[21]~output_o\;

ww_Output_acel(22) <= \Output_acel[22]~output_o\;

ww_Output_acel(23) <= \Output_acel[23]~output_o\;

ww_Output_acel(24) <= \Output_acel[24]~output_o\;

ww_Output_acel(25) <= \Output_acel[25]~output_o\;

ww_Output_acel(26) <= \Output_acel[26]~output_o\;

ww_Output_acel(27) <= \Output_acel[27]~output_o\;

ww_Output_acel(28) <= \Output_acel[28]~output_o\;

ww_Output_acel(29) <= \Output_acel[29]~output_o\;

ww_Output_acel(30) <= \Output_acel[30]~output_o\;

ww_Output_acel(31) <= \Output_acel[31]~output_o\;
END structure;


