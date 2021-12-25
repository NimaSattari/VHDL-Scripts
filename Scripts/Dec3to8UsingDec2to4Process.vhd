LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Dec3to8UsingDec2to4Process is 
port
	(I: in std_logic_vector (2 downto 0);
	 O: out std_logic_vector (7 downto 0));
end Dec3to8UsingDec2to4Process;

architecture Process_Behave of Dec3to8UsingDec2to4Process is
signal Int :std_logic_vector (3 downto 0);
begin

P1: process(I)
begin
	Int(0) <= (not I(1)) and (not I(0));
	Int(1) <= (not I(1)) and (    I(0));
	Int(2) <= (    I(1)) and (not I(0));
	Int(3) <= (    I(1)) and (    I(0));
end process;
P2: process(I,Int)
begin
	if(I(2) = '0')then
		O(3 downto 0) <= Int;
		O(7 downto 4) <= ("0000");
	elsif(I(2) = '1')then
		O(3 downto 0) <= ("0000");
		O(7 downto 4) <= Int;
	end if;
end process;
end Process_Behave;