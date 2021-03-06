library IEEE;
use IEEE.STD_LOGIC_1164.all;
 
entity Mux4to1GateLevel is
 port(
     A,B,C,D : in STD_LOGIC;
     S0,S1: in STD_LOGIC;
     Y: out STD_LOGIC);
end Mux4to1GateLevel;
--------------------------------------------------
architecture GateLevel of Mux4to1GateLevel is

begin
Y <= ((not S1) and (not S0) and A) or
     ((not S1) and (s0)     and B) or
     ((s1)     and (not s0) and C) or
     ((s1)     and (s0)     and D);
end GateLevel;