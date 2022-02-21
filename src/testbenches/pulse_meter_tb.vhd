library ieee;
use ieee.STD_LOGIC_UNSIGNED.all;
use ieee.std_logic_1164.all;

	-- Add your library and packages declaration here ...

entity pulse_meter_tb is
end pulse_meter_tb;

architecture TB_ARCHITECTURE of pulse_meter_tb is
	-- Component declaration of the tested unit
	component pulse_meter
	port(
		START : in STD_logic;
		STOP : in STD_logic;
		CLK : in STD_logic;
		COUNT : out STD_logic_vector(9 downto 0);
		CONVERT : out STD_logic
		);
	end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	   signal START : STD_logic;
	   signal STOP : STD_logic;
	   signal CLK : STD_logic;
	   signal COUNT : STD_logic_vector(9 downto 0);
	
	-- Observed signals - signals mapped to the output ports of tested entity
	   signal CONVERT : STD_logic;

	--Signal is used to stop clock signal generators
	signal END_SIM: BOOLEAN:=FALSE;

	-- Add your code here ...

begin

	-- Unit Under Test port map
	UUT : pulse_meter
		port map 
		(
		START => START,
		STOP => STOP,
		CLK => CLK,
		COUNT => COUNT,
		CONVERT => CONVERT
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
		wait for 50 ns; --0 fs
	else
		wait;
	end if;
	if END_SIM = FALSE then
		CLK <= '1';
		wait for 50 ns; --50 ns
	else
		wait;
	end if;
end process;

-- Add your stimulus here ...

START_STOP_STIM : process
begin
	START <= '0';
	STOP <= '0';
	wait for 300 ns;
	START <= '1';
	wait for 100 ns;
	START <= '0';
	
	wait for 1000 ns;
	
	STOP <= '0';
	wait for 300 ns;
	STOP <= '1';
	wait for 100 ns;
	STOP <= '0';
	wait;
end process;


end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_PULSE_METER of pulse_meter_tb is
	for TB_ARCHITECTURE
		for UUT : pulse_meter
			use entity work.pulse_meter(pulse_meter);
		end for;
	end for;
end TESTBENCH_FOR_PULSE_METER;

