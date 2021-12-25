entity OR2 is
	port (in1,in2: in bit;
		out1: out bit);
	end OR2;

architecture behavioral of OR2 is
	begin
		out1 <= in1 or in2;
	end behavioral;
