library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity top is
	generic(
		DATA_WIDTH : natural := 8
	);
	port (
		signal clk_t			: in std_logic;
		signal address_t		: in natural range 0 to 15;	-- 16 posicoes de memoria
		signal data_out_t		: out std_logic_vector((DATA_WIDTH -1) downto 0); -- dado saindo da memoria
		signal ReqLeit_t		: in	std_logic;	-- flag
		signal Ack_t_in_sm		: in	std_logic;	-- flag
		signal Ack_t_out_sm		: out	std_logic;	-- flag
		signal dado_ptr_t		: out	std_logic;	-- flag
		signal reset_t	 		: in	std_logic
	);
end top;

architecture rtl of top is	 

	-- sinais internos
    signal read_address_t  	: std_logic;
	signal out_data_t      	: std_logic;

	-- modulos externos
	component memory is
        port (
            clk			: in std_logic;
			address		: in natural range 0 to 15;								-- 16 posicoes de memoria
			read_address: in std_logic;
			out_data	: in std_logic;											-- flag para permitir ou não a saida de dados da memória
			data_out	: out std_logic_vector((DATA_WIDTH -1) downto 0)		-- dado saindo da memoria
        );
    end component;

    component memory_state_machine is
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
    end component;

begin

	my_memory : memory port map(
		clk                 => clk_t               ,
		read_address        => read_address_t      ,       -- flag
		out_data            => out_data_t          ,       -- flag
		address             => address_t           ,
		data_out            => data_out_t
	);

	my_memory_fsm : memory_state_machine port map(
		clk		 	        => clk_t           ,
		ReqLeit		 	    => ReqLeit_t	   ,
		Ack_in_sm			=> Ack_t_in_sm     ,
		Ack_out_sm			=> Ack_t_out_sm    ,
		dado_ptr	        => dado_ptr_t	   ,
		reset	 	        => reset_t         ,
		read_address        => read_address_t  ,
		out_data	        => out_data_t                  -- flag
	);

end rtl;