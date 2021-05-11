library ieee;
use ieee.std_logic_1164.all;

entity memory_state_machine is
	port(
		clk		 		: in	std_logic;
		ReqLeit		 	: in	std_logic;	-- flag
		Ack_in_sm		: in	std_logic;	-- flag
		Ack_out_sm		: out	std_logic;	-- flag
		dado_ptr		: out	std_logic;	-- flag
		reset	 		: in	std_logic;
		read_address	: out	std_logic;	-- flag
		out_data		: out	std_logic
	);
end entity;

architecture rtl of memory_state_machine is

	-- Build an enumerated type for the state machine
	type state_type is (s0, s1, s2, s3);

	-- Register to hold the current state
	signal state : state_type;

begin
	process (reset, ReqLeit, Ack_in_sm, clk) begin
		if reset = '1' then
			state <= s0;
		elsif (rising_edge(clk)) then
			case state is
				when s0=>
					if (ReqLeit = '1') then
						state <= s1;
					else
						state <= s0;
					end if;
				when s1=>
					if (ReqLeit = '0') then
						state <= s2;
					else
						state <= s1;
					end if;
				when s2=>
					if (Ack_in_sm = '1') then
						state <= s3;
					else
						state <= s2;
					end if;
				when s3=>
					state <= s0;
			end case;
		end if;
	end process;

	-- Determine the output based only on the current state
	-- and the input (do not wait for a clock edge).
	process (state) begin

			case state is
				when s0=>
					Ack_out_sm		<= '0';
					read_address 	<= '0';
					dado_ptr 		<= '0';
					out_data 		<= '0';
				when s1=>
					read_address	<= '1';
					Ack_out_sm		<= '1';
				when s2=>
					Ack_out_sm		<= '0';
					out_data		<= '1';
					dado_ptr		<= '1';
				when s3=>
					out_data		<= '0';
					dado_ptr		<= '0';
			end case;

	end process;

end rtl;