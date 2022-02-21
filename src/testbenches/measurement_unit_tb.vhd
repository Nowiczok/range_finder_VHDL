					library ieee;
use ieee.STD_LOGIC_UNSIGNED.all;
use ieee.std_logic_1164.all;

	-- Add your library and packages declaration here ...

entity measurement_unit_tb is
end measurement_unit_tb;

architecture TB_ARCHITECTURE of measurement_unit_tb is
	-- Component declaration of the tested unit
	component measurement_unit
	port(
       sig : in STD_LOGIC;
       CLK : in STD_LOGIC;
       CONVERT : out STD_LOGIC;
       COUNT : out STD_LOGIC_VECTOR(9 downto 0);
       CE : in STD_LOGIC := '1'
  		);
	end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	   signal sig : STD_logic;
	   signal CLK : STD_logic;
	   signal CE : STD_logic;
	
	-- Observed signals - signals mapped to the output ports of tested entity
	   signal CONVERT : STD_logic;
	   signal COUNT : STD_logic_vector(9 downto 0);

	--Signal is used to stop clock signal generators
	signal END_SIM: BOOLEAN:=FALSE;

	-- Add your code here ...

begin

	-- Unit Under Test port map
	UUT : measurement_unit
		port map 
		(
		SIG => SIG,
		CLK => CLK,
		CONVERT => CONVERT,
		COUNT => COUNT,
		CE => CE
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
	SIG <= '0';
	wait for 100 ns;
	SIG <= '1';
	wait for 1000 ns;
	SIG <= '0';
	wait for 100 ns;
	SIG <= '1';
	wait for 500 ns;
	SIG <= '0';
	wait;
	
end process;


end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_MEAS_UNIT of measurement_unit_tb is
	for TB_ARCHITECTURE
		for UUT : measurement_unit
			use entity work.measurement_unit(measurement_unit);
		end for;
	end for;
end TESTBENCH_FOR_MEAS_UNIT;

