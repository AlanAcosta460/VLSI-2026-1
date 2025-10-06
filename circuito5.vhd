LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY circuito5 IS
	PORT (
		A2, A1, A0 								: IN STD_LOGIC;
		S0, S1, S2, S3, S4, S5, S6, S7 	: OUT STD_LOGIC
	);
END circuito5;

ARCHITECTURE behavior OF circuito5 IS
BEGIN
	proceso: PROCESS (A2, A1, A0)
	BEGIN
			IF (NOT A2 AND NOT A1 AND NOT A0) = '1' THEN S0 <= '1';
			ELSE S0 <= '0';
			END IF;
			
			IF (NOT A2 AND NOT A1 AND A0) = '1' THEN S1 <= '1';
			ELSE S1 <= '0';
			END IF;
			
			IF (NOT A2 AND A1 AND NOT A0) = '1' THEN S2 <= '1';
			ELSE S2 <= '0';
			END IF;
			
			IF (NOT A2 AND A1 AND A0) = '1' THEN S3 <= '1';
			ELSE S3 <= '0';
			END IF;
			
			IF (A2 AND NOT A1 AND NOT A0) = '1' THEN S4 <= '1';
			ELSE S4 <= '0';
			END IF;
			
			IF (A2 AND NOT A1 AND A0) = '1' THEN S5 <= '1';
			ELSE S5 <= '0';
			END IF;
			
			IF (A2 AND A1 AND NOT A0) = '1' THEN S6 <= '1';
			ELSE S6 <= '0';
			END IF;
			
			IF (A2 AND A1 AND A0) = '1' THEN S7 <= '1';
			ELSE S7 <= '0';
			END IF;
	END PROCESS proceso;
END behavior;