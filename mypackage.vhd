-- Arash Rouhani
-- cid: rarash
-- inlamningsuppgift 3.2

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;


package mypackage is
  component fjr
    port (
       clk, reset, j, k : IN std_logic;
       q                : OUT std_logic
      ) ;
  end component;
end package; -- mypackage

