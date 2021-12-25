entity Mealy is
	port(x,clk:in bit;
		z:out bit);
end Mealy;
architecture behavior of Mealy is
	type State_Type is (S0,S1,S2,S3,S4,S5);
	signal Current_State,Next_State: State_Type;
begin
	COMBIN: process(Current_State,x)
	begin
		case Current_State is
		when S0 =>
			if X = '0' then
				Next_State <= S0;
				Z<='0';
			else
				Next_State <= S1;
				Z<='0';
			end if;
		when S1 =>
			if X = '0' then
				Next_State <= S1;
				Z<='0';
			else
				Next_State <= S2;
				Z<='0';
			end if;
		when S2 =>
			if X = '0' then
				Next_State <= S2;
				Z<='0';
			else
				Next_State <= S3;
				Z<='0';
			end if;
		when S3 =>
			if X = '0' then
				Next_State <= S4;
				Z<='0';
			else
				Next_State <= S1;
				Z<='1';
			end if;
		when S4 =>
			if X = '0' then
				Next_State <= S5;
				Z<='1';
			else
				Next_State <= S4;
				Z<='0';
			end if;
		when S5 =>
			if X = '0' then
				Next_State <= S0;
				Z<='0';
			else
				Next_State <= S5;
				Z<='0';
			end if;
		end case;
	end process COMBIN;
	SYNCH: process
	begin
		wait until clk'event and clk = '1';
		Current_State <= Next_State;
	end process SYNCH;
end behavior;
