LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY circuito3 IS
	PORT (
        A, B, C : IN STD_LOGIC;
	    Y1, Y2  : OUT STD_LOGIC
    );
END circuito3;

ARCHITECTURE behavior OF circuito3 IS
BEGIN
	Y1 <= (NOT A AND NOT B AND NOT C) OR
          (NOT A AND NOT B AND C) OR
          (NOT A AND B AND C) OR
          (A AND NOT B AND C);

	Y2 <= (A OR NOT B OR C) AND
          (NOT A OR B OR C) AND
          (NOT A OR NOT B OR C) AND
          (NOT A OR NOT B OR NOT C);
END behavior;
