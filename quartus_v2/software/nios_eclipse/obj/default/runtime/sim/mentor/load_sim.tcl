# ------------------------------------------------------------------------------
# Top Level Simulation Script to source msim_setup.tcl
# ------------------------------------------------------------------------------
set QSYS_SIMDIR obj/default/runtime/sim
source msim_setup.tcl
# Copy generated memory initialization hex and dat file(s) to current directory
file copy -force C:/Users/danie/Documents/GitHub/nios2_handshake_accelerator/quartus_v2/software/nios_eclipse/mem_init/hdl_sim/Qsys_handshake_onchip_memory2_0.dat ./ 
file copy -force C:/Users/danie/Documents/GitHub/nios2_handshake_accelerator/quartus_v2/software/nios_eclipse/mem_init/Qsys_handshake_onchip_memory2_0.hex ./ 
