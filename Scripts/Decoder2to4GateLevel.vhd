LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Decoder2to4GateLevel is 
port
	(I: in std_logic_vector (1 downto 0);
	O: out std_logic_vector (3 downto 0));
end Decoder2to4GateLevel;

architecture GateLevel of Decoder2to4GateLevel is
begin
	O(0) <= (not I(1)) and (not I(0));
	O(1) <= (not I(1)) and (    I(0));
	O(2) <= (    I(1)) and (not I(0));
	O(3) <= (    I(1)) and (    I(0));
end GateLevel;
