entity halfaddercomp is
	port ( x, y : in bit;
	S, CO: out bit);
end halfaddercomp;

architecture structural of halfaddercomp is
-- Declarations
component And2
	port (in1, in2: in bit;
		out1: out bit);
end component;
component XOR2
	port (A, B: in bit;
		out1: out bit);
end component;

begin
--Component instantiations statements
U0: XOR2 port map (x, y, S);
U2: AND2 port map (x, y, CO);
end structural;
