-------------------------------------------------------------------------------
--
-- Title       : pulse_meter
-- Design      : range_finder
-- Author      : Michal
-- Company     : AGH
--
-------------------------------------------------------------------------------
--
-- File        : C:\My_Designs\project_PSC\range_finder\src\pulse_meter.vhd
-- Generated   : Mon Dec 20 14:25:31 2021
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.22
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.all;


entity pulse_meter is
	port
	( 
		START : in STD_logic;
		STOP : in STD_logic;
		CLK : in STD_logic;
		CE : in STD_logic;
		COUNT : out STD_logic_vector(9 downto 0);
		CONVERT : out STD_logic
	);
end pulse_meter;


architecture pulse_meter of pulse_meter is
	signal cnt : STD_logic_vector(9 downto 0) := (others => '0');
	signal cnvrt : STD_logic := '0';
	signal increment_flag : STD_logic;
	signal convert_flag : STD_logic;
begin

	--process(clk)
--	begin
--		if rising_edge(clk) then
--			if START = '1' then
--				increment_flag <= '1';
--			elsif STOP = '1' then
--				increment_flag <= '0';
--			end if;
--			
--		end if;
--	end process;
	
	process(clk)
	begin
		if rising_edge(clk) then
			if CE = '1' then
				if START = '1' then
					cnt <= (others => '0');
					increment_flag <= '1';
				elsif STOP = '1' then
					COUNT <= cnt + 1;
					increment_flag <= '0';
					convert_flag <= '1';
				elsif increment_flag = '1' then
					cnt <= cnt + 1;
				elsif increment_flag = '0' and convert_flag = '1' then
					cnvrt <= '1';
					convert_flag <= '0';
				end if;
				
				if cnvrt = '1' then
					cnvrt <= '0';
				end if;		
			end if;
			
		end if;
	end process;  
	
	CONVERT <= cnvrt;
	
end pulse_meter;
