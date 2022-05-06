-- This code is to practice the behavioural style of modelling digital logic 
-- Specifically for an xor gate

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
-- Entity
ENTITY my_exor IS PORT (
    A, B : IN STD_LOGIC;
    F : OUT STD_LOGIC
);
END my_exor;

-- architecture definition 

ARCHITECTURE behav OF my_exor IS
BEGIN

    xor_proc : PROCESS (A, B) IS
    BEGIN
        F <= A XOR B;
    END PROCESS xor_proc;

END behav;