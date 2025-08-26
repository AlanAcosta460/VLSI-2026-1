LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY circuito1 IS
	PORT (
		A, B   : IN STD_LOGIC;
		W3, W4 : OUT STD_LOGIC
    );
END circuito1;

ARCHITECTURE behavior OF circuito1 IS
BEGIN
	W3 <= (NOT A AND B) OR
			(A AND B);
		
	W4 <= B;
END behavior;
