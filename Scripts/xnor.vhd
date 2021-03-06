entity XNOR2 is
	port (A, B: in bit;
		z: out bit);
end XNOR2;

architecture behavioral_xnor of XNOR2 is
-- declaration (of internal signals X, Y)
signal X,Y: bit;
	begin
		X <= A and B;
		Y <= (not A) and (not B);
		Z <= X or Y;
	end behavioral_xnor;