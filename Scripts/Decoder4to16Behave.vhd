LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Decoder4to16Behave is 
port
	(i: in std_logic_vector (3 downto 0);
	o: out std_logic_vector (15 downto 0));
end Decoder4to16Behave;

architecture behavioral of Decoder4to16Behave is
begin
o<=
    		"0000000000000001" when i = "0000" else
   		"0000000000000010" when i = "0001" else
   		"0000000000000100" when i = "0010" else
   		"0000000000001000" when i = "0011" else
   		"0000000000010000" when i = "0100" else
   		"0000000000100000" when i = "0101" else
   		"0000000001000000" when i = "0110" else
   		"0000000010000000" when i = "0111" else
    		"0000000100000000" when i = "1000" else
   		"0000001000000000" when i = "1001" else
   		"0000010000000000" when i = "1010" else
   		"0000100000000000" when i = "1011" else
   		"0001000000000000" when i = "1100" else
   		"0010000000000000" when i = "1101" else
   		"0100000000000000" when i = "1110" else
   		"1000000000000000" when i = "1111" else
   		"ZZZZZZZZZZZZZZZZ";
end behavioral;