entity PortaOr2 is
	port (
		W1, W2, W3, W4 : in bit;
		S2 : out bit
	);
end PortaOr2;

architecture behave4 of PortaOr2 is
begin
	S2 <= W1 or W2 or W3 or W4;
end architecture behave4;