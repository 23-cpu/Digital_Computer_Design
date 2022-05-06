-- This code just to try out the behavioural style of coding in VHDL using the process statement

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

-- Entity
ENTITY own IS PORT (
    A, B, C : IN STD_LOGIC;
    F : INOUT STD_LOGIC
);

END own;

-- Architecture
ARCHITECTURE behav_own OF own IS
    SIGNAL A1 : STD_LOGIC;

BEGIN
    own_proc: PROCESS (A, B, C) IS
    BEGIN

        F <= A AND B AND C;
        A1 <= F;

    END PROCESS own_proc;

END behav_own;