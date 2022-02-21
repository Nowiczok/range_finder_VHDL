library ieee;
use ieee.STD_LOGIC_UNSIGNED.all;
use ieee.std_logic_1164.all;

	-- Add your library and packages declaration here ...

entity Top_tb is
end Top_tb;

architecture TB_ARCHITECTURE of Top_tb is
	-- Component declaration of the tested unit
	component top
	port(
			SIG : in STD_LOGIC;
	        CLK : in STD_LOGIC;
	        SEL_CHANNEL : out STD_LOGIC_VECTOR(2 downto 0);
	        OUTPUT : out STD_LOGIC_VECTOR(6 downto 0);
	        TRIG : out STD_LOGIC
		);
	end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	   signal SIG : STD_LOGIC;	   
	   signal CLK : STD_logic;
	   signal CE : STD_logic;
	   signal CONVERT : STD_logic;
	
	-- Observed signals - signals mapped to the output ports of tested entity
	   signal SEL_CHANNEL : STD_LOGIC_VECTOR(2 downto 0);	
	   signal OUTPUT : STD_LOGIC_VECTOR(6 downto 0); 
	   signal trig : STD_LOGIC;

	--Signal is used to stop clock signal generators
	signal END_SIM: BOOLEAN:=FALSE;

	-- Add your code here ...

begin

	-- Unit Under Test port map
	UUT : top
		port map (
		SIG => SIG,
		CLK => CLK,
		SEL_CHANNEL => SEL_CHANNEL,
		OUTPUT => OUTPUT,
		TRIG => TRIG
		);

	--Below VHDL code is an inserted .\compile\Initial.vhs
	--User can modify it ....

STIMULUS: process
begin  -- of stimulus process
--wait for <time to next event>; -- <current time>
    wait for 800000 ns;
	END_SIM <= TRUE;
--	end of stimulus events
	wait;
end process; -- end of stimulus process


SIG_STIM: process
begin
	sig <= '0';
	wait for 100 us;
	sig <= '1';
	wait for 174 us;
	sig <= '0';
	wait;
end process;


CLOCK_CLK : process
begin
	--this process was generated based on formula: 0 0 ns, 1 50 ns -r 100 ns
	--wait for <time to next event>; -- <current time>
	if END_SIM = FALSE then
		CLK <= '0';
		wait for 41.66 ns; --0 fs
	else
		wait;
	end if;
	if END_SIM = FALSE then
		CLK <= '1';
		wait for 41.66 ns; --50 ns
	else
		wait;
	end if;
end process;




	-- Add your stimulus here ...

end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_TOP of top_tb is
	for TB_ARCHITECTURE
		for UUT : top
			use entity work.top(top);
		end for;
	end for;
end TESTBENCH_FOR_TOP;

