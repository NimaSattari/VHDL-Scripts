library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity NBitCounterLow is
generic(n: natural :=4);
port(	clock,clear,count: in std_logic;
	Q: out std_logic_vector(n-1 downto 0));
end NBitCounterLow;

architecture Behavior of NBitCounterLow is
	signal pre_Q: std_logic_vector(n-1 downto 0);
begin
	process(clock,count,clear)
	begin
		if clear = '0' then
			pre_Q <= (pre_Q'range => '0');
		elsif(clock = '0' and clock'event) then
			if count = '0' then
				pre_Q <= pre_Q + 1;
			end if;
		end if;
	end process;
	Q <= pre_Q;
end Behavior;