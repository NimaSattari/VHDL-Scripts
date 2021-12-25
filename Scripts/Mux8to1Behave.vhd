LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
------------------------------------------------------
ENTITY Mux8to1Behave IS
	PORT (  SEL: IN STD_LOGIC_VECTOR(2 DOWNTO 0);
 		A,B,C,D,E,F,G,H :IN STD_LOGIC;
		MUX_OUT: OUT STD_LOGIC );
END Mux8to1Behave;
------------------------------------------------------
ARCHITECTURE behavioral OF Mux8to1Behave IS
BEGIN
MUX_OUT <=
	A WHEN SEL = "000" else
	B WHEN SEL = "001" else
	C WHEN SEL = "010" else
	D WHEN SEL = "011" else
	E WHEN SEL = "100" else
	F WHEN SEL = "101" else
	G WHEN SEL = "110" else
	H WHEN SEL = "111" else
	'Z';
END behavioral;