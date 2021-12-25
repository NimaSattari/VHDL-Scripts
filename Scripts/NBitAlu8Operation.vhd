library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity NBitAlu8Operation is
generic(n: natural :=4);
port (	A,B: in STD_Logic_Vector(n-1 downto 0);
	Sel: in STD_Logic_Vector(2 downto 0);
	Res: out std_logic_vector(n-1 downto 0));
end NBitAlu8Operation;
architecture Behavior of NBitAlu8Operation is
begin
	process(A,B,Sel)
	begin
		case Sel is
			when "000" =>
				Res <= A + B;
			when "001" =>
				Res <= A + (not B) + 1;
			when "010" =>
				Res <= A - 1;
			when "011" =>
				Res <= A + 1;
			when "100" =>
				Res <= A and B;
			when "101" =>
				Res <= A or B;
			when "110" =>
				Res <= (not A);
			when "111" =>
				Res <= A xor B;
			when others =>
				Res <= (others => 'X');
		end case;
	end process;
end Behavior;