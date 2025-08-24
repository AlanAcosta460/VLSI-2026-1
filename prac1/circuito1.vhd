LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY circuito1 IS
	PORT (
        A, B   : IN STD_LOGIC;
	    Y1, Y2 : OUT STD_LOGIC
    );
END circuito1;

ARCHITECTURE behavior OF circuito1 IS
BEGIN
	Y1 <= (NOT A AND B) OR 
          (A AND NOT B);

	Y2 <= (A OR B) AND 
          (NOT A OR NOT B);
END behavior;
