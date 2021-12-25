library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity FF_JK_ActiveZero is
	port( J, K, CLK : in std_logic;
		Q : out std_logic);
end FF_JK_ActiveZero;

architecture Behavioral of FF_JK_ActiveZero is
begin
process(J, K, CLK)
	variable TEMP : std_logic;
begin
	if(CLK = '0')then
		if(J='0' and K='0')then
			TEMP := TEMP;
		elsif(J='0' and K='1')then
			TEMP := '0';
		elsif(J='1' and K='0')then
			TEMP := '1';
		elsif(J='1' and K='1')then
			TEMP := not TEMP;
		else
			null;
		end if;
	else
		null;
	end if;
	Q <= TEMP;
end process;
end Behavioral;