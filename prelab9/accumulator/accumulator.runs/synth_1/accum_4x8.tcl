# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/Chris/Desktop/ECE-C302/prelab9/accumulator/accumulator.cache/wt [current_project]
set_property parent.project_path C:/Users/Chris/Desktop/ECE-C302/prelab9/accumulator/accumulator.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property ip_output_repo c:/Users/Chris/Desktop/ECE-C302/prelab9/accumulator/accumulator.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib C:/Users/Chris/Desktop/ECE-C302/prelab9/accumulator/accumulator.srcs/sources_1/new/accum_4x8.vhd
read_ip -quiet c:/Users/Chris/Desktop/ECE-C302/prelab9/accumulator/accumulator.srcs/sources_1/ip/c_accum_0/c_accum_0.xci
set_property used_in_implementation false [get_files -all c:/Users/Chris/Desktop/ECE-C302/prelab9/accumulator/accumulator.srcs/sources_1/ip/c_accum_0/c_accum_0_ooc.xdc]
set_property is_locked true [get_files c:/Users/Chris/Desktop/ECE-C302/prelab9/accumulator/accumulator.srcs/sources_1/ip/c_accum_0/c_accum_0.xci]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/Chris/Desktop/ECE-C302/prelab9/accumulator/Basys3_Master.xdc
set_property used_in_implementation false [get_files C:/Users/Chris/Desktop/ECE-C302/prelab9/accumulator/Basys3_Master.xdc]


synth_design -top accum_4x8 -part xc7a35tcpg236-1


write_checkpoint -force -noxdef accum_4x8.dcp

catch { report_utilization -file accum_4x8_utilization_synth.rpt -pb accum_4x8_utilization_synth.pb }
