library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.numeric_bit.all;
use IEEE.numeric_std.all;

entity NBitAddSub is
generic(n: natural :=4);
port (A,B: in STD_Logic_Vector(n-1 downto 0);
	operator: in bit; -- 0 = Add , 1 = Sub
	carry: out std_logic;
	sum: out std_logic_vector(n-1 downto 0));
end NBitAddSub;
-------------------------------------------------
architecture behavioral of NBitAddSub is
signal result: std_logic_vector (n downto 0);
begin
	result <= ('0' & A) + ('0' & B) when operator = '0' else ('0' & A) - ('0' & B);
	sum <= result(n-1 downto 0);
	carry <= result(n);
end behavioral;
