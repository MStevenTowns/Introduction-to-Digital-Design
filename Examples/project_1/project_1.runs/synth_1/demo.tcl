# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a35tcpg236-3

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/Steven/Dropbox/Vivado/project_1/project_1.cache/wt [current_project]
set_property parent.project_path C:/Users/Steven/Dropbox/Vivado/project_1/project_1.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property vhdl_version vhdl_2k [current_fileset]
read_verilog -library xil_defaultlib C:/Users/Steven/Dropbox/Vivado/project_1/project_1.srcs/sources_1/new/demo.v
synth_design -top demo -part xc7a35tcpg236-3
write_checkpoint -noxdef demo.dcp
catch { report_utilization -file demo_utilization_synth.rpt -pb demo_utilization_synth.pb }
