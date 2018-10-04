--simple sr latch
library ieee;               
use ieee.std_logic_1164.all;
use IEEE.numeric_std.all;

entity srlatch is
  port
 (
  S: in std_logic;
  R: in std_logic;
  Q: inout std_logic
 );
end srlatch;

architecture behavior of srlatch is
 signal notQ: std_logic;

begin
    Q <= R nor notQ;
 notQ <= S nor Q;
 
end behavior;