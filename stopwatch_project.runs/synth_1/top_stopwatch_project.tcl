# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir {W:/Desktop/ELEC 3500 LABS/stopwatch_project/stopwatch_project.cache/wt} [current_project]
set_property parent.project_path {W:/Desktop/ELEC 3500 LABS/stopwatch_project/stopwatch_project.xpr} [current_project]
set_property XPM_LIBRARIES XPM_CDC [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part digilentinc.com:nexys4_ddr:part0:1.1 [current_project]
set_property ip_output_repo {w:/Desktop/ELEC 3500 LABS/stopwatch_project/stopwatch_project.cache/ip} [current_project]
set_property ip_cache_permissions {read write} [current_project]
add_files -quiet {{w:/Desktop/ELEC 3500 LABS/stopwatch_project/stopwatch_project.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.dcp}}
set_property used_in_implementation false [get_files {{w:/Desktop/ELEC 3500 LABS/stopwatch_project/stopwatch_project.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.dcp}}]
add_files -quiet {{w:/Desktop/ELEC 3500 LABS/stopwatch_project/stopwatch_project.srcs/sources_1/ip/refreshrate/refreshrate.dcp}}
set_property used_in_implementation false [get_files {{w:/Desktop/ELEC 3500 LABS/stopwatch_project/stopwatch_project.srcs/sources_1/ip/refreshrate/refreshrate.dcp}}]
add_files -quiet {{w:/Desktop/ELEC 3500 LABS/stopwatch_project/stopwatch_project.srcs/sources_1/ip/rate10thousandth_1/rate10thousandth.dcp}}
set_property used_in_implementation false [get_files {{w:/Desktop/ELEC 3500 LABS/stopwatch_project/stopwatch_project.srcs/sources_1/ip/rate10thousandth_1/rate10thousandth.dcp}}]
read_verilog -library xil_defaultlib {
  W:/Desktop/PMODENC_Original/Encoder_original.v
  W:/Desktop/PMODENC_Original/Debouncer_original.v
  {W:/Desktop/ELEC 3500 LABS/stopwatch_project/stopwatch_project.srcs/sources_1/new/up_down_count_4bit_behavioural.v}
  W:/Desktop/PMODENC_Original/PmodENC_original.v
  {W:/Desktop/ELEC 3500 LABS/stopwatch_project/stopwatch_project.srcs/sources_1/new/clk2Hz.v}
  {W:/Desktop/ELEC 3500 LABS/stopwatch_project/stopwatch_project.srcs/sources_1/new/bcdto7segdisplay.v}
  {W:/Desktop/ELEC 3500 LABS/stopwatch_project/stopwatch_project.srcs/sources_1/new/stopwatch_onetenth.v}
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc {{W:/Desktop/ELEC 3500 LABS/lab_sources/lab9_2016/lab9_3_1/Nexys4DDR_Master.xdc}}
set_property used_in_implementation false [get_files {{W:/Desktop/ELEC 3500 LABS/lab_sources/lab9_2016/lab9_3_1/Nexys4DDR_Master.xdc}}]


synth_design -top top_stopwatch_project -part xc7a100tcsg324-1


write_checkpoint -force -noxdef top_stopwatch_project.dcp

catch { report_utilization -file top_stopwatch_project_utilization_synth.rpt -pb top_stopwatch_project_utilization_synth.pb }