library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

entity NBitRegLowLoadHighClear is
	generic(n:natural :=2);
port(	I: in std_logic_vector(n-1 downto 0);
	clock,load,clear: in std_logic;
	Q: out std_logic_vector(n-1 downto 0));
end NBitRegLowLoadHighClear;

architecture Behavior of NBitRegLowLoadHighClear is
	signal O_tmp: std_logic_vector(n-1 downto 0);
begin
	process(I,clock,load,clear)
	begin
		if clear = '1' then
			O_tmp <= (O_tmp'range => '0');
		elsif(clock = '0' and clock'event) then
			if load = '0' then
				O_tmp <= I;
			end if;
		end if;
	end process;
	Q <= O_tmp;
end Behavior;