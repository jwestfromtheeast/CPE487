library ieee;               
use ieee.std_logic_1164.all;
use IEEE.numeric_std.all;

entity test_sr is
end test_sr;

architecture test of test_sr is
  component srlatch
  port
  (
   S: in std_logic;
   R: in std_logic;
   Q: inout std_logic
  );
 end component;

 signal S, R, Q, notQ: std_logic;

begin

 SR_latch: srlatch port map (S => S, R => R, Q => Q);
 
 process begin
    
    S <= '0';
    R <= '0';
    wait for 1 ns;
 
 S <= '1';
 wait for 1 ns;
 
 S <= '0';
 wait for 1 ns;
 
 R <= '1';
 wait for 1 ns;
 
 R <= '0';
 wait for 1 ns;
 
 assert false report "Test complete!";
    wait;
    
    end process;
 
end test;