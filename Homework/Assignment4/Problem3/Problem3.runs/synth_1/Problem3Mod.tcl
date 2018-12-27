# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir /home/steven/Dropbox/Verilog/Homework/Assignment4/Problem3/Problem3.cache/wt [current_project]
set_property parent.project_path /home/steven/Dropbox/Verilog/Homework/Assignment4/Problem3/Problem3.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property vhdl_version vhdl_2k [current_fileset]
read_verilog -library xil_defaultlib /home/steven/Dropbox/Verilog/Homework/Assignment4/Problem3/Problem3.srcs/sources_1/new/Problem3Mod.v
read_xdc /home/steven/Dropbox/Verilog/Homework/Assignment4/Problem3/Problem3.srcs/constrs_1/new/Problem3Const.xdc
set_property used_in_implementation false [get_files /home/steven/Dropbox/Verilog/Homework/Assignment4/Problem3/Problem3.srcs/constrs_1/new/Problem3Const.xdc]

synth_design -top Problem3Mod -part xc7a35tcpg236-1
write_checkpoint -noxdef Problem3Mod.dcp
catch { report_utilization -file Problem3Mod_utilization_synth.rpt -pb Problem3Mod_utilization_synth.pb }
