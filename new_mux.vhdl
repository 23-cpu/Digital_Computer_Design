-- A new mux i created for fun 

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- Entity Declaration
entity mux_4 is port(

    d0 , d1 , d2 , d3  : in std_logic;
    sel_2 : in std_logic_vector(0 to 1);
    d_out : out std_logic

);
end mux_4;

-- Architecture definition 

architecture mux_archs of mux_4 is 
    begin 
    
    d_out <= d3 when (sel_2 = "11") else 
             d2 when (sel_2 = "10") else
             d1 when (sel_2 = "01") else
             d0 when (sel_2 = "00") else
             '0';

end mux_arhs;


