-- A new mux i created for fun 

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

-- Entity Declaration
ENTITY mux_4 IS PORT (

    d0, d1, d2, d3 : IN STD_LOGIC;
    sel_2 : IN STD_LOGIC_VECTOR(0 TO 1);
    d_out : OUT STD_LOGIC

);
END mux_4;

-- Architecture definition , conditional

ARCHITECTURE mux_archs OF mux_4 IS
BEGIN

    d_out <= d3 WHEN (sel_2 = "11") ELSE
        d2 WHEN (sel_2 = "10") ELSE
        d1 WHEN (sel_2 = "01") ELSE
        d0 WHEN (sel_2 = "00") ELSE
        '0';

END mux_archs;

-- achitecture 2 , conditional with bundled select signal; approach 

ARCHITECTURE mux_arch2 OF mux_4 IS
BEGIN

    d_out <= d3 WHEN (sel_2(1) = '1' AND sel_2(0) = '1') ELSE
        d2 WHEN (sel_2(1) = '1' AND sel_2(0) = '0') ELSE
        d1 WHEN (sel_2(1) = '0' AND sel_2(0) = '1') ELSE
        d0 WHEN (sel_2(1) = '0' AND sel_2(0) = '0') ELSE
        '0';

END mux_arch2;

--architecture 3 , select to signal approach

ARCHITECTURE mux_arch3 OF mux_4 IS
BEGIN

    WITH sel_2 SELECT
        d_out <= d3 WHEN "11",
        d2 WHEN "10",
        d1 WHEN "01",
        d0 WHEN "00",
        '0' WHEN OTHERS;

END mux_arch3;