LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY circuito4 IS
	PORT (
        A, B, C, D : IN STD_LOGIC;
	    Y1, Y2     : OUT STD_LOGIC
    );
END circuito4;

ARCHITECTURE behavior OF circuito4 IS
BEGIN
	Y1 <= (NOT A AND NOT B AND NOT C AND NOT D) OR
          (NOT A AND NOT B AND C AND NOT D) OR
          (NOT A AND B AND NOT C AND NOT D) OR
          (NOT A AND B AND C AND NOT D) OR
          (A AND NOT B AND NOT C AND NOT D) OR
          (A AND NOT B AND NOT C AND D) OR
          (A AND NOT B AND C AND NOT D) OR
          (A AND NOT B AND C AND D) OR
          (A AND B AND C AND NOT D);

	Y2 <= (A OR B OR C OR NOT D) AND
          (A OR B OR NOT C OR NOT D) AND
          (A OR NOT B OR C OR NOT D) AND
          (A OR NOT B OR NOT C OR NOT D) AND
          (NOT A OR NOT B OR C OR D) AND
          (NOT A OR NOT B OR C OR NOT D) AND
          (NOT A OR NOT B OR NOT C OR NOT D);
END behavior;
