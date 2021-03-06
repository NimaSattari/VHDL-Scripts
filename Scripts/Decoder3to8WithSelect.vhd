LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Decoder3to8WithSelect is
	port( I:in std_logic_vector(2 downto 0);
	      O:out std_logic_vector(7 downto 0));
end Decoder3to8WithSelect;

architecture with_else of Decoder3to8WithSelect is
begin
	with I Select
	O<= 
		"00000001" when "000",
		"00000010" when "001",
		"00000100" when "010",
		"00001000" when "011",
		"00010000" when "100",
		"00100000" when "101",
		"01000000" when "110",
		"10000000" when "111",
		"XXXXXXXX" when others;
end with_else;