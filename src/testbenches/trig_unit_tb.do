																	   SetActiveLib -work
comp -include "$dsn\src\TutorVHDL.vhd" 
comp -include "$dsn\src\TestBench\tutorvhdl_TB.vhd" 
asim +access +r TESTBENCH_FOR_TRIG_UNIT 
wave 
 
wave -noreg CLK
wave -noreg CE	
wave -noreg OUTPUT	 

run 4000.00 ns
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$dsn\src\TestBench\tutorvhdl_TB_tim_cfg.vhd" 
# asim +access +r TIMING_FOR_tutorvhdl 
