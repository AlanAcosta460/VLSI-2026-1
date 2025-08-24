LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY circuito2 IS
	PORT (
        A, B, C : IN STD_LOGIC;
	    Y1, Y2  : OUT STD_LOGIC
    );
END circuito2;

ARCHITECTURE behavior OF circuito2 IS
BEGIN
	Y1 <= (NOT A AND NOT B AND C) OR
          (NOT A AND B AND NOT C) OR
          (A AND NOT B AND NOT C) OR
          (A AND B AND NOT C);

	Y2 <= (A OR B OR C) AND
          (A OR NOT B OR NOT C) AND
          (NOT A OR B OR NOT C) AND
          (NOT A OR NOT B OR NOT C);
END behavior;
