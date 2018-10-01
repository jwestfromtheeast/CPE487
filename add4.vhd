-- 1 bit adder

LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- This will add two bits together(x,y), with a carry in(cin) and 
-- output the sum(sum) and a carry out(cout).
entity bit_adder is
        port( a, b, cin         : in  std_logic;
              sum, cout         : out std_logic );
end bit_adder;

-- This describes the functionality of the 1-BIT adder.
architecture adder_arch of bit_adder is
begin
        
        -- calculate sum
        sum <=  (not a and not b and cin) or
                        (not a and b and not cin) or
                        (a and not b and not cin) or
                        (a and b and cin);

        -- calculate carry out
        cout <= (not a and b and cin) or
                        (a and not b and cin) or
                        (a and b and not cin) or
                        (a and b and cin);
end adder_arch;

-- uses 4 one bit adders from the code above (and from the add1 code)
-- black box view
entity add4 is
	port( a, b		: in	std_logic_vector(3 downto 0);
	      ans		: out	std_logic_vector(3 downto 0);
	      cout		: out	std_logic		);
end add4;

architecture struct of add4 is

--include what we already built!
component bit_adder
	port( a, b, cin		: in  std_logic;
	      sum, cout		: out std_logic );
end component;

-- create the signals necessary
signal c0, c1, c2, c3 : std_logic;
begin

c0 <= '0';
b_adder0: bit_adder port map (a(0), b(0), c0, ans(0), c1);
b_adder1: bit_adder port map (a(1), b(1), c1, ans(1), c2);
b_adder2: bit_adder port map (a(2), b(2), c2, ans(2), c3);
b_adder3: bit_adder port map (a(3), b(3), c3, ans(3), cout);

end struct;