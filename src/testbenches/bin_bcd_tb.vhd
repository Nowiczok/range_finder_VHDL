library ieee;
use ieee.STD_LOGIC_UNSIGNED.all;
use ieee.std_logic_1164.all;

	-- Add your library and packages declaration here ...

entity Bin_bcd_tb is
end Bin_bcd_tb;

architecture TB_ARCHITECTURE of Bin_bcd_tb is
	-- Component declaration of the tested unit
	component bin_bcd_multi_digit
	port(
		DIN : in STD_LOGIC_VECTOR(9 downto 0);	 
		CLK : in STD_LOGIC;			 
		CE : in STD_LOGIC;			
		CONVERT : in STD_LOGIC;
		Dout0 : out STD_LOGIC_VECTOR(3 downto 0);
		Dout1 : out STD_LOGIC_VECTOR(3 downto 0);
		Dout2 : out STD_LOGIC_VECTOR(3 downto 0));	-- outputs
	end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal CLK : STD_LOGIC;	
	signal CE : STD_LOGIC;
	signal CONVERT : STD_LOGIC;
	signal DIN : STD_LOGIC_VECTOR(9 downto 0); 
	
	-- Observed signals - signals mapped to the output ports of tested entity
	signal Dout0 : STD_LOGIC_VECTOR(3 downto 0);	
	signal Dout1 : STD_LOGIC_VECTOR(3 downto 0);
	signal Dout2 : STD_LOGIC_VECTOR(3 downto 0);

	--Signal is used to stop clock signal generators
	signal END_SIM: BOOLEAN:=FALSE;

	-- Add your code here ...

begin

	-- Unit Under Test port map
	UUT : bin_bcd_multi_digit
		port map (
			DIN => DIN,
			CLK => CLK,	  
			CE => CE,	
			CONVERT => CONVERT,
			Dout0 => Dout0,		 
			Dout1 => Dout1,
			Dout2 => Dout2
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


DIN_STIMULUS: process
begin
	DIN <= "0001111101";
	wait;
end process;	


CE_STIMULUS: process
begin
	CE <= '1';
	wait;
end process;


CONVERT_STIMULUS: process
begin
	convert <= '0';
	wait for 40 ns;
	convert <= '1';
	wait for 100 ns; 
	convert <= '0';
	wait;
end process;


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

end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_BIN_BCD of Bin_bcd_tb is
	for TB_ARCHITECTURE
		for UUT : bin_bcd_multi_digit
			use entity work.bin_bcd_multi_digit(behavioral);
		end for;
	end for;
end TESTBENCH_FOR_BIN_BCD;

