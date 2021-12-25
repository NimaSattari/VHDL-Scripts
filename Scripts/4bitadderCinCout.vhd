library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.numeric_bit.all;
use IEEE.numeric_std.all;

entity fourbitadderCinCout is
port( A,B: in STD_LOGIC_VECTOR (3 downto 0);
	Cin: in STD_LOGIC;
	Sum: out STD_LOGIC_VECTOR (3 downto 0);
	COUT: out STD_LOGIC);
end fourbitadderCinCout;
------------------------------------------------
architecture fourbitadderCinCout_concurnt of fourbitadderCinCout is
signal SUMINT:STD_LOGIC_VECTOR(4 downto 0);
begin
	SUMINT <= ('0' & A) + ('0' & B) + ("0000" & Cin);
	COUT <= SUMINT(4);
	SUM <= SUMINT(3 downto 0);
end fourbitadderCinCout_concurnt;