
entity fjr is
  port (
    clk, reset, j, k : IN std_logic;
    q                : OUT std_logic
  );
end entity;



architecture mybcd23 of bcd23 is
begin
  p0 : process(clk)
    variable v :std_logic;
  begin
    
    if clk'Event and clk = '1' then
      -- only take action when rising edge

      if reset = '1' then
        -- reset is on
          v = 0;
      elsif j = '1' and k = '1' then
        -- reset is off and count is on
          v = not v;
      end if;
    end if;
  end process;
end architecture;
