-- This code is to practice the behavioural style of modelling digital logic 
-- Specifically for an xor gate

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


-- Entity
entity my_exor is port(
    A , B : in std_logic;
    F : out std_logic
);
end my_exor;

-- architecture definition 

architecture behav of my_exor is 
begin 

    xor_proc: process(A,B) is 
    begin
        F <= A xor B; 
    end process xor_proc;

end behav;