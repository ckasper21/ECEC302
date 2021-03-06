# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir E:/ECE-C302/Midterm/shift_reg/shift_reg.cache/wt [current_project]
set_property parent.project_path E:/ECE-C302/Midterm/shift_reg/shift_reg.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
read_vhdl -library xil_defaultlib {
  E:/ECE-C302/Midterm/shift_reg/shift_reg.srcs/sources_1/new/shift_reg.vhd
  E:/ECE-C302/Midterm/shift_reg/shift_reg.srcs/sources_1/new/shift_reg5.vhd
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc E:/ECE-C302/Midterm/shift_reg/Basys3_Master.xdc
set_property used_in_implementation false [get_files E:/ECE-C302/Midterm/shift_reg/Basys3_Master.xdc]


synth_design -top shift_reg5 -part xc7a35tcpg236-1


write_checkpoint -force -noxdef shift_reg5.dcp

catch { report_utilization -file shift_reg5_utilization_synth.rpt -pb shift_reg5_utilization_synth.pb }
