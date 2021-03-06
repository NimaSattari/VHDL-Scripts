library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.numeric_bit.all;
use IEEE.numeric_std.all;

entity AddSub8Bit is
port (A,B: in STD_Logic_Vector(7 downto 0);
	bool: in bit;
	carry: out std_logic;
	sum: out std_logic_vector(7 downto 0));
end AddSub8Bit;
-------------------------------------------------
architecture behavioral of AddSub8Bit is
signal result: std_logic_vector (8 downto 0);
begin
	result <= ('0' & A) + ('0' & B) when bool = '0' else ('0' & A) - ('0' & B);
	sum <= result(7 downto 0);
	carry <= result(8);
end behavioral;