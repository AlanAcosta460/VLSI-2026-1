LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY circuito2 IS
	PORT (
		X, Y, Z   : IN STD_LOGIC;
		S2, S3 : OUT STD_LOGIC
    );
END circuito2;

ARCHITECTURE behavior OF circuito2 IS
BEGIN
	S2 <= (X OR Y OR Z) AND
			(X OR Y OR NOT Z) AND
			(NOT X OR Y OR Z);
		
	S3 <= Y OR (X AND Z);
END behavior;
