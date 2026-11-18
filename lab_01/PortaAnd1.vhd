entity PortaAnd1 is
	port (
		A, B, C : in bit;
		BC, AC, AB : out bit
	);
end PortaAnd1;

architecture behave1 of PortaAnd1 is
begin
	BC <= B and C;
	AC <= A and C;
	AB <= A and B;
end architecture behave1;