entity XOR2 is
	port (A, B: in bit;
		out1: out bit);
end XOR2;

architecture behavioral_xor of XOR2 is
-- declaration (of internal signals X, Y)
signal X,Y: bit;
	begin
		X <= A or B;
		Y <= A nand B;
		out1 <= X and Y;
	end behavioral_xor;