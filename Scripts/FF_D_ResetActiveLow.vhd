library ieee;
use ieee. std_logic_1164.all;
use ieee. std_logic_arith.all;
use ieee. std_logic_unsigned.all;
 
entity FF_D_ResetActiveLow is
PORT( D,CLOCK,RST: in std_logic;
Q: out std_logic);
end FF_D_ResetActiveLow;
 
architecture behavioral of FF_D_ResetActiveLow is
begin
process(CLOCK, RST)
begin

	if(RST = '0')then
		Q <= '0';
	elsif(CLOCK='0' and CLOCK'EVENT) then
		Q <= D;
	end if;
end process;
end behavioral;