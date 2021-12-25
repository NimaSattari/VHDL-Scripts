library IEEE;
use IEEE.STD_LOGIC_1164.all;
 
entity Mux8to1GateLevel is
 port(
     A,B,C,D,E,F,G,H : in STD_LOGIC;
     S0,S1,S2: in STD_LOGIC;
     Y: out STD_LOGIC);
end Mux8to1GateLevel;
--------------------------------------------------
architecture GateLevel of Mux8to1GateLevel is

begin
Y <= ((not S2) and (not S1) and (not S0) and A) or
     ((not S2) and (not S1) and (    S0) and B) or
     ((not S2) and (    S1) and (not S0) and C) or
     ((not S2) and (    S1) and (    S0) and D) or
     ((    S2) and (not S1) and (not S0) and E) or
     ((    S2) and (not S1) and (    S0) and F) or
     ((    S2) and (    S1) and (not S0) and G) or
     ((    S2) and (    S1) and (    S0) and H);
end GateLevel;
