library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.numeric_bit.all;
use IEEE.numeric_std.all;

entity fourbitadderCount is
port (A,B: in STD_Logic_Vector(3 downto 0);
	carry: out std_logic;
	sum: out std_logic_vector(3 downto 0));
end fourbitadderCount;
-------------------------------------------------
architecture behavioral of fourbitadderCount is
signal result: std_logic_vector (4 downto 0);
begin
	result <= ('0' & A) + ('0' & B);
	sum <= result(3 downto 0);
	carry <= result(4);
end behavioral;
