-- Arash Rouhani
-- 901117-1213
-- cid: rarash
-- inlamningsuppgift 3.2

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use work.mypackage.all;

Entity tb2fjr is
port ( testok : OUT STD_LOGIC := 'H');
end Entity;

Architecture tb2fjr_bhv of tb2fjr is
  Signal clk   : STD_LOGIC := '0';
  Signal reset : STD_LOGIC := '1';
  Signal j,k   : STD_LOGIC;
  Signal q     : STD_LOGIC;
begin
  u1  : fjr PORT MAP(
    clk => clk,
    reset => reset,
    j => j,
    k => k,
    q => q
  );

  clk <= not clk after 100 ns;
  reset <= '1', '0' after 250 ns;

  test : process
  begin
      j <= '0';
      k <= '0';
      wait for 200 ns;
      if q /= '0' then
          testok <= '0';
      end if;


      wait for 150 ns;
      if q /= '0' then
          testok <= '0';
      end if;

      j <= '1';
      wait for 200 ns;
      if q /= '1' then
          testok <= '0';
      end if;

      j <= '0';
      k <= '1';
      wait for 200 ns;
      if q /= '0' then
          testok <= '0';
      end if;

      j <= '1';
      k <= '1';
      wait for 200 ns;
      if q /= '1' then
          testok <= '0';
      end if;

      wait for 200 ns;
      if q /= '0' then
          testok <= '0';
      end if;

      wait for 200 ns;
      if q /= '1' then
          testok <= '0';
      end if;

      wait;
  end process;
end Architecture;

