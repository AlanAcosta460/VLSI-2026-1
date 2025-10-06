LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY circuito6 IS
	PORT (
		A2, A1, A0 								: IN STD_LOGIC;
		S0, S1, S2, S3, S4, S5, S6, S7 	: OUT STD_LOGIC
	);
END circuito6;

ARCHITECTURE behavior OF circuito6 IS
BEGIN
	proceso: PROCESS (A2, A1, A0)
	BEGIN
		CASE (NOT A2 AND NOT A1 AND NOT A0) IS 
			WHEN '1' => S0 <= '1';
			WHEN OTHERS => S0 <= '0';
		END CASE;
		
		CASE (NOT A2 AND NOT A1 AND A0) IS 
			WHEN '1' => S1 <= '1';
			WHEN OTHERS => S1 <= '0';
		END CASE;
		
		CASE (NOT A2 AND A1 AND NOT A0) IS 
			WHEN '1' => S2 <= '1';
			WHEN OTHERS => S2 <= '0';
		END CASE;
	
		CASE (NOT A2 AND A1 AND A0) IS 
			WHEN '1' => S3 <= '1';
			WHEN OTHERS => S3 <= '0';
		END CASE;
		
		CASE (A2 AND NOT A1 AND NOT A0) IS 
			WHEN '1' => S4 <= '1';
			WHEN OTHERS => S4 <= '0';
		END CASE;
		
		CASE (A2 AND NOT A1 AND A0) IS 
			WHEN '1' => S5 <= '1';
			WHEN OTHERS => S5 <= '0';
		END CASE;
		
		CASE (A2 AND A1 AND NOT A0) IS 
			WHEN '1' => S6 <= '1';
			WHEN OTHERS => S6 <= '0';
		END CASE;
		
		CASE (A2 AND A1 AND A0) IS 
			WHEN '1' => S7 <= '1';
			WHEN OTHERS => S7 <= '0';
		END CASE;
	END PROCESS proceso;
END behavior;

