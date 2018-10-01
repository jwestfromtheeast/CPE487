-- 4 bit adder testbench
LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- declaration

entity test_add4 is
end test_add4;

-- describe the functionality

architecture test of test_add4 is 

	component add4
		port( a, b		: in    	std_logic_vector(3 downto 0);
		      ans		: out		std_logic_vector(3 downto 0);
		      cout		: out 	std_logic		);
	end component;

	for U1: add4 use entity WORK.ADD4(STRUCTURE);
	signal a, b		: std_logic_vector(3 downto 0);
	signal ans		: std_logic_vector(3 downto 0);
	signal cout		: std_logic;
	
	begin
	U1: add4 port map (a,b,ans,cout);
	
		process
		begin

		-- Case 1 that we are testing.

			a <= "0000";
			b <= "0000";
			wait for 10 ns;
			assert ( ANS = "0000" )	report "Failed Case 1 - ANS" severity error;
			assert ( Cout = '0' )   report "Failed Case 1 - Cout" severity error;
			wait for 40 ns;

		-- Case 2 that we are testing.

			a <= "1111";
			b <= "1111";
			wait for 10 ns;
			assert ( ANS = "1110" )	report "Failed Case 2 - ANS" severity error;
			assert ( Cout = '1' )   report "Failed Case 2 - Cout" severity error;
			wait for 40 ns;
		end process;
END test;