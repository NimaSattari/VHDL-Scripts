library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity FF_JK_T_Struct is
	port( T, clock, reset : in std_logic;
		O : out std_logic);
end FF_JK_T_Struct;

architecture Structoral of FF_JK_T_Struct is
--Component
component FF_JK is
port
	( J, K, CLK, RST : in std_logic;
	  Q : out std_logic);
end component;

begin
	A0: FF_JK port map (T, T, clock, reset, O);
end Structoral;
