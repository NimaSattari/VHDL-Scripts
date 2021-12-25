library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity NBitAlu4Operation is
generic(n: natural :=4);
port (	A,B: in STD_Logic_Vector(n-1 downto 0);
	Sel: in STD_Logic_Vector(1 downto 0);
	Res: out std_logic_vector(n-1 downto 0));
end NBitAlu4Operation;
architecture Behavior of NBitAlu4Operation is
begin
	process(A,B,Sel)
	begin
		case Sel is
			when "00" =>
				Res <= A + B;
			when "01" =>
				Res <= A + (not B) + 1;
			when "10" =>
				Res <= A and B;
			when "11" =>
				Res <= A or B;
			when others =>
				Res <= (others => 'X');
		end case;
	end process;
end Behavior;