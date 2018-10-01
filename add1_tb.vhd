-- 1 bit adder testbench

-- imports
LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity test_add1 is
end test_add1;

-- functionality of the testbench
architecture test of test_add1 is 

	component bit_adder
		port( a, b, cin         : in  std_logic;
	      	sum, cout         : out std_logic );
	end component;

	-- Specifies which description of the adder you will use.
	for U1: BIT_ADDER use entity WORK.BIT_ADDER(BHV);

	-- create signals to test
	signal A_s, B_s	: std_logic;
	signal CIN_s	: std_logic;
	signal SUM_s	: std_logic;
	signal COUT_s	: std_logic;

	-- actual testbench begins here	
	begin
	
	U1: BIT_ADDER port map (A_s, B_s, CIN_s, SUM_s, COUT_s);
	
	process
	begin

		A_s <= '0';
		B_s <= '0';
		CIN_s <= '0';
		
		wait for 10 ns;
		assert ( SUM_s = '0'  ) report "Failed Case 0 - SUM" severity error;
		assert ( COUT_s = '0' ) report "Failed Case 0 - COUT" severity error;
		wait for 40 ns;

		A_s <= '0';
		B_s <= '0';
		CIN_s <= '1';
		wait for 10 ns;
		assert ( SUM_s = '1'  ) report "Failed Case 1 - SUM" severity error;
		assert ( COUT_s = '0' ) report "Failed Case 1 - COUT" severity error;
		wait for 40 ns;

		A_s <= '0';
		B_s <= '1';
		CIN_s <= '0';
		wait for 10 ns;
		assert ( SUM_s = '1'  ) report "Failed Case 2 - SUM" severity error;
		assert ( COUT_s = '0' ) report "Failed Case 2 - COUT" severity error;
		wait for 40 ns;

		A_s <= '0';
		B_s <= '1';
		CIN_s <= '1';
		wait for 10 ns;
		assert ( SUM_s = '0'  ) report "Failed Case 3 - SUM" severity error;
		assert ( COUT_s = '1' ) report "Failed Case 3 - COUT" severity error;
		wait for 40 ns;

		A_s <= '1';
		B_s <= '0';
		CIN_s <= '0';
		wait for 10 ns;
		assert ( SUM_s = '1'  ) report "Failed Case 4 - SUM" severity error;
		assert ( COUT_s = '0' ) report "Failed Case 4 - COUT" severity error;
		wait for 40 ns;

		A_s <= '1';
		B_s <= '0';
		CIN_s <= '1';
		wait for 10 ns;
		assert ( SUM_s = '0'  ) report "Failed Case 5 - SUM" severity error;
		assert ( COUT_s = '1' ) report "Failed Case 5 - COUT" severity error;
		wait for 40 ns;

		A_s <= '1';
		B_s <= '1';
		CIN_s <= '0';
		wait for 10 ns;
		assert ( SUM_s = '0'  ) report "Failed Case 6 - SUM" severity error;
		assert ( COUT_s = '1' ) report "Failed Case 6 - COUT" severity error;
		wait for 40 ns;

		A_s <= '1';
		B_s <= '1';
		CIN_s <= '1';
		wait for 10 ns;
		assert ( SUM_s = '1'  ) report "Failed Case 7 - SUM" severity error;
		assert ( COUT_s = '1' ) report "Failed Case 7 - COUT" severity error;
		wait for 40 ns;

	end process;
END TEST;
