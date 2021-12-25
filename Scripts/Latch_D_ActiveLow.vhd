library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Latch_D_ActiveLow is
	port( data_in , enable : in std_logic;
		data_out : out std_logic);
end Latch_D_ActiveLow;

architecture Behavioral of Latch_D_ActiveLow is
begin
	process(data_in,enable)
	begin
		if(enable ='0')then
			data_out <= data_in;
		end if;
	end process;
end Behavioral;