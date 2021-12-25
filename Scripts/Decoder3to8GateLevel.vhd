LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Decoder3to8GateLevel is 
port
	(i: in std_logic_vector (2 downto 0);
	o: out std_logic_vector (7 downto 0));
end Decoder3to8GateLevel;

architecture GateLevel of Decoder3to8GateLevel is
begin
	O(0) <= (not I(2)) and (not I(1)) and (not I(0));
	O(1) <= (not I(2)) and (not I(1)) and (    I(0));
	O(2) <= (not I(2)) and (    I(1)) and (not I(0));
	O(3) <= (not I(2)) and (    I(1)) and (    I(0));
	O(4) <= (    I(2)) and (not I(1)) and (not I(0));
	O(5) <= (    I(2)) and (not I(1)) and (    I(0));
	O(6) <= (    I(2)) and (    I(1)) and (not I(0));
	O(7) <= (    I(2)) and (    I(1)) and (    I(0));

end GateLevel;