library ieee;
use ieee.std_logic_1164.all;

entity mux4to1Struct is
	port(A,B,C,D: in std_logic;
		S: in std_logic_vector(1 downto 0);
		Y: out std_logic);
end mux4to1Struct;
-----------------------------------------------------
architecture structoral of mux4to1Struct is
--Component
component mux2to1 is
	port ( A,B,S: in std_logic;
		Y: out std_logic);
end component;
--Signals
signal t1,t2: std_logic;
begin

A1: mux2to1 port map (A,B,S(0),t2);
A2: mux2to1 port map (C,D,S(0),t1);

A3: mux2to1 port map (t2,t1,S(1),Y);
end structoral;