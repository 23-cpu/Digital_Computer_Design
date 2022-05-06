-- This is another practice example of the sequential statements in vhdl using if-else

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
ARCHITECTURE bad_example OF my_ex_7 IS
BEGIN

    proc1 : PROCESS (A, B, C)
    BEGIN
        IF (A = '0' AND B = '0' AND C = '0') OR (B = '1' AND C = '1') THEN
            F_OUT <= '1';
        ELSE
            F_OUT <= '0';
        END IF;
    END PROCESS proc1;
    
END bad_example;