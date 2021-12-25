library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity fulladder is
 Port ( A : in STD_LOGIC;
 B : in STD_LOGIC;
 C : in STD_LOGIC;
 Sum : out STD_LOGIC;
 Carry : out STD_LOGIC);
end fulladder;
 
architecture gate_level of fulladder is
begin
 
 Sum <= A XOR B XOR C ;
 Carry <= (A AND B) OR (C AND A) OR (C AND B) ;
 
end gate_level;