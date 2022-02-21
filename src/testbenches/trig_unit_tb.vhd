

library ieee;
use ieee.STD_LOGIC_UNSIGNED.all;
use ieee.std_logic_1164.all;

	-- Add your library and packages declaration here ...

entity trig_unit_tb is
end trig_unit_tb;

architecture TB_ARCHITECTURE of trig_unit_tb is
	-- Component declaration of the tested unit
	component trig_unit
	port(
			CLK : in STD_logic;
			CE : in STD_logic;
			output : out  STD_logic
  		);
	end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	   signal CLK : STD_logic;
	   signal CE : STD_logic;
	
	-- Observed signals - signals mapped to the output ports of tested entity
	   signal OUTPUT : STD_logic;

	--Signal is used to stop clock signal generators
	signal END_SIM: BOOLEAN:=FALSE;

	-- Add your code here ...

begin

	-- Unit Under Test port map
	UUT : trig_unit
		port map 
		(
		CLK => CLK,
		CE => CE,
		OUTPUT => OUTPUT
		);

	--Below VHDL code is an inserted .\compile\Initial.vhs
	--User can modify it ....

STIMULUS: process
begin  -- of stimulus process
--wait for <time to next event>; -- <current time>
    wait for 4000 ns;
	END_SIM <= TRUE;
--	end of stimulus events
	wait;
end process; -- end of stimulus process





CLOCK_CLK : process
begin
	--this process was generated based on formula: 0 0 ns, 1 50 ns -r 100 ns
	--wait for <time to next event>; -- <current time>
	if END_SIM = FALSE then
		CLK <= '0';
		wait for 5 ns; --0 fs
	else
		wait;
	end if;
	if END_SIM = FALSE then
		CLK <= '1';
		wait for 5 ns; --50 ns
	else
		wait;
	end if;
end process;

-- Add your stimulus here ...

SIG_STIM : process
begin
	CE <= '1';
	wait;
	
end process;


end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_TRIG_UNIT of trig_unit_tb is
	for TB_ARCHITECTURE
		for UUT : trig_unit
			use entity work.trig_unit(trig_unit);
		end for;
	end for;
end TESTBENCH_FOR_TRIG_UNIT;

