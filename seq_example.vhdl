-- This is a practice example of the sequential statements in vhdl using if-else

-- Dependencies
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

--Entity
ENTITY my_ex IS PORT (
    A, B, C : IN STD_LOGIC;
    F_out : OUT STD_LOGIC
);
END my_ex;

-- Architecture, using the if-else construct

ARCHITECTURE dummy_example OF my_ex IS
BEGIN

    proc1 : PROCESS (A, B, C)IS
    BEGIN
        IF (A = '1' AND B = '0' AND C = '0') THEN
            F_out <= '1';
        ELSIF (B = '1' AND C = '1') THEN
            F_out <= '1';
        ELSE
            F_out <= '0';
        END IF;
    END PROCESS proc1;

END dummy_example;