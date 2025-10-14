LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY circuito1 IS PORT (
    A2, A1, A0              : IN STD_LOGIC;
    S1, S2, S3, S4, S5, S6  : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
);
END circuito1;

ARCHITECTURE arc OF circuito1 IS
BEGIN
    -- FLUJO DE DATOS

    -- Asignacion simple
    S1(0) <= NOT A2 AND NOT A1 AND NOT A0;
    S1(1) <= NOT A2 AND NOT A1 AND A0;
    S1(2) <= NOT A2 AND A1 AND NOT A0;
    S1(3) <= NOT A2 AND A1 AND A0;
    S1(4) <= A2 AND NOT A1 AND NOT A0;
    S1(5) <= A2 AND NOT A1 AND A0;
    S1(6) <= A2 AND A1 AND NOT A0;
    S1(7) <= A2 AND A1 AND A0;

    -- Asignacion condicional: WHEN-ELSE
    S2(0) <= '1' WHEN (NOT A2 AND NOT A1 AND NOT A0) = '1' ELSE '0';
    S2(1) <= '1' WHEN (NOT A2 AND NOT A1 AND A0) = '1' ELSE '0';
    S2(2) <= '1' WHEN (NOT A2 AND A1 AND NOT A0) = '1' ELSE '0';
    S2(3) <= '1' WHEN (NOT A2 AND A1 AND A0) = '1' ELSE '0';
    S2(4) <= '1' WHEN (A2 AND NOT A1 AND NOT A0) = '1' ELSE '0';
    S2(5) <= '1' WHEN (A2 AND NOT A1 AND A0) = '1' ELSE '0';
    S2(6) <= '1' WHEN (A2 AND A1 AND NOT A0) = '1' ELSE '0';
    S2(7) <= '1' WHEN (A2 AND A1 AND A0) = '1' ELSE '0';

    -- Asignacion selectiva: WITH-SELECT-CASE
    WITH (NOT A2 AND NOT A1 AND NOT A0) SELECT S3(0) <= '1' WHEN '1', '0' WHEN OTHERS;
    WITH (NOT A2 AND NOT A1 AND A0) SELECT S3(1) <= '1' WHEN '1', '0' WHEN OTHERS;
    WITH (NOT A2 AND A1 AND NOT A0) SELECT S3(2) <= '1' WHEN '1', '0' WHEN OTHERS;
    WITH (NOT A2 AND A1 AND A0) SELECT S3(3) <= '1' WHEN '1', '0' WHEN OTHERS;
    WITH (A2 AND NOT A1 AND NOT A0) SELECT S3(4) <= '1' WHEN '1', '0' WHEN OTHERS;
    WITH (A2 AND NOT A1 AND A0) SELECT S3(5) <= '1' WHEN '1', '0' WHEN OTHERS;
    WITH (A2 AND A1 AND NOT A0) SELECT S3(6) <= '1' WHEN '1', '0' WHEN OTHERS;
    WITH (A2 AND A1 AND A0) SELECT S3(7) <= '1' WHEN '1', '0' WHEN OTHERS;


    -- COMPORTAMIENTO

    -- Estructura de ecuacion booleana dentro de un proceso
    proceso1: PROCESS (A2, A1, A0)
    BEGIN
        S4(0) <= NOT A2 AND NOT A1 AND NOT A0;
        S4(1) <= NOT A2 AND NOT A1 AND A0;
        S4(2) <= NOT A2 AND A1 AND NOT A0;
        S4(3) <= NOT A2 AND A1 AND A0;
        S4(4) <= A2 AND NOT A1 AND NOT A0;
        S4(5) <= A2 AND NOT A1 AND A0;
        S4(6) <= A2 AND A1 AND NOT A0;
        S4(7) <= A2 AND A1 AND A0;
    END PROCESS proceso1;

    -- Estructura IF-THEN-ELSE
    proceso2: PROCESS (A2, A1, A0)
    BEGIN
        IF (NOT A2 AND NOT A1 AND NOT A0) = '1' THEN S5(0) <= '1'; ELSE S5(0) <= '0'; END IF;
        IF (NOT A2 AND NOT A1 AND A0) = '1' THEN S5(1) <= '1'; ELSE S5(1) <= '0'; END IF;
        IF (NOT A2 AND A1 AND NOT A0) = '1' THEN S5(2) <= '1'; ELSE S5(2) <= '0'; END IF;
        IF (NOT A2 AND A1 AND A0) = '1' THEN S5(3) <= '1'; ELSE S5(3) <= '0'; END IF;
        IF (A2 AND NOT A1 AND NOT A0) = '1' THEN S5(4) <= '1'; ELSE S5(4) <= '0'; END IF;
        IF (A2 AND NOT A1 AND A0) = '1' THEN S5(5) <= '1'; ELSE S5(5) <= '0'; END IF;
        IF (A2 AND A1 AND NOT A0) = '1' THEN S5(6) <= '1'; ELSE S5(6) <= '0'; END IF;
        IF (A2 AND A1 AND A0) = '1' THEN S5(7) <= '1'; ELSE S5(7) <= '0'; END IF;
    END PROCESS proceso2;

    -- Estructura CASE
    proceso3: PROCESS (A2, A1, A0)
    BEGIN
        CASE (NOT A2 AND NOT A1 AND NOT A0) IS  
            WHEN '1' => S6(0) <= '1'; WHEN OTHERS => S6(0) <= '0'; END CASE;
        CASE (NOT A2 AND NOT A1 AND A0) IS 
            WHEN '1' => S6(1) <= '1'; WHEN OTHERS => S6(1) <= '0'; END CASE;
        CASE (NOT A2 AND A1 AND NOT A0) IS 
            WHEN '1' => S6(2) <= '1'; WHEN OTHERS => S6(2) <= '0'; END CASE;
        CASE (NOT A2 AND A1 AND A0) IS 
            WHEN '1' => S6(3) <= '1'; WHEN OTHERS => S6(3) <= '0'; END CASE;
        CASE (A2 AND NOT A1 AND NOT A0) IS 
            WHEN '1' => S6(4) <= '1'; WHEN OTHERS => S6(4) <= '0'; END CASE;
        CASE (A2 AND NOT A1 AND A0) IS 
            WHEN '1' => S6(5) <= '1'; WHEN OTHERS => S6(5) <= '0'; END CASE;
        CASE (A2 AND A1 AND NOT A0) IS 
            WHEN '1' => S6(6) <= '1'; WHEN OTHERS => S6(6) <= '0'; END CASE;
        CASE (A2 AND A1 AND A0) IS 
            WHEN '1' => S6(7) <= '1'; WHEN OTHERS => S6(7) <= '0'; END CASE;
    END PROCESS proceso3;
END arc;
