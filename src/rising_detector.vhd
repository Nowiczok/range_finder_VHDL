-------------------------------------------------------------------------------
--
-- Title       : rising_detector
-- Design      : range_finder
-- Author      : Michal
-- Company     : AGH
--
-------------------------------------------------------------------------------
--
-- File        : C:\My_Designs\project_PSC\range_finder\src\rising_detector.vhd
-- Generated   : Mon Dec 20 14:51:53 2021
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


entity rising_detector is 
	port
	(
	sig : in STD_logic;
	clk : in STD_logic;
	CE : in STD_logic;
	output : out STD_logic
	);
end rising_detector;


architecture rising_detector of rising_detector is	
	signal reg : STD_logic_vector(2 downto 0);
begin

	process(clk)
	begin
		
		if rising_edge(clk) then  
			if CE = '1' then
				reg <= reg(1 downto 0) & sig;	
			end if;
		end if;
		
	end process;
	
	output <= '1' when reg = "011" else '0';

end rising_detector;
