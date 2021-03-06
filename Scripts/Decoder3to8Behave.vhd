LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Decoder3to8Behave is 
port
	(i: in std_logic_vector (2 downto 0);
	o: out std_logic_vector (7 downto 0));
end Decoder3to8Behave;

architecture behavioral of Decoder3to8Behave is
begin
o<=
    		"00000001" when i = "000" else
   		"00000010" when i = "001" else
   		"00000100" when i = "010" else
   		"00001000" when i = "011" else
   		"00010000" when i = "100" else
   		"00100000" when i = "101" else
   		"01000000" when i = "110" else
   		"10000000" when i = "111" else
   		"ZZZZZZZZ";
end behavioral;