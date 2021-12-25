library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

entity NBitDecoder is
generic(M : positive := 5;
	N : positive := 32);
port ( 	Input : in unsigned( M - 1 downto 0);
	enable : in std_logic := '1';
	Output : out std_logic_vector( N - 1 downto 0));
end NBitDecoder;

architecture Behave of NBitDecoder is
begin

A: for i in 0 to N - 1 generate
Output(i) <= '1' when ((enable = '1') and (to_unsigned( i,Input'length ) = Input ))
else '0';

end generate;
end Behave;
