entity MOORE is
	port(x,clk:in bit;
		z:out bit);
end MOORE;
architecture behavior of MOORE is
	type State_Type is (S0,S1,S2,S3,S4);
	signal Current_State,Next_State: State_Type;
begin
	COMBIN: process(Current_State,x)
	begin
		case Current_State is
		when S0 =>
			Z<='1';
			if X = '0' then
				Next_State <= S1;
			else
				Next_State <= S0;
			end if;
		when S1 =>
			Z<='0';
			if X = '0' then
				Next_State <= S2;
			else
				Next_State <= S1;
			end if;
		when S2 =>
			Z<='0';
			if X = '0' then
				Next_State <= S3;
			else
				Next_State <= S2;
			end if;
		when S3 =>
			Z<='0';
			if X = '0' then
				Next_State <= S4;
			else
				Next_State <= S3;
			end if;
		when S4 =>
			Z<='0';
			if X = '0' then
				Next_State <= S0;
			else
				Next_State <= S4;
			end if;
		end case;
	end process COMBIN;
	SYNCH: process
	begin
		wait until clk'event and clk = '1';
		Current_State <= Next_State;
	end process SYNCH;
end behavior;