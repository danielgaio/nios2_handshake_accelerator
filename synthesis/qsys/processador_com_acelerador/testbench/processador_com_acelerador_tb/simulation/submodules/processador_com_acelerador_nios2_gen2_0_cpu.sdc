# Legal Notice: (C)2021 Altera Corporation. All rights reserved.  Your
# use of Altera Corporation's design tools, logic functions and other
# software and tools, and its AMPP partner logic functions, and any
# output files any of the foregoing (including device programming or
# simulation files), and any associated documentation or information are
# expressly subject to the terms and conditions of the Altera Program
# License Subscription Agreement or other applicable license agreement,
# including, without limitation, that your use is for the sole purpose
# of programming logic devices manufactured by Altera and sold by Altera
# or its authorized distributors.  Please refer to the applicable
# agreement for further details.

#**************************************************************
# Timequest JTAG clock definition
#   Uncommenting the following lines will define the JTAG
#   clock in TimeQuest Timing Analyzer
#**************************************************************

#create_clock -period 10MHz {altera_reserved_tck}
#set_clock_groups -asynchronous -group {altera_reserved_tck}

#**************************************************************
# Set TCL Path Variables 
#**************************************************************

set 	processador_com_acelerador_nios2_gen2_0_cpu 	processador_com_acelerador_nios2_gen2_0_cpu:*
set 	processador_com_acelerador_nios2_gen2_0_cpu_oci 	processador_com_acelerador_nios2_gen2_0_cpu_nios2_oci:the_processador_com_acelerador_nios2_gen2_0_cpu_nios2_oci
set 	processador_com_acelerador_nios2_gen2_0_cpu_oci_break 	processador_com_acelerador_nios2_gen2_0_cpu_nios2_oci_break:the_processador_com_acelerador_nios2_gen2_0_cpu_nios2_oci_break
set 	processador_com_acelerador_nios2_gen2_0_cpu_ocimem 	processador_com_acelerador_nios2_gen2_0_cpu_nios2_ocimem:the_processador_com_acelerador_nios2_gen2_0_cpu_nios2_ocimem
set 	processador_com_acelerador_nios2_gen2_0_cpu_oci_debug 	processador_com_acelerador_nios2_gen2_0_cpu_nios2_oci_debug:the_processador_com_acelerador_nios2_gen2_0_cpu_nios2_oci_debug
set 	processador_com_acelerador_nios2_gen2_0_cpu_wrapper 	processador_com_acelerador_nios2_gen2_0_cpu_debug_slave_wrapper:the_processador_com_acelerador_nios2_gen2_0_cpu_debug_slave_wrapper
set 	processador_com_acelerador_nios2_gen2_0_cpu_jtag_tck 	processador_com_acelerador_nios2_gen2_0_cpu_debug_slave_tck:the_processador_com_acelerador_nios2_gen2_0_cpu_debug_slave_tck
set 	processador_com_acelerador_nios2_gen2_0_cpu_jtag_sysclk 	processador_com_acelerador_nios2_gen2_0_cpu_debug_slave_sysclk:the_processador_com_acelerador_nios2_gen2_0_cpu_debug_slave_sysclk
set 	processador_com_acelerador_nios2_gen2_0_cpu_oci_path 	 [format "%s|%s" $processador_com_acelerador_nios2_gen2_0_cpu $processador_com_acelerador_nios2_gen2_0_cpu_oci]
set 	processador_com_acelerador_nios2_gen2_0_cpu_oci_break_path 	 [format "%s|%s" $processador_com_acelerador_nios2_gen2_0_cpu_oci_path $processador_com_acelerador_nios2_gen2_0_cpu_oci_break]
set 	processador_com_acelerador_nios2_gen2_0_cpu_ocimem_path 	 [format "%s|%s" $processador_com_acelerador_nios2_gen2_0_cpu_oci_path $processador_com_acelerador_nios2_gen2_0_cpu_ocimem]
set 	processador_com_acelerador_nios2_gen2_0_cpu_oci_debug_path 	 [format "%s|%s" $processador_com_acelerador_nios2_gen2_0_cpu_oci_path $processador_com_acelerador_nios2_gen2_0_cpu_oci_debug]
set 	processador_com_acelerador_nios2_gen2_0_cpu_jtag_tck_path 	 [format "%s|%s|%s" $processador_com_acelerador_nios2_gen2_0_cpu_oci_path $processador_com_acelerador_nios2_gen2_0_cpu_wrapper $processador_com_acelerador_nios2_gen2_0_cpu_jtag_tck]
set 	processador_com_acelerador_nios2_gen2_0_cpu_jtag_sysclk_path 	 [format "%s|%s|%s" $processador_com_acelerador_nios2_gen2_0_cpu_oci_path $processador_com_acelerador_nios2_gen2_0_cpu_wrapper $processador_com_acelerador_nios2_gen2_0_cpu_jtag_sysclk]
set 	processador_com_acelerador_nios2_gen2_0_cpu_jtag_sr 	 [format "%s|*sr" $processador_com_acelerador_nios2_gen2_0_cpu_jtag_tck_path]

#**************************************************************
# Set False Paths
#**************************************************************

set_false_path -from [get_keepers *$processador_com_acelerador_nios2_gen2_0_cpu_oci_break_path|break_readreg*] -to [get_keepers *$processador_com_acelerador_nios2_gen2_0_cpu_jtag_sr*]
set_false_path -from [get_keepers *$processador_com_acelerador_nios2_gen2_0_cpu_oci_debug_path|*resetlatch]     -to [get_keepers *$processador_com_acelerador_nios2_gen2_0_cpu_jtag_sr[33]]
set_false_path -from [get_keepers *$processador_com_acelerador_nios2_gen2_0_cpu_oci_debug_path|monitor_ready]  -to [get_keepers *$processador_com_acelerador_nios2_gen2_0_cpu_jtag_sr[0]]
set_false_path -from [get_keepers *$processador_com_acelerador_nios2_gen2_0_cpu_oci_debug_path|monitor_error]  -to [get_keepers *$processador_com_acelerador_nios2_gen2_0_cpu_jtag_sr[34]]
set_false_path -from [get_keepers *$processador_com_acelerador_nios2_gen2_0_cpu_ocimem_path|*MonDReg*] -to [get_keepers *$processador_com_acelerador_nios2_gen2_0_cpu_jtag_sr*]
set_false_path -from *$processador_com_acelerador_nios2_gen2_0_cpu_jtag_sr*    -to *$processador_com_acelerador_nios2_gen2_0_cpu_jtag_sysclk_path|*jdo*
set_false_path -from sld_hub:*|irf_reg* -to *$processador_com_acelerador_nios2_gen2_0_cpu_jtag_sysclk_path|ir*
set_false_path -from sld_hub:*|sld_shadow_jsm:shadow_jsm|state[1] -to *$processador_com_acelerador_nios2_gen2_0_cpu_oci_debug_path|monitor_go
