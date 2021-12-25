LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Decoder4to16Struct is 
port
	(I: in std_logic_vector (3 downto 0);
	O: out std_logic_vector (15 downto 0));
end Decoder4to16Struct;
------------------------------------------------
architecture Structoral of Decoder4to16Struct is

--Component
component Decoder3to8Struct is
port
	(I: in std_logic_vector (2 downto 0);
	O: out std_logic_vector (7 downto 0));
end component;

--Signals
signal t1,t2: std_logic_vector (7 downto 0);

begin

A0: Decoder3to8Struct port map (I(2 downto 0), t1);
A1: Decoder3to8Struct port map (I(2 downto 0), t2);
O <=
	"00000000" & t1 when I(3) = '0' else
	t2 & "00000000";
end Structoral;
