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