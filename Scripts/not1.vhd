entity NOT1 is
	port (in1: in bit;
		out1: out bit);
	end NOT1;

architecture behavioral of NOT1 is
	begin
		out1 <= not in1;
	end behavioral;