entity Buzzer is
port (DOOR, IGNITION, SBELT:in
bit;
WARNING: out bit);
end Buzzer;

architecture structural of BUZZER is
--Declarations
component AND2
port (in1,in2:in bit;
	out1:out bit);
end component;
component OR2
port (in1,in2:in bit;
	out1:out bit);
end component;
component NOT1
port (in1:in bit;
	out1:out bit);
end component;
--declaration of signals used to interconnect gates
signal DOOR_NOT, SBELT_NOT,B1,B2:bit;
begin
--Component instantiations statements
U0: NOT1 port map (DOOR,DOOR_NOT);
U1: NOT1 port map (SBELT,SBELT_NOT);
U2: AND2 port map (IGNITION,DOOR_NOT,B1);
U3: AND2 port map (IGNITION,SBELT_NOT,B2);
U4: OR2 port map (B1,B2,WARNING);
end structural;