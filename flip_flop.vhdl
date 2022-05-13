-- This simple example illustrate the design of a flip flop in vhdl

--------------------------
--Model of a simple vhdl--
--------------------------

-- Library dependencies
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

-- Entity declaration
ENTITY d_ff_x IS PORT (
    D, clk : IN STD_LOGIC;
    Q : OUT STD_LOGIC
);
END ENTITY d_ff_x;

-- architetcure definition 
ARCHITECTURE my_d_ff OF d_ff_x IS
BEGIN
    diff : PROCESS (D, clk) IS
    BEGIN
        IF (rising_edge(clk)) THEN
            Q <= D;
        END IF;
    END PROCESS diff;
END my_d_ff;