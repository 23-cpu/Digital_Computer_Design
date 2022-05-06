-- This is to solve the exercises in chapter 1 
-- The architecture definitions can be commented(i.e. comment the architecture you wish not to use)

-- Exercise 1

-- libraries

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

-- Entity Declaration

ENTITY circ_1 IS PORT (

    A_in, B_in : IN STD_LOGIC;
    F_out : OUT STD_LOGIC

);

END circ_1;

--architecture 1(concurrent signal assignment)

ARCHITECTURE circ_1_arch OF circ_1 IS
BEGIN

    F_out <= ((NOT A_in AND (NOT B_in)) OR A_in OR (A_in AND (NOT B_in)));

END circ_1_arch;

--architecture 2(conditional signal assignment)

ARCHITECTURE circ_1_arch2 OF circ_1 IS
BEGIN

    F_out <= '1' WHEN (A_in = '0' AND B_in = '1')ELSE
        '1' WHEN (A_in = '1')ELSE
        '1' WHEN (A_in = '1' AND B_in = '0')ELSE
        '0';

END circ_1_arch2;




