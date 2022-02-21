-------------------------------------------------------------------------------
--
-- Title       : trig_unit
-- Design      : range_finder
-- Author      : Michal
-- Company     : AGH
--
-------------------------------------------------------------------------------
--
-- File        : c:/My_Designs/project_PSC/range_finder/src/NOT_gate.vhd
-- Generated   : Sun Dec 19 17:20:34 2021
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.22
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------

--{{ Section below this comment is automatically maintained
--   and may be overwritten
--{entity {NOT_gate} architecture {NOT_gate}}
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;


entity trig_unit is
	generic(period : integer; pulse : integer);
	port(
	CLK : in STD_logic;
	CE : in STD_logic;
	output : out  STD_logic
	);
end trig_unit;

--}} End of automatically maintained section

architecture trig_unit of trig_unit is
	signal cnt : STD_LOGIC_Vector(31 downto 0) := (others => '0');
begin
	-- period is 6000000, pulse length is 120
	count_proc: process(clk)
	begin  
		if rising_edge(clk) then
			if CE = '1' then
				if cnt < (period + pulse) then
					cnt <= cnt + 1;
				else
					cnt <= (others => '0');
				end if;
			end if;
		end if;
	end process;
	
	trig_proc: process(clk)
	begin
		if rising_edge(clk) then
			if CE = '1' then
				if cnt < period then
					output <= '0';
				else
					output <= '1';
				end if;
			end if;
		end if;	    
	end process;	
		
end trig_unit;
