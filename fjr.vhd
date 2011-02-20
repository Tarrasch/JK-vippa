-- Arash Rouhani
-- cid: rarash
-- inlamningsuppgift 3.2

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity fjr is
  port (
    clk, reset, j, k : IN std_logic;
    q                : OUT std_logic
  );
end entity;



architecture myfjr of fjr is
begin
  p0 : process(clk)
    variable v :std_logic;
  begin
    
    if clk'Event and clk = '1' then
      -- only take action when rising edge

      if reset = '1' then
        -- reset is on
          v := '0';
      elsif j = '1' and k = '1' then
        -- reset is off and count is on
          v := not v;
      elsif j = '1' then
          v := '1';
      elsif k = '1' then
          v := '0';
      end if;
    end if;
  end process;
end architecture;
