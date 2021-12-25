library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity FullAdderBase is
port (	A,B,C: in STD_Logic;
	sum, carry: out STD_Logic);
end FullAdderBase;
architecture Behavior of FullAdderBase is
begin
	sum <= (a xor b) xor c;
	carry<= (a and b) or (c and (a xor b));
end Behavior;