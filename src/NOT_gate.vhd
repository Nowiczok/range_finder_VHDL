-------------------------------------------------------------------------------
--
-- Title       : NOT_gate
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


entity NOT_gate is
	port(
	input : in STD_logic;
	output : out  STD_logic
	);
end NOT_gate;

--}} End of automatically maintained section

architecture NOT_gate of NOT_gate is
begin

	 output <= not input;

end NOT_gate;
