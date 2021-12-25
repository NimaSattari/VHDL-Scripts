library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity FF_SR_Beahave is
    Port ( S,R,RST,CLK : in  STD_LOGIC;
           Q : out STD_LOGIC);
end FF_SR_Beahave;

architecture Behavioral of FF_SR_Beahave is
begin

process (RST,CLK)
begin

if (RST = '1') then
	Q <= '0';

elsif (RISING_EDGE(CLK))then

	if (S /= R) then
		Q <= S;

	elsif (S = '1' AND R = '1') then
		Q <= 'Z';

	end if;
end if;

end process;
end Behavioral;