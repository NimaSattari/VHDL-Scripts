library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

entity FourBitShiftRegShiftLow is
port(	I,clock,shift: in std_logic;
	Q: out std_logic);
end FourBitShiftRegShiftLow;

architecture Behavior of FourBitShiftRegShiftLow is
	signal S: std_logic_vector(3 downto 0);
begin
	process(I,clock,shift,S)
	begin
		if(clock = '0' and clock'event) then
			if shift = '0' then
				S <= I & S(3 downto 1);
			end if;
		end if;
	end process;
	Q <= S(0);
end Behavior;
