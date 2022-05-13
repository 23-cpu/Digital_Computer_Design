--Another example of a flip flop design in vhdl

-----------------------------------------------------
--- A synchronous flip flop with active low enable---
--- A resettable D flip Flop-------------------------
-----------------------------------------------------

--Dependencies
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

-- Entity decclaration 
ENTITY D_FF IS PORT (
    D, clk, S : IN STD_LOGIC;
    Q : OUT STD_LOGIC
);
END ENTITY D_FF;

--Architecture definition(Behavioural Modelling with the process statement)
ARCHITECTURE D_FF_arch OF D_FF IS
BEGIN
    D_FF_proc : PROCESS (D, clk, S) IS
    BEGIN
        IF (rising_edge(clk)) THEN
            IF (S = '0') THEN
                Q <= '1';
            ELSE
                Q <= D;
            END IF;
        END IF;
    END PROCESS D_FF_proc;
END D_FF_arch;