library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FullAdderTest is
port( bool : out STD_Logic);
end FullAdderTest;
architecture Behavior of FullAdderTest is
component FullAdderBase
	port (	A,B,C: in STD_Logic;
		sum, carry: out STD_Logic);
end component;
signal A,B,C,Sum,Carry : STD_Logic;
begin
	FA0: FullAdderBase port map(a,b,c,sum,carry);

	a <= '0','0' after 10 ns,'0' after 20 ns,'0' after 30 ns,'1' after 40 ns,'1' after 50 ns,'1' after 60 ns,'1' after 70 ns;
	b <= '0','0' after 10 ns,'1' after 20 ns,'1' after 30 ns,'0' after 40 ns,'0' after 50 ns,'1' after 60 ns,'1' after 70 ns;
	c <= '0','1' after 10 ns,'0' after 20 ns,'1' after 30 ns,'0' after 40 ns,'1' after 50 ns,'0' after 60 ns,'1' after 70 ns;

	process(a,b,c)
	begin
		if(a='0' and b='0' and c='0' and sum='0' and carry='0') then bool <= '1';
		elsif(a='0' and b='0' and c='1' and sum='1' and carry='0') then bool <= '1';
		elsif(a='0' and b='1' and c='0' and sum='1' and carry='0') then bool <= '1';
		elsif(a='0' and b='1' and c='1' and sum='0' and carry='1') then bool <= '1';
		elsif(a='1' and b='0' and c='0' and sum='1' and carry='0') then bool <= '1';
		elsif(a='1' and b='0' and c='1' and sum='0' and carry='1') then bool <= '1';
		elsif(a='1' and b='1' and c='0' and sum='0' and carry='1') then bool <= '1';
		elsif(a='1' and b='1' and c='1' and sum='1' and carry='1') then bool <= '1';
		else bool <= '0';
		end if;
	end process;
end Behavior;