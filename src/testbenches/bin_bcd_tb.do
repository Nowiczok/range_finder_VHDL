SetActiveLib -work
comp -include "$dsn\src\TutorVHDL.vhd" 
comp -include "$dsn\src\TestBench\tutorvhdl_TB.vhd" 
asim +access +r TESTBENCH_FOR_BIN_BCD 
wave 
wave -noreg CLK	 
wave -noreg CE
wave -noreg convert	
wave -noreg Din
wave -noreg Dout0  
wave -noreg Dout1
wave -noreg Dout2

run 4000.00 ns
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$dsn\src\TestBench\tutorvhdl_TB_tim_cfg.vhd" 
# asim +access +r TIMING_FOR_tutorvhdl 
