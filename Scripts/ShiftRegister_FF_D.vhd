library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ShiftRegister_FF_D is
	port( D, CLK, RST, EN : in std_logic;
		Q : out std_logic_vector(7 downto 0));
end ShiftRegister_FF_D;

architecture Behavioral of ShiftRegister_FF_D is
signal V : std_logic_vector(7 downto 0);
begin
	process (CLK)
	begin
		if CLK'event and CLK = '1' then
			if RST = '1' then
				Q <= (others => '0');
			elsif EN = '1' then
				V(0) <= D;
				V(1) <= V(0);
				V(2) <= V(1);
				V(3) <= V(2);
				V(4) <= V(3);
				V(5) <= V(4);
				V(6) <= V(5);
				V(7) <= V(6);
				Q(7 downto 0) <= V(7 downto 0);
			end if;
		end if;
	end process;end Behavioral;