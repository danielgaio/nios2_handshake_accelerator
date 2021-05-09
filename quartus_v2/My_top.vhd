library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity My_top is

	generic(
		DATA_WIDTH : natural := 8
	);
	port(
		OSC_CLK, RESET_N : in std_logic
	);

end entity;

architecture rtl of My_top is

	-- Nome do arquivo .qip
	component nios_handshake_acel is
		port (
			clk_clk       : in std_logic := '0';
			reset_reset_n : in std_logic := '0'
		);
	end component MySoC;

begin

Label_SoC: nios_handshake_acel port map (clk_clk => OSC_CLK, reset_reset_n => RESET_N);

end rtl;