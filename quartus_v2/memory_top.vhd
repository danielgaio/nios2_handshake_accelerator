library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity memory_top is
	generic(
		DATA_WIDTH : natural := 15	-- largura de dados para acomodar
											-- req_leit -> 10
											-- Ack -> 9
											-- dado_ptr -> 8
											-- data_out -> 7..0
	);
	port (
		-- Aqui vao ficar os sinais de comunicacao com Avalon
		Clock		: in std_logic;
		Resetn	: in std_logic;
		read		: in std_logic;
		write		: in std_logic;
		Input_acel	: in std_logic_vector((DATA_WIDTH - 1) downto 0);
		Outpu_acel	: in std_logic_vector((DATA_WIDTH - 1) downto 0)
	
	
		-- Acho que alguns desses sinais abaixo vao se tornar sinais internos
		--signal clk_t			: in std_logic;
		--signal address_t		: in natural range 0 to 15;	-- 16 posicoes de memoria
		--signal data_out_t		: out std_logic_vector((DATA_WIDTH -1) downto 0); -- dado saindo da memoria
		--signal ReqLeit_t		: in	std_logic;	-- flag
		--signal Ack_t_in_sm	: in	std_logic;	-- flag
		--signal Ack_t_out_sm	: out	std_logic;	-- flag
		--signal dado_ptr_t		: out	std_logic;	-- flag
		--signal reset_t	 		: in	std_logic
	);
end memory_top;

architecture rtl of memory_top is

	-- Tirar in e out dos sinais abaixo e no corpo da arquitetura, atribuir para eles
	-- as respectivas fatias de input_acel e output_acel (ver caderno)
	-- Acho que alguns desses sinais abaixo vao se tornar sinais internos
	--signal clk_t			: std_logic;
	signal address_t		: natural range 0 to 15;	-- 16 posicoes de memoria
	signal data_out_t		: std_logic_vector((DATA_WIDTH -1) downto 0); -- dado saindo da memoria
	signal ReqLeit_t		: std_logic;	-- flag
	signal Ack_t_in_sm	: std_logic;	-- flag
	signal Ack_t_out_sm	: std_logic;	-- flag
	signal dado_ptr_t		: std_logic;	-- flag
	--signal reset_t	 		: std_logic;

	-- sinais internos
   signal read_address_t  	: std_logic;
	signal out_data_t      	: std_logic;

	-- modulos externos
	component memory is
        port (
         clk		: in std_logic;
			address		: in natural range 0 to 15;								-- 16 posicoes de memoria
			read_address: in std_logic;
			out_data		: in std_logic;											-- flag para permitir ou não a saida de dados da memória
			data_out		: out std_logic_vector((DATA_WIDTH -1) downto 0)		-- dado saindo da memoria
        );
    end component;

    component memory_state_machine is
        port(
         clk		 	: in	std_logic;
			ReqLeit		 	: in	std_logic;	-- flag
			Ack_in_sm		: in	std_logic;	-- flag
			Ack_out_sm		: out	std_logic;	-- flag
			dado_ptr			: out	std_logic;	-- flag
			reset	 			: in	std_logic;
			read_address	: out	std_logic;	-- flag
			out_data			: out	std_logic
        );
    end component;

begin

	-- Aqui, inserir segmentacoes de input_acel e output_acel
	address_t <= to_integer(unsigned(Input_acel[14:11]));		-- 16 posicoes de memoria
	Output_acel[7:0] <= data_out_t;	-- dado saindo da memoria
	ReqLeit_t <= Input_acel[10];	-- flag
	Ack_t_in_sm	<= Input_acel[9];	-- flag
	Output_acel[9] <= Ack_t_out_sm;	-- flag
	Output_acel[8] <= dado_ptr_t;	-- flag

	-- mapeamento dos sinais dos componentes
	my_memory : memory port map(
		clk                 => Clock               ,
		read_address        => read_address_t      ,       -- flag
		out_data            => out_data_t          ,       -- flag
		address             => address_t           ,
		data_out            => data_out_t
	);

	my_memory_fsm : memory_state_machine port map(
		clk		 	     => Clock           ,
		ReqLeit		 	  => ReqLeit_t	   	,
		Ack_in_sm		  => Ack_t_in_sm     ,
		Ack_out_sm		  => Ack_t_out_sm    ,
		dado_ptr	        => dado_ptr_t	   ,
		reset	 	        => Resetn          ,
		read_address     => read_address_t  ,
		out_data	        => out_data_t                  -- flag
	);

end rtl;