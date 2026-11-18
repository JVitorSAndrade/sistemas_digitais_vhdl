entity Geral1 is --o entity Geral1 seria o componente que junta todos os componentes, o circuito completo
	port (
		A2, B2, C2 : in bit; --Geral1 contém 3 entradas: A2, B2 e C2
		S1_2, S2_2 : out bit --e uma saída S1_2
	);
end Geral1;

architecture behave3 of Geral1 is --a arquitetura do nosso Geral1 contém:
	signal fioBC, fioAC, fioAB : bit; --fios BC, AC e AB que conectam as saídas de portaAnd1 as entradas de portaOr1 - conexão para S1
	signal fioW1, fioW2, fioW3, fioW4 : bit; --conexão para S2
	
	component PortaAnd1 --uma porta AND1 que contém:
		port (
			A, B, C : in bit; --entradas A,B e C
			BC, AC, AB : out bit --com 3 operaçoes ands de saída BC, AC e AB
		);
	end component;
		
	component PortaOr1 --uma porta OR1 que contém:
		port (
			BC, AC, AB : in bit; --entradas BC, AC e AB - que são as saidas de cada and de AND1
			S1 : out bit --uma saída S1
		);
	end component;
		
	component PortaAnd2
		port (
			X, Y, Z : in bit;
			W1, W2, W3, W4 : out bit
		);
	end component;
	
	component PortaOr2
		port (
			W1, W2, W3, W4 : in bit;
			S2 : out bit
		);
	end component;
		
begin
--S1
	u1 : PortaAnd1 port map(A => A2, B => B2, C => C2, BC => fioBC, AC => fioAC, AB => fioAB);
	--A de AND1 corresponde a entrada A2 de GERal1.       | os fios internos transportam os resultados das operações ands:
	--A passa o valor para A2 e o componente calcula as   | BC => fioBC, B and C é transportado pelo fioBC
	--operações ands que são transportadas pelos fios.    |
	u2 : PortaOr1 port map(BC => fioBC, AC => fioAC, AB => fioAB, S1 => S1_2);
	--Aqui, esse BC não é o mesmo de AND1, é a entrada de | S1 é um or entre todas as entradas que chegaram pelos fios, e
	--OR1, que agora se conecta ao fioBC, ou seja, a saida| agora essa saída or é corresponde a saída S1_2 de OR1
	--de BC de AND1 vai até a entrada BC de OR1 pelo fioBC|
	
	--OBS: Geral1 representa o externo, então o que fizemos aqui foi passar as entradas externas pro circuito interno, e
	--após a lógica interna, a saída retornar pro externo
--S2
	u3 : PortaAnd2 port map(X => A2, Y => B2, Z => C2, W1 => fioW1, W2 => fioW2, W3 => fioW3, W4 => fioW4);
	u4 : PortaOr2 port map(W1 => fioW1, W2 => fioW2, W3 => fioW3, W4 => fioW4, S2 => S2_2);
end architecture behave3;