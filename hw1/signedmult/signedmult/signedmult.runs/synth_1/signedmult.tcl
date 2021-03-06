# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir E:/ECE-C302/hw1/signedmult/signedmult/signedmult.cache/wt [current_project]
set_property parent.project_path E:/ECE-C302/hw1/signedmult/signedmult/signedmult.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
read_vhdl -library xil_defaultlib {
  E:/ECE-C302/hw1/signedmult/signedmult/signedmult.srcs/sources_1/new/reg.vhd
  E:/ECE-C302/hw1/signedmult/signedmult/signedmult.srcs/sources_1/new/signedmult.vhd
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc E:/ECE-C302/hw1/signedmult/signedmult/Basys3_Master.xdc
set_property used_in_implementation false [get_files E:/ECE-C302/hw1/signedmult/signedmult/Basys3_Master.xdc]


synth_design -top signedmult -part xc7a35tcpg236-1


write_checkpoint -force -noxdef signedmult.dcp

catch { report_utilization -file signedmult_utilization_synth.rpt -pb signedmult_utilization_synth.pb }
