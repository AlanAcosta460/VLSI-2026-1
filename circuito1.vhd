LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY circuito1 IS
	PORT (
		A, B   : IN STD_LOGIC;
		W1, W2 : OUT STD_LOGIC
    );
END circuito1;

ARCHITECTURE behavior OF circuito1 IS
BEGIN
	W1 <= (NOT A AND B) OR
			(A AND B);
		
	W2 <= B;
END behavior;