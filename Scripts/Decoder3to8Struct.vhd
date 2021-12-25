LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Decoder3to8Struct is 
port
	(I: in std_logic_vector (2 downto 0);
	O: out std_logic_vector (7 downto 0));
end Decoder3to8Struct;
------------------------------------------------
architecture Structoral of Decoder3to8Struct is

--Component
component Decoder2to4GateLevel is
port
	(I: in std_logic_vector (1 downto 0);
	O: out std_logic_vector (3 downto 0));
end component;

--Signals
signal t1,t2: std_logic_vector (3 downto 0);

begin

A0: Decoder2to4GateLevel port map (I(1 downto 0), t1);
A1: Decoder2to4GateLevel port map (I(1 downto 0), t2);
O <=
	"0000" & t1 when I(2) = '0' else
	t2 & "0000";
end Structoral;