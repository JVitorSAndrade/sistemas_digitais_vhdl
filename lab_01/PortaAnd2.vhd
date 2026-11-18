entity PortaAnd2 is
	port (
		X, Y, Z : in bit;
		W1, W2, W3, W4 : out bit
	);
end PortaAnd2;

architecture behave3 of PortaAnd2 is
begin
	W1 <= (not X) and (not Y) and Z;
	W2 <= (not X) and Y and (not Z);
	W3 <= X and (not Y) and (not Z);
	W4 <= X and Y and Z;
end architecture behave3;
