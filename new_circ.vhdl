---------------------------------------------------
----- circui is just a practice example example ---
---------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

entity mux_4 is port(
    a_data: in std_logic_vector(0 to 7);
    b_data: in std_logic_vector(0 to 7);
    c_data: in std_logic_vector(0 to 7);
    d_data: in std_logic_vector(0 to 7);

    sel_0, sel_1 : in std_logic
    data_out :  out std_logic_vector(0 to 7);

);

end mux_4; 
