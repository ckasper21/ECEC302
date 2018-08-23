# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
set_msg_config -id {Common 17-41} -limit 10000000
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir D:/ECE-C302/hw6/twos_c/twos_c.cache/wt [current_project]
set_property parent.project_path D:/ECE-C302/hw6/twos_c/twos_c.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
read_vhdl -library xil_defaultlib D:/ECE-C302/hw6/twos_c/twos_c.srcs/sources_1/new/twos_c.vhd
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc D:/ECE-C302/hw6/twos_c/Basys3_Master.xdc
set_property used_in_implementation false [get_files D:/ECE-C302/hw6/twos_c/Basys3_Master.xdc]


synth_design -top twos_c -part xc7a35tcpg236-1


write_checkpoint -force -noxdef twos_c.dcp

catch { report_utilization -file twos_c_utilization_synth.rpt -pb twos_c_utilization_synth.pb }