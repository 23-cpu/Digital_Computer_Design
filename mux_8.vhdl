--This example gives the behavioural model of an 8:1 multiplexer

--Dependencies
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

-- Entity, which is the black box showing the interfaces of the mux
ENTITY mux_8 IS PORT (

    Data_in : IN STD_LOGIC_VECTOR(0 TO 7);
    SEL : IN STD_LOGIC_VECTOR(0 TO 2);
    F_CTRL : OUT STD_LOGIC

);

END mux_8;

-- Architecture definition, which is modeled using the behavioural style

ARCHITECTURE mux_8_behav OF mux_8 IS
BEGIN
    muxproc : PROCESS (Data_in, SEL) IS
    BEGIN
        IF (SEL = "000") THEN
            F_CTRL <= Data_in(0);
        ELSIF (SEL = "001") THEN
            F_CTRL <= Data_in(1);
        ELSIF (SEL = "010") THEN
            F_CTRL <= Data_in(2);
        ELSIF (SEL = "011") THEN
            F_CTRL <= Data_in(3);
        ELSIF (SEL = "100") THEN
            F_CTRL <= Data_in(4);
        ELSIF (SEL = "101") THEN
            F_CTRL <= Data_in(5);
        ELSIF (SEL = "110") THEN
            F_CTRL <= Data_in(6);
        ELSIF (SEL = "111") THEN
            F_CTRL <= Data_in(7);
        ELSE
            F_CTRL <= '0';
        END IF;

    END PROCESS muxproc;

END mux_8_behav;