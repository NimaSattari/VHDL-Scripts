entity AND2 is
	port (in1,in2: in bit;
		out1: out bit);
	end AND2;

architecture behavioral of AND2 is
	begin
		out1 <= in1 and in2;
	end behavioral;