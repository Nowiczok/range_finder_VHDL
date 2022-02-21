# Wed Jan 12 10:46:38 2022
# XST14.5 Synthesis
################################################################################
package require ::aldec::scripter 1.0 
set aldec [::aldec::scripter::GetVariable "aldec"]
set dsn [::aldec::scripter::GetVariable "dsn"]
set scr_pth [file join $aldec tcl lib aldec templates mv_xst14 xst146.tcl]
namespace eval ::mv_xst14 {
	variable priv_data	
	set priv_data(language) "VHDL"
}
source "$scr_pth"
################################################################################
# following line disables showing log file after synthesis
set show_log 0
################################################################################

::mv_xst14::ReadOptions "Xilinx14x SPARTAN3A"

set ::mv_xst14::priv_data(TCL_SCRIPT_MODE) 1

# list of files for top-level synthesis
set files {}
lappend files [file join $dsn src bin_to_bcd.vhd]
lappend files [file join $dsn src seven_seg.vhd]
lappend files [file join $dsn src triple_seven_seg.vhd]
lappend files [file join $dsn src bin_bcd_multi_digit.vhd]
lappend files [file join $dsn compile Top.vhd]
lappend files [file join $dsn src Prescaler_mk2.vhd]
lappend files [file join $dsn src pulse_meter.vhd]
lappend files [file join $dsn src rising_detector.vhd]
lappend files [file join $dsn src falling_detector.vhd]
lappend files [file join $dsn compile measurement_unit.vhd]
lappend files [file join $dsn src trig_unit.vhd]
lappend files [file join $dsn compile top.vhd]
lappend files [file join $dsn compile display_unit.vhd]
# list of macros for macro synthesis
set macros {}
set ::mv_xst14::priv_data(additional_files) ""
set ::mv_xst14::priv_data(alias) ""

set ::mv_xst14::priv_data(family) "Xilinx14x SPARTAN3A"
set ::mv_xst14::priv_data(device) "3s50atq144"
set ::mv_xst14::priv_data(speed) "-4"
set ::mv_xst14::priv_data(toplevel) "top"
set ::mv_xst14::priv_data(_filter_messages) ""
set ::mv_xst14::priv_data(partitions) {}
set ::mv_xst14::priv_data(_netlist_format) 	"1"
set ::mv_xst14::priv_data(GenerateRtlSchematic) 	"Yes"
set ::mv_xst14::priv_data(_use_filter_messages) 	"0"
set ::mv_xst14::priv_data(use_partitions_in_flow) 	"0"
set ::mv_xst14::priv_data(generate_partitions_file) 	"1"
set ::mv_xst14::priv_data(_opt_goal) 	"Speed"
set ::mv_xst14::priv_data(_opt_effort) 	"Normal"
set ::mv_xst14::priv_data(_use_synth_constr) 	"1"
set ::mv_xst14::priv_data(_glob_opt_goal) 	"AllClockNets"
set ::mv_xst14::priv_data(wr_tim_const) 	"0"
set ::mv_xst14::priv_data(Verilog2001) 	"1"
set ::mv_xst14::priv_data(_keep_hierFPGA) 	"No"
set ::mv_xst14::priv_data(_netlist_hier) 	"As Optimized"
set ::mv_xst14::priv_data(HierarchySeparator) 	"/"
set ::mv_xst14::priv_data(BusDelimiter) 	"<>"
set ::mv_xst14::priv_data(CaseVhdl) 	"Maintain"
set ::mv_xst14::priv_data(CrossClockAnalysis) 	"0"
set ::mv_xst14::priv_data(SliceUtilizationRatioDelta) 	"100"
set ::mv_xst14::priv_data(BRAMUtilizationRatio) 	"100"
set ::mv_xst14::priv_data(ReadCores) 	"1"
set ::mv_xst14::priv_data(GenericsParameters) 	""
set ::mv_xst14::priv_data(VerilogMacros) 	""
set ::mv_xst14::priv_data(_fsm_encode) 	"Auto"
set ::mv_xst14::priv_data(_safe_implementation) 	"No"
set ::mv_xst14::priv_data(_impl_style) 	"None"
set ::mv_xst14::priv_data(_rshare) 	"1"
set ::mv_xst14::priv_data(_fsm_style) 	"LUT"
set ::mv_xst14::priv_data(_eram) 	"1"
set ::mv_xst14::priv_data(copy,_ramStyleCombo) 	"Auto"
set ::mv_xst14::priv_data(_erom) 	"1"
set ::mv_xst14::priv_data(copy,_romStyle) 	"Auto"
set ::mv_xst14::priv_data(AutomaticBRAMPacking) 	"0"
set ::mv_xst14::priv_data(_mux_extract) 	"Yes"
set ::mv_xst14::priv_data(copy,_muxStyle) 	"Auto"
set ::mv_xst14::priv_data(_dex) 	"1"
set ::mv_xst14::priv_data(_priorEncExtr) 	"Yes"
set ::mv_xst14::priv_data(_sh_ex) 	"1"
set ::mv_xst14::priv_data(_l_sh_ex) 	"1"
set ::mv_xst14::priv_data(_xor_col) 	"1"
set ::mv_xst14::priv_data(MultiplierStyle) 	"Auto"
set ::mv_xst14::priv_data(AsynchronousToSynchronous) 	"0"
set ::mv_xst14::priv_data(_iobuf) 	"1"
set ::mv_xst14::priv_data(_max_fanout) 	"500"
set ::mv_xst14::priv_data(MaxNoBufgs24) 	"24"
set ::mv_xst14::priv_data(_reg_duplic) 	"1"
set ::mv_xst14::priv_data(_eq_reg_rem) 	"1"
set ::mv_xst14::priv_data(_reg_bal) 	"No"
set ::mv_xst14::priv_data(copy,_moveFirstFlipFlopStage) 	"<none>"
set ::mv_xst14::priv_data(copy,_moveLastFlipFlopStage) 	"<none>"
set ::mv_xst14::priv_data(pack_io_registers) 	"Auto"
set ::mv_xst14::priv_data(_slice_pack) 	"1"
set ::mv_xst14::priv_data(_use_clock_enable) 	"Yes"
set ::mv_xst14::priv_data(_use_synchronous_set) 	"Yes"
set ::mv_xst14::priv_data(_use_synchronous_reset) 	"Yes"
set ::mv_xst14::priv_data(OptimizeInstantiatedPrimitives) 	"0"
set ::mv_xst14::priv_data(add_special_library_sources) 	"1"
set ::mv_xst14::priv_data(_job_desc) 	"SynthesisTask"
set ::mv_xst14::priv_data(_incl_inp_files) 	"*.*"
set ::mv_xst14::priv_data(_excl_inp_files) 	"log*.*:implement*.*"
set ::mv_xst14::priv_data(_job_resource) 	""

# performs synthesis
::mv_xst14::Run_Synthesis $files $macros

if { [Design_GetDesignProperty SYNTH_STATUS] != "errors" } {
# Wed Jan 12 10:46:38 2022
# Xilinx Implementation "ISE/WebPack 14.6/14.7"
################################################################################
package require ::aldec::scripter 1.0 
set aldec [::aldec::scripter::GetVariable "aldec"]
set dsn [::aldec::scripter::GetVariable "dsn"]
set scr_pth [file join $aldec tcl lib aldec templates mv_xilinx14 xilinx_146.tcl]
source "$scr_pth"
################################################################################
# following line disables showing log file after implementation
set show_log 0
################################################################################

set impl_opt(gui,SPARTAN3A,TAB_1) {1 2 10 4 5 6 7 324 143 9 8}
set impl_opt(edif_str) 	"C:/My_Designs/project_PSC/range_finder/synthesis/top.ngc"
set impl_opt(item,1) impl_opt(edif_str)
set impl_opt(_family_sel) 	"Xilinx14x SPARTAN3A"
set impl_opt(_device_sel) 	"3s50atq144"
set impl_opt(_speed_sel) 	"-4"
set impl_opt(item,2) {impl_opt(_family_sel) impl_opt(_device_sel) impl_opt(_speed_sel)}
set impl_opt(version_sel) 	"ver1"
set impl_opt(revision_sel) 	"rev1"
set impl_opt(item,10) {impl_opt(version_sel) impl_opt(revision_sel)}
set impl_opt(netlist_format) 	"1"
set impl_opt(item,4) impl_opt(netlist_format)
set impl_opt(auto_close) 	"0"
set impl_opt(item,5) impl_opt(auto_close)
set impl_opt(item,6) {}
set impl_opt(override_existing_project) 	"1"
set impl_opt(item,7) impl_opt(override_existing_project)
set impl_opt(use_smart_guide) 	"0"
set impl_opt(item,324) impl_opt(use_smart_guide)
set impl_opt(_use_filter_messages) 	"0"
set impl_opt(_filter_messages) 	""
set impl_opt(item,143) {impl_opt(_use_filter_messages) impl_opt(_filter_messages)}
set impl_opt(def_ucf) 	"Custom constraint file"
set impl_opt(ucf_str) 	"C:/My_Designs/project_PSC/range_finder/src/binary_to_dec_converter_constr.ucf"
set impl_opt(item,9) {impl_opt(def_ucf) impl_opt(ucf_str)}
set impl_opt(bat_file_name) 	""
set impl_opt(is_bat_mode) 	"0"
set impl_opt(item,8) {impl_opt(bat_file_name) impl_opt(is_bat_mode)}
set impl_opt(gui,SPARTAN3A,TAB_2) {140 230 141 142 280 231}
set impl_opt(Insert_ChipScope_Core) 	"0"
set impl_opt(item,140) impl_opt(Insert_ChipScope_Core)
set impl_opt(merge_netlists_before_insertion) 	"1"
set impl_opt(item,230) impl_opt(merge_netlists_before_insertion)
set impl_opt(Run_ChipScope_Core_Inserter_GUI) 	"1"
set impl_opt(item,141) impl_opt(Run_ChipScope_Core_Inserter_GUI)
set impl_opt(ChipScope_Core_Inserter_Project_File) 	"C:/My_Designs/project_PSC/range_finder/synthesis/top.cdc"
set impl_opt(item,142) impl_opt(ChipScope_Core_Inserter_Project_File)
set impl_opt(ChipScope_Overwrite_Project_File) 	"0"
set impl_opt(item,280) impl_opt(ChipScope_Overwrite_Project_File)
set impl_opt(chipscope_bat_file_str) 	""
set impl_opt(use_chipscope_bat_file) 	"0"
set impl_opt(item,231) {impl_opt(chipscope_bat_file_str) impl_opt(use_chipscope_bat_file)}
set impl_opt(gui,SPARTAN3A,TAB_3) {152 55 325 20 86 11 87 125 126 88 45}
set impl_opt(dont_run_translate) 	"0"
set impl_opt(item,152) impl_opt(dont_run_translate)
set impl_opt(Allow_Unmatched_LOC_Constraint) 	"0"
set impl_opt(item,55) impl_opt(Allow_Unmatched_LOC_Constraint)
set impl_opt(Allow_Unmatched_Timing_Group_Constraints) 	"0"
set impl_opt(item,325) impl_opt(Allow_Unmatched_Timing_Group_Constraints)
set impl_opt(ignore_rloc_constraints) 	"1"
set impl_opt(item,20) impl_opt(ignore_rloc_constraints)
set impl_opt(Netlist_Translation_Type) 	"Timestamp"
set impl_opt(item,86) impl_opt(Netlist_Translation_Type)
set impl_opt(insert_pads) 	"0"
set impl_opt(item,11) impl_opt(insert_pads)
set impl_opt(Allow_Unexpanded_Blocks) 	"0"
set impl_opt(item,87) impl_opt(Allow_Unexpanded_Blocks)
set impl_opt(Use_Rules_File_For_Nelist) 	""
set impl_opt(item,126) impl_opt(Use_Rules_File_For_Nelist)
set impl_opt(Other_Ngdbuild_Options) 	""
set impl_opt(item,88) impl_opt(Other_Ngdbuild_Options)
set impl_opt(ngdbuild_file_str) 	""
set impl_opt(use_ngdbuild_file) 	"0"
set impl_opt(item,45) {impl_opt(ngdbuild_file_str) impl_opt(use_ngdbuild_file)}
set impl_opt(gui,SPARTAN3A,TAB_4) {153 289 290 56 21 96 18 46}
set impl_opt(dont_run_map) 	"0"
set impl_opt(item,153) impl_opt(dont_run_map)
set impl_opt(Ignore_User_Timing_Constraints_Map) 	"0"
set impl_opt(item,289) impl_opt(Ignore_User_Timing_Constraints_Map)
set impl_opt(Timing_Mode_Map) 	"Non Timing Driven"
set impl_opt(item,290) impl_opt(Timing_Mode_Map)
set impl_opt(Show_Trim_Unconnected_Signals) 	"1"
set impl_opt(item,56) impl_opt(Show_Trim_Unconnected_Signals)
set impl_opt(create_detailed_report) 	"0"
set impl_opt(item,21) impl_opt(create_detailed_report)
set impl_opt(Use_Rloc_Constraints) 	"Yes"
set impl_opt(item,96) impl_opt(Use_Rloc_Constraints)
set impl_opt(Pack_IO_Registers_Latches) 	"Off"
set impl_opt(item,18) impl_opt(Pack_IO_Registers_Latches)
set impl_opt(map_file_str) 	""
set impl_opt(use_map_file) 	"0"
set impl_opt(item,46) {impl_opt(map_file_str) impl_opt(use_map_file)}
set impl_opt(gui,SPARTAN3A,TAB_5) {261 244 245 247 248 249 285 250 286 287 288 251}
set impl_opt(dont_run_post_map_trace) 	"0"
set impl_opt(item,261) impl_opt(dont_run_post_map_trace)
set impl_opt(Report_Type) 	"Verbose report"
set impl_opt(item,244) impl_opt(Report_Type)
set impl_opt(Number_of_items_in_Error_Verbose_Report) 	"3"
set impl_opt(item,245) impl_opt(Number_of_items_in_Error_Verbose_Report)
set impl_opt(Perform_Advanced_Analysis) 	"0"
set impl_opt(item,247) impl_opt(Perform_Advanced_Analysis)
set impl_opt(Change_Device_Speed_To) 	"4"
set impl_opt(item,248) impl_opt(Change_Device_Speed_To)
set impl_opt(Report_Uncovered_Paths) 	""
set impl_opt(item,249) impl_opt(Report_Uncovered_Paths)
set impl_opt(Report_Paths_By_Endpoint) 	"3"
set impl_opt(item,285) impl_opt(Report_Paths_By_Endpoint)
set impl_opt(Report_Fastest_Path_in_Each_Constraint) 	"1"
set impl_opt(item,250) impl_opt(Report_Fastest_Path_in_Each_Constraint)
set impl_opt(Generate_Datasheet_Section) 	"1"
set impl_opt(item,286) impl_opt(Generate_Datasheet_Section)
set impl_opt(Generate_Timegroups_Section) 	"0"
set impl_opt(item,287) impl_opt(Generate_Timegroups_Section)
set impl_opt(Constraints_Interaction_Report_File) 	""
set impl_opt(item,288) impl_opt(Constraints_Interaction_Report_File)
set impl_opt(post_map_file_str) 	""
set impl_opt(use_post_map_file) 	"0"
set impl_opt(item,251) {impl_opt(post_map_file_str) impl_opt(use_post_map_file)}
set impl_opt(gui,SPARTAN3A,TAB_6) {89 90 144 145 235 146 92 95 16 98 268 291 99}
set impl_opt(Perform_Timing_Driven_Packing_Placement) 	"0"
set impl_opt(item,89) impl_opt(Perform_Timing_Driven_Packing_Placement)
set impl_opt(Map_Effort_Level) 	"High"
set impl_opt(item,90) impl_opt(Map_Effort_Level)
set impl_opt(AdvMap_Extra_Effort) 	"None"
set impl_opt(item,144) impl_opt(AdvMap_Extra_Effort)
set impl_opt(Map_Starting_Placer_Cost_Table) 	"1"
set impl_opt(item,145) impl_opt(Map_Starting_Placer_Cost_Table)
set impl_opt(Combinatorial_Logic_Optimization) 	"0"
set impl_opt(item,235) impl_opt(Combinatorial_Logic_Optimization)
set impl_opt(Show_Register_Duplication) 	"0"
set impl_opt(item,146) impl_opt(Show_Register_Duplication)
set impl_opt(Allow_Logic_Opt_Across_Hier) 	"0"
set impl_opt(item,92) impl_opt(Allow_Logic_Opt_Across_Hier)
set impl_opt(Optimization_Strategy) 	"Area"
set impl_opt(item,95) impl_opt(Optimization_Strategy)
set impl_opt(CLB_Packing_Strategy) 	"100"
set impl_opt(item,16) impl_opt(CLB_Packing_Strategy)
set impl_opt(Show_Map_Slice_Logic_Into_Unused_Blocks) 	"0"
set impl_opt(item,98) impl_opt(Show_Map_Slice_Logic_Into_Unused_Blocks)
set impl_opt(Power_Reduction_Map) 	"0"
set impl_opt(item,268) impl_opt(Power_Reduction_Map)
set impl_opt(Power_Activity_File_Map) 	""
set impl_opt(item,291) impl_opt(Power_Activity_File_Map)
set impl_opt(Other_Map_Options) 	""
set impl_opt(item,99) impl_opt(Other_Map_Options)
set impl_opt(gui,SPARTAN3A,TAB_7) {154  3 100 101 102 59 60 292 293 124 47  236 237 241 294}
set impl_opt(dont_run_place) 	"0"
set impl_opt(item,154) impl_opt(dont_run_place)
set impl_opt(Effort_Level) 	"High"
set impl_opt(item,3) impl_opt(Effort_Level)
set impl_opt(Placer_Effort_Level) 	"None"
set impl_opt(item,100) impl_opt(Placer_Effort_Level)
set impl_opt(Router_Effort_Level) 	"None"
set impl_opt(item,101) impl_opt(Router_Effort_Level)
set impl_opt(Extra_Effort) 	"None"
set impl_opt(item,102) impl_opt(Extra_Effort)
set impl_opt(Starting_Placer_Cost_Table) 	"1"
set impl_opt(item,59) impl_opt(Starting_Placer_Cost_Table)
set impl_opt(Place_And_Route_Mode) 	"Normal"
set impl_opt(item,60) impl_opt(Place_And_Route_Mode)
set impl_opt(Ignore_User_Timing_Constraints_Par) 	"0"
set impl_opt(item,292) impl_opt(Ignore_User_Timing_Constraints_Par)
set impl_opt(Timing_Mode_Par) 	"Performance Evaluation"
set impl_opt(item,293) impl_opt(Timing_Mode_Par)
set impl_opt(Show_Other_Place_Route_Command) 	""
set impl_opt(item,124) impl_opt(Show_Other_Place_Route_Command)
set impl_opt(par_file_str) 	""
set impl_opt(use_par_file) 	"0"
set impl_opt(item,47) {impl_opt(par_file_str) impl_opt(use_par_file)}
set impl_opt(Generate_Asynchronous_Delay_Report) 	"0"
set impl_opt(item,236) impl_opt(Generate_Asynchronous_Delay_Report)
set impl_opt(Generate_Clock_Region_Report) 	"0"
set impl_opt(item,237) impl_opt(Generate_Clock_Region_Report)
set impl_opt(Power_Reduction_Par) 	"0"
set impl_opt(item,241) impl_opt(Power_Reduction_Par)
set impl_opt(Power_Activity_File_Par) 	""
set impl_opt(item,294) impl_opt(Power_Activity_File_Par)
set impl_opt(gui,SPARTAN3A,TAB_8) {242 243}
set impl_opt(Enable_Incremental_Design_Flow) 	"0"
set impl_opt(item,242) impl_opt(Enable_Incremental_Design_Flow)
set impl_opt(Run_Guided_Incremental_Design_Flow) 	"0"
set impl_opt(item,243) impl_opt(Run_Guided_Incremental_Design_Flow)
set impl_opt(gui,SPARTAN3A,TAB_9) {155 252 253 255 256 257 295 258 296 297 259 260 48}
set impl_opt(dont_run_trace) 	"0"
set impl_opt(item,155) impl_opt(dont_run_trace)
set impl_opt(Report_Type2) 	"Verbose report"
set impl_opt(item,252) impl_opt(Report_Type2)
set impl_opt(Number_of_items_in_Error_Verbose_Report2) 	"3"
set impl_opt(item,253) impl_opt(Number_of_items_in_Error_Verbose_Report2)
set impl_opt(Perform_Advanced_Analysis2) 	"0"
set impl_opt(item,255) impl_opt(Perform_Advanced_Analysis2)
set impl_opt(Change_Device_Speed_To2) 	"4"
set impl_opt(item,256) impl_opt(Change_Device_Speed_To2)
set impl_opt(Report_Uncovered_Paths2) 	""
set impl_opt(item,257) impl_opt(Report_Uncovered_Paths2)
set impl_opt(Report_Paths_By_Endpoint2) 	"3"
set impl_opt(item,295) impl_opt(Report_Paths_By_Endpoint2)
set impl_opt(Report_Fastest_Path_in_Each_Constraint2) 	"1"
set impl_opt(item,258) impl_opt(Report_Fastest_Path_in_Each_Constraint2)
set impl_opt(Generate_Datasheet_Section2) 	"1"
set impl_opt(item,296) impl_opt(Generate_Datasheet_Section2)
set impl_opt(Generate_Timegroups_Section2) 	"0"
set impl_opt(item,297) impl_opt(Generate_Timegroups_Section2)
set impl_opt(Stamp_Timing_Model_Filename) 	""
set impl_opt(item,259) impl_opt(Stamp_Timing_Model_Filename)
set impl_opt(Constraints_Interaction_Report_File2) 	""
set impl_opt(item,260) impl_opt(Constraints_Interaction_Report_File2)
set impl_opt(trace_file_str) 	""
set impl_opt(use_trace_file) 	"0"
set impl_opt(item,48) {impl_opt(trace_file_str) impl_opt(use_trace_file)}
set impl_opt(gui,SPARTAN3A,TAB_10) {156 113 65 262 66 118 67 119 120 68 269 116 121 148 122 147 127 123 49 232 233 234 281}
set impl_opt(dont_run_simulation) 	"0"
set impl_opt(item,156) impl_opt(dont_run_simulation)
set impl_opt(Retain_Hiearchy) 	"1"
set impl_opt(item,113) impl_opt(Retain_Hiearchy)
set impl_opt(Show_Generate_Multiple_Hierarchical_Netlist_Files) 	"0"
set impl_opt(item,65) impl_opt(Show_Generate_Multiple_Hierarchical_Netlist_Files)
set impl_opt(automatically_insert_glbl_module) 	"1"
set impl_opt(item,262) impl_opt(automatically_insert_glbl_module)
set impl_opt(Show_Bring_Out_Global_Trisate_Net_As_Ports) 	""
set impl_opt(Use_Show_Bring_Out_Global_Trisate_Net_As_Ports) 	"0"
set impl_opt(item,66) {impl_opt(Show_Bring_Out_Global_Trisate_Net_As_Ports) impl_opt(Use_Show_Bring_Out_Global_Trisate_Net_As_Ports)}
set impl_opt(Tristate_Configuration_Pulsee) 	"0"
set impl_opt(item,118) impl_opt(Tristate_Configuration_Pulsee)
set impl_opt(Show_Bring_Out_Global_Set_Reset_Net_As_Ports) 	""
set impl_opt(Use_Show_Bring_Out_Global_Set_Reset_Net_As_Ports) 	"0"
set impl_opt(item,67) {impl_opt(Show_Bring_Out_Global_Set_Reset_Net_As_Ports) impl_opt(Use_Show_Bring_Out_Global_Set_Reset_Net_As_Ports)}
set impl_opt(Reset_Configuration_Pulsee) 	"100"
set impl_opt(item,119) impl_opt(Reset_Configuration_Pulsee)
set impl_opt(Generate_Architecture_Only) 	"0"
set impl_opt(item,120) impl_opt(Generate_Architecture_Only)
set impl_opt(Show_Generate_Testbench_File) 	"UUT"
set impl_opt(Use_Show_Generate_Testbench_File) 	"0"
set impl_opt(item,68) {impl_opt(Show_Generate_Testbench_File) impl_opt(Use_Show_Generate_Testbench_File)}
set impl_opt(Output_Extended_Identifiers) 	"0"
set impl_opt(item,269) impl_opt(Output_Extended_Identifiers)
set impl_opt(Change_Device_Speed) 	"4"
set impl_opt(item,116) impl_opt(Change_Device_Speed)
set impl_opt(Include_Uselib_Directive) 	"0"
set impl_opt(item,121) impl_opt(Include_Uselib_Directive)
set impl_opt(Include_Simprim_Models_In_Verilog_File) 	"0"
set impl_opt(item,148) impl_opt(Include_Simprim_Models_In_Verilog_File)
set impl_opt(Do_Not_Escape_Signal) 	"0"
set impl_opt(item,122) impl_opt(Do_Not_Escape_Signal)
set impl_opt(Include_Function_In_Verilog_File) 	"1"
set impl_opt(item,147) impl_opt(Include_Function_In_Verilog_File)
set impl_opt(Path_Used_In_Sdf) 	"implement"
set impl_opt(item,127) impl_opt(Path_Used_In_Sdf)
set impl_opt(Other_Netgen_Command) 	""
set impl_opt(item,123) impl_opt(Other_Netgen_Command)
set impl_opt(netgen_file_str) 	""
set impl_opt(use_netgen_file) 	"0"
set impl_opt(item,49) {impl_opt(netgen_file_str) impl_opt(use_netgen_file)}
set impl_opt(Rename_Top_Level_Architecture_to) 	"Structure"
set impl_opt(item,232) impl_opt(Rename_Top_Level_Architecture_to)
set impl_opt(Rename_Top_Level_Entity_to) 	""
set impl_opt(item,233) impl_opt(Rename_Top_Level_Entity_to)
set impl_opt(Rename_Top_Level_Module_to) 	""
set impl_opt(item,234) impl_opt(Rename_Top_Level_Module_to)
set impl_opt(insert_buffers_to_prevent_pulse_swallowing) 	"1"
set impl_opt(item,281) impl_opt(insert_buffers_to_prevent_pulse_swallowing)
set impl_opt(gui,SPARTAN3A,TAB_11) {163 158 164 165 166 167 168 169 170 171 298 176 177 178 179 180 181 198 199 200 201 203 204 206 207 212 213 220 221 222 223 224 225 299 300 301 302 51 273 274 275 277 278 279}
set impl_opt(dont_run_bitgen) 	"1"
set impl_opt(item,158) impl_opt(dont_run_bitgen)
set impl_opt(run_design_rules_checker) 	"1"
set impl_opt(item,164) impl_opt(run_design_rules_checker)
set impl_opt(create_bit_file) 	"1"
set impl_opt(item,165) impl_opt(create_bit_file)
set impl_opt(create_binary_config_file) 	"0"
set impl_opt(item,166) impl_opt(create_binary_config_file)
set impl_opt(create_ascii_config_file) 	"0"
set impl_opt(item,167) impl_opt(create_ascii_config_file)
set impl_opt(create_ieee_1532_config_file_fpga) 	"0"
set impl_opt(item,168) impl_opt(create_ieee_1532_config_file_fpga)
set impl_opt(enable_bitstream_compression) 	"0"
set impl_opt(item,169) impl_opt(enable_bitstream_compression)
set impl_opt(enable_debugging_of_serial_mode_bitstream) 	"0"
set impl_opt(item,170) impl_opt(enable_debugging_of_serial_mode_bitstream)
set impl_opt(enable_cyclic_redundancy_checking) 	"1"
set impl_opt(item,171) impl_opt(enable_cyclic_redundancy_checking)
set impl_opt(retry_configuration_if_crc_error_occurs) 	"0"
set impl_opt(item,298) impl_opt(retry_configuration_if_crc_error_occurs)
set impl_opt(other_bitgen_command_line_options) 	""
set impl_opt(item,176) impl_opt(other_bitgen_command_line_options)
set impl_opt(security) 	"Enable Readback and Reconfiguration"
set impl_opt(item,177) impl_opt(security)
set impl_opt(create_readback_data_files) 	"0"
set impl_opt(item,178) impl_opt(create_readback_data_files)
set impl_opt(allow_selectmap_pins_to_persist) 	"0"
set impl_opt(item,179) impl_opt(allow_selectmap_pins_to_persist)
set impl_opt(create_logic_allocation_file) 	"0"
set impl_opt(item,180) impl_opt(create_logic_allocation_file)
set impl_opt(create_mask_file) 	"0"
set impl_opt(item,181) impl_opt(create_mask_file)
set impl_opt(fpga_start_up_clock) 	"CCLK"
set impl_opt(item,198) impl_opt(fpga_start_up_clock)
set impl_opt(enable_internal_done_pipe) 	"0"
set impl_opt(item,199) impl_opt(enable_internal_done_pipe)
set impl_opt(done_output_events) 	"4"
set impl_opt(item,200) impl_opt(done_output_events)
set impl_opt(enable_outputs) 	"5"
set impl_opt(item,201) impl_opt(enable_outputs)
set impl_opt(release_write_enable) 	"6"
set impl_opt(item,203) impl_opt(release_write_enable)
set impl_opt(release_dll) 	"NoWait"
set impl_opt(item,204) impl_opt(release_dll)
set impl_opt(drive_done_pin_high) 	"0"
set impl_opt(item,206) impl_opt(drive_done_pin_high)
set impl_opt(configuration_rate) 	"25"
set impl_opt(item,207) impl_opt(configuration_rate)
set impl_opt(configuration_pin_program) 	"Pull Up"
set impl_opt(item,212) impl_opt(configuration_pin_program)
set impl_opt(configuration_pin_done) 	"Pull Up"
set impl_opt(item,213) impl_opt(configuration_pin_done)
set impl_opt(jtag_pin_tck) 	"Pull Up"
set impl_opt(item,220) impl_opt(jtag_pin_tck)
set impl_opt(jtag_pin_tdi) 	"Pull Up"
set impl_opt(item,221) impl_opt(jtag_pin_tdi)
set impl_opt(jtag_pin_tdo) 	"Pull Up"
set impl_opt(item,222) impl_opt(jtag_pin_tdo)
set impl_opt(jtag_pin_tms) 	"Pull Up"
set impl_opt(item,223) impl_opt(jtag_pin_tms)
set impl_opt(unused_iob_pins) 	"Pull Down"
set impl_opt(item,224) impl_opt(unused_iob_pins)
set impl_opt(userid_code) 	"0xFFFFFFFF"
set impl_opt(item,225) impl_opt(userid_code)
set impl_opt(place_multiboot_settings_into_bitstream) 	"0"
set impl_opt(item,299) impl_opt(place_multiboot_settings_into_bitstream)
set impl_opt(multiboot_starting_address_for_next_configuration) 	"0x00000000"
set impl_opt(item,300) impl_opt(multiboot_starting_address_for_next_configuration)
set impl_opt(multiboot_use_new_mode_for_next_configuration) 	"1"
set impl_opt(item,301) impl_opt(multiboot_use_new_mode_for_next_configuration)
set impl_opt(multiboot_next_configuration_mode) 	"001"
set impl_opt(item,302) impl_opt(multiboot_next_configuration_mode)
set impl_opt(bitgen_file_str) 	""
set impl_opt(use_bitgen_file) 	"0"
set impl_opt(item,51) {impl_opt(bitgen_file_str) impl_opt(use_bitgen_file)}
set impl_opt(enable_suspend_wake_global_set_reset) 	"0"
set impl_opt(item,273) impl_opt(enable_suspend_wake_global_set_reset)
set impl_opt(enable_power_on_reset_detection) 	"1"
set impl_opt(item,274) impl_opt(enable_power_on_reset_detection)
set impl_opt(drive_awake_pin_during_suspend_wake_sequence) 	"0"
set impl_opt(item,275) impl_opt(drive_awake_pin_during_suspend_wake_sequence)
set impl_opt(wakeup_control) 	"Startup Clock"
set impl_opt(item,277) impl_opt(wakeup_control)
set impl_opt(gwe_cycle_during_suspend_wakeup_sequence) 	"5"
set impl_opt(item,278) impl_opt(gwe_cycle_during_suspend_wakeup_sequence)
set impl_opt(gts_cycle_during_suspend_wakeup_sequence) 	"4"
set impl_opt(item,279) impl_opt(gts_cycle_during_suspend_wakeup_sequence)
set impl_opt(gui,SPARTAN3A,TAB_12) {}
set impl_opt(run_mode) 0
set impl_opt(Macro_Search_Path) {}
set impl_opt(use_partitions_file)  "0"
set impl_opt(partitions_file) "C:/My_Designs/project_PSC/range_finder/synthesis/xpartition.pxml"
set impl_opt(smart_guide_file) "C:/My_Designs/project_PSC/range_finder/implement/ver1/rev1/top_guide.ncd"
set impl_opt(TCL_SCRIPT_MODE) 1

# performs implementation
::mv_xilinx14::Run_Implementation
}
exit
