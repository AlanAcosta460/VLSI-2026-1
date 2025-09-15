LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY circuito IS
    PORT (
        A, B, C, D                 : IN STD_LOGIC;
        Sa, Sb, Sc, Sd, Se, Sf, Sg : OUT STD_LOGIC
    );
END circuito;

ARCHITECTURE behavior OF circuito IS
BEGIN
	Sa <= (NOT A AND NOT B AND NOT C AND D) OR
			(NOT A AND B AND NOT C AND NOT D) OR
			(A AND B AND NOT C AND D) OR
			(A AND NOT B AND C AND D);
	
	Sb <= (B AND C AND NOT D) OR
			(A AND B AND NOT D) OR
			(A AND C AND D) OR
			(NOT A AND B AND NOT C AND D);
			
	Sc <= (A AND B AND C) OR
			(A AND B AND NOT D) OR
			(NOT A AND NOT B AND C AND NOT D);
			
	Sd <= (NOT B AND NOT C AND D) OR
			(B AND C AND D) OR
			(NOT A AND B AND NOT C AND NOT D) OR
			(A AND NOT B AND C AND NOT D);
	
	Se <= (NOT A AND D) OR
			(NOT A AND B AND NOT C) OR
			(NOT B AND NOT C AND D);
			
	Sf <= (NOT A AND NOT B AND D) OR
			(NOT A AND C AND D) OR
			(NOT A AND NOT B AND C) OR
			(A AND B AND NOT C AND D);
	
	Sg <= (NOT A AND NOT B AND NOT C) OR
			(A AND B AND NOT C AND NOT D) OR
			(NOT A AND B AND C AND D);
END behavior;