Lab 01 — Circuitos Lógicos em VHDL
> Descrição: Implementação de um circuito digital com três entradas (A, B e C) e duas saídas (S1 e S2), utilizando VHDL e uma arquitetura modular.

Funções booleanas:
Saída S1 — Função maioria
S1 = AB + AC + BC

Saída S2 — Paridade ímpar
S2 = A'B'C + A'BC' + AB'C' + ABC

Componentes:
Geral1.vhd — Circuito principal.
PortaAnd1.vhd — Operações AND da saída S1.
PortaOr1.vhd — Operação OR da saída S1.
PortaAnd2.vhd — Termos lógicos da saída S2.
PortaOr2.vhd — Operação OR da saída S2.

Ferramentas utilizadas:
VHDL
Quartus II 13.0
ModelSim
FPGA Altera DE2
Implementação

O circuito foi desenvolvido de forma modular, compilado e simulado para verificar seu funcionamento.
