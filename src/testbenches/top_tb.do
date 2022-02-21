SetActiveLib -work
comp -include "$dsn\src\TutorVHDL.vhd" 
comp -include "$dsn\src\TestBench\tutorvhdl_TB.vhd" 
asim +access +r TESTBENCH_FOR_TOP 
wave
wave -noreg SIG
wave -noreg CLK	 
wave -noreg SEL_CHANNEL	
wave -noreg OUTPUT	 
wave -noreg TRIG 

run 800000.00 ns
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$dsn\src\TestBench\tutorvhdl_TB_tim_cfg.vhd" 
# asim +access +r TIMING_FOR_tutorvhdl 
