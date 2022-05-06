LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY sillyfunction IS
    PORT (
        a, b, c : IN STD_LOGIC;
        y : OUT STD_LOGIC
    );

END;

ARCHITECTURE synth OF sillyfunction IS
BEGIN

    y <= (NOT a AND b AND NOT c) OR (a AND NOT b AND NOT c) OR (a AND NOT b AND c);

END;