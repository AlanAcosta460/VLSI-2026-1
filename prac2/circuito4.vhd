LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY circuito IS
	PORT (
		A, B, C, D : IN STD_LOGIC;
		Y2, Y3     : OUT STD_LOGIC
    );
END circuito;

ARCHITECTURE behavior OF circuito IS
BEGIN
	Y2 <= (A OR B OR C OR D) AND
			(A OR B OR NOT C OR D) AND
			(A OR NOT B OR C OR D) AND
			(A OR NOT B OR NOT C OR D) AND
			(NOT A OR B OR C OR D) AND
			(NOT A OR B OR NOT C OR D) AND
			(NOT A OR B OR NOT C OR NOT D);
	
	Y3 <= (NOT A AND D) OR (A AND B) OR (NOT C AND D);
END behavior;
