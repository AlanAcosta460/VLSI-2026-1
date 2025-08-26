LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY circuito3 IS
	PORT (
		B, C, D : IN STD_LOGIC;
		Y2, Y3  : OUT STD_LOGIC
    );
END circuito3;

ARCHITECTURE behavior OF circuito3 IS
BEGIN
	Y2 <= (B OR C OR D) AND
			(B OR C OR NOT D) AND
			(B OR NOT C OR D);
	
	Y3 <= B OR (C AND D);
END behavior;
