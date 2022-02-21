-------------------------------------------------------------------------------
--
-- Title       : Configuration top_tb_conf for top_tb
-- Design      : range_finder
-- Author      : Michal
-- Company     : AGH
--
-------------------------------------------------------------------------------
--
-- File        : C:\My_Designs\project_PSC\range_finder\src\top_tb_conf.vhd
-- Generated   : 12.01.2022, 10:30
-- From        : no source file
-- By          : Active-HDL Built-in Configuration Generator ver. 1.2s
--
-------------------------------------------------------------------------------
--
-- Description : Automatically generated configuration file for top_tb
--
-------------------------------------------------------------------------------

library range_finder;
use range_finder.all;

configuration top_tb_conf of top_tb is
for TB_ARCHITECTURE
	for UUT : top 
		use entity range_finder.top (top);
		for top
			for U3 : trig_unit 
				use entity range_finder.trig_unit (trig_unit);
			end for;
		end for;
	end for;
end for;
end top_tb_conf;
