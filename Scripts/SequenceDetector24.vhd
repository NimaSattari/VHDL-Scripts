library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity SequenceDetector24 is
Port (	clk,reset,input : in std_logic;
	output : out std_logic);
end SequenceDetector24;

architecture stat of SequenceDetector24 is
	type State_Type is (S0,S1,S2,S3,S4,S5,S6,S7,S8);
	signal Current_State,Next_State: State_Type;
begin
	state_ragister: process(clk,reset)
	begin
		if(reset='1') then
			Current_State <= S0;
		elsif(clk'event and clk='1') then
			Current_State <= Next_State;
		end if;
	end process;
	state_logic: process(Current_State,input)
	begin
		case Current_State is
		when S0 =>
			output<='0';
			if(input ='1') then
				Next_State <= S0;
			elsif(input='0') then
				Next_State <= S1;
			end if;
		when S1 =>
			output<='0';
			if(input ='1') then
				Next_State <= S0;
			elsif(input='0') then
				Next_State <= S2;
			end if;
		when S2 =>
			output<='0';
			if(input ='1') then
				Next_State <= S0;
			elsif(input='0') then
				Next_State <= S3;
			end if;
		when S3 =>
			output<='0';
			if(input ='1') then
				Next_State <= S4;
			elsif(input='0') then
				Next_State <= S3;
			end if;
		when S4 =>
			output<='0';
			if(input ='1') then
				Next_State <= S5;
			elsif(input='0') then
				Next_State <= S0;
			end if;
		when S5 =>
			output<='0';
			if(input ='1') then
				Next_State <= S0;
			elsif(input='0') then
				Next_State <= S6;
			end if;
		when S6 =>
			output<='0';
			if(input ='1') then
				Next_State <= S0;
			elsif(input='0') then
				Next_State <= S7;
			end if;
		when S7 =>
			output<='0';
			if(input ='1') then
				Next_State <= S0;
			elsif(input='0') then
				Next_State <= S8;
			end if;
		when S8 =>
			output<='1';
			if(input ='1') then
				Next_State <= S4;
			elsif(input='0') then
				Next_State <= S8;
			end if;
		end case;
	end process;
end stat;