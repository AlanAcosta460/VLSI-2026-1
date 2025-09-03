LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY circuito3 IS
	PORT (
		A, B, C, D : IN STD_LOGIC;
		Y 			  : OUT STD_LOGIC
    );
END circuito3;

ARCHITECTURE behavior OF circuito3 IS
BEGIN
	Y <= (NOT A AND NOT B AND NOT C AND '1') OR
		  (NOT A AND NOT B AND C AND D) OR
		  (NOT A AND B AND NOT C AND NOT D) OR
		  (NOT A AND B AND C AND '0') OR
		  (A AND NOT B AND NOT C AND D) OR
		  (A AND NOT B AND C AND '1') OR
		  (A AND B AND NOT C AND '0') OR
		  (A AND B AND C AND NOT D);
END behavior;