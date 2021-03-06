library IEEE;
use IEEE.STD_LOGIC_1164.all;
 
entity Mux8to1Struct is
	port(A,B,C,D,E,F,G,H: in std_logic;
		S: in std_logic_vector(2 downto 0);
		Y: out std_logic);
end Mux8to1Struct;
--------------------------------------------------
architecture Structoral of Mux8to1Struct is
--Component
component mux2to1 is
	port ( A,B,S: in std_logic;
		Y: out std_logic);
end component;
--Signals
signal t1,t2,t3,t4,t5,t6: std_logic;
begin

A1: mux2to1 port map (A, B, S(0),t1);
A2: mux2to1 port map (C, D, S(0),t2);
A3: mux2to1 port map (t1,t2,S(1),t5);

A4: mux2to1 port map (E, F, S(0),t3);
A5: mux2to1 port map (G, H, S(0),t4);
A6: mux2to1 port map (t3,t4,S(1),t6);

A7: mux2to1 port map (t5,t6,S(2),Y);

end Structoral;