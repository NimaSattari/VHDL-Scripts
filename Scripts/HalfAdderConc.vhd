LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

entity HalfAdderConc is
	port (A,B : in std_logic;
	      sum,carry : out std_logic);
end HalfAdderConc;

architecture HalfAdderConc of HalfAdderConc is
	signal INS: std_logic_vector( 1 downto 0);
begin
	INS(1) <= A;
	INS(0) <= B;
	with INS select
	(sum,carry) <=
		std_logic_vector'("00") when "00",
		std_logic_vector'("10") when "01",
		std_logic_vector'("10") when "10",
		std_logic_vector'("01") when "11",
		std_logic_vector'("XX") when others;
end HalfAdderConc;