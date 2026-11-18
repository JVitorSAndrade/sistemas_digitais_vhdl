entity PortaOr1 is
	port (
		BC, AC, AB : in bit;
		S1 : out bit
	);
end PortaOr1;

architecture behave2 of PortaOr1 is
begin
	S1 <= BC or AC or AB;
end architecture behave2;