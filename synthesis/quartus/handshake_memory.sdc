# Especificacao do clock da arquitetura       19.915

create_clock -period 18.795 -name clk clk_t

# Configuracao de delay de entrada e saida

set_input_delay -clock [get_clocks clk] -max 5 [all_inputs]

set_output_delay -clock [get_clocks clk] -max 5 [all_outputs]