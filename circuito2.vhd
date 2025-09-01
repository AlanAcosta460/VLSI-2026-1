LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY circuito2 IS
	PORT (
		A3, A2, A1, A0, B3, B2, B1, B0, E, S : IN STD_LOGIC;
		Y3, Y2, Y1, Y0 					 		 : OUT STD_LOGIC
    );
END circuito2;

ARCHITECTURE behavior OF circuito2 IS
BEGIN
	Y3 <= (A3 AND NOT E AND NOT S) OR
			(B3 AND NOT E AND S);
	
	Y2 <= (A2 AND NOT E AND NOT S) OR
			(B2 AND NOT E AND S);
			
	Y1 <= (A1 AND NOT E AND NOT S) OR
			(B1 AND NOT E AND S);
			
	Y0 <= (A0 AND NOT E AND NOT S) OR
			(B0 AND NOT E AND S);
END behavior;