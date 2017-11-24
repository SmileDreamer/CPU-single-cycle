# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/TAN/Desktop/CPU/CPU.cache/wt [current_project]
set_property parent.project_path C:/Users/TAN/Desktop/CPU/CPU.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property vhdl_version vhdl_2k [current_fileset]
read_verilog -library xil_defaultlib {
  C:/Users/TAN/Desktop/CPU/CPU.srcs/sources_1/new/_7_seg_display.v
  C:/Users/TAN/Desktop/CPU/CPU.srcs/sources_1/new/avoidShake.v
  C:/Users/TAN/Desktop/CPU/CPU.srcs/sources_1/new/display.v
  C:/Users/TAN/Desktop/CPU/CPU.srcs/sources_1/new/clkdiv.v
  C:/Users/TAN/Desktop/CPU/CPU.srcs/sources_1/new/Show.v
  C:/Users/TAN/Desktop/CPU/CPU.srcs/sources_1/new/Four_Way_Selector.v
  C:/Users/TAN/Desktop/CPU/CPU.srcs/sources_1/new/ControlUnit.v
  C:/Users/TAN/Desktop/CPU/CPU.srcs/sources_1/new/RAM.v
  C:/Users/TAN/Desktop/CPU/CPU.srcs/sources_1/new/RegisterFile.v
  C:/Users/TAN/Desktop/CPU/CPU.srcs/sources_1/new/Extend.v
  C:/Users/TAN/Desktop/CPU/CPU.srcs/sources_1/new/Instruction_Memory.v
  C:/Users/TAN/Desktop/CPU/CPU.srcs/sources_1/new/PC.v
  C:/Users/TAN/Desktop/CPU/CPU.srcs/sources_1/new/ALU32.v
  C:/Users/TAN/Desktop/CPU/CPU.srcs/sources_1/new/top.v
}
read_xdc C:/Users/TAN/Desktop/CPU/CPU.srcs/constrs_1/new/cpu.xdc
set_property used_in_implementation false [get_files C:/Users/TAN/Desktop/CPU/CPU.srcs/constrs_1/new/cpu.xdc]

synth_design -top top -part xc7a35tcpg236-1
write_checkpoint -noxdef top.dcp
catch { report_utilization -file top_utilization_synth.rpt -pb top_utilization_synth.pb }