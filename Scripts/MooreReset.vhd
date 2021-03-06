library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity MooreReset is
	port(x,clk,reset:in std_logic;
		z:out std_logic);
end MooreReset;
architecture behavior of MooreReset is
	type State_Type is (S0,S1,S2,S3,S4);
	signal Current_State,Next_State: State_Type;
begin
	state_reg:process(clk,reset)
	begin
		if(reset='1') then
			Current_State <= S0;
		elsif(clk'event and clk='1') then
			Current_State <= Next_State;
		end if;
	end process;
	comb_logic:process(Current_State,x)
	begin
		case Current_State is
			when S0 =>
				z<='0';
				if x = '0' then
					Next_State <= S2;
				elsif x = '1' then
					Next_State <= S1;
				end if;
			when S1 =>
				z<='0';
				if x = '0' then
					Next_State <= S2;
				elsif x = '1' then
					Next_State <= S3;
				end if;
			when S2 =>
				z<='0';
				if x = '0' then
					Next_State <= S4;
				elsif x = '1' then
					Next_State <= S1;
				end if;
			when S3 =>
				z<='1';
				if x = '0' then
					Next_State <= S2;
				elsif x = '1' then
					Next_State <= S1;
				end if;
			when S4 =>
				z<='1';
				if x = '0' then
					Next_State <= S2;
				elsif x = '1' then
					Next_State <= S1;
				end if;
			when others =>
				z<='0';
				Next_State <= S0;
		end case;
	end process;
end behavior;