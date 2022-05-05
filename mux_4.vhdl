-- A 4:1 multiplexer design in vhdl


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- Entity Declaration

entity mux_4 is port(

    D0 , D1 , D2 , D3 : in std_logic;
    sel_2 : in std_logic_vector(0 to 1);
    MX_OUT : out std_logic

);

end mux_4;

-- Architecture Definition

architecture mux_arch of mux_4 is
begin

    MX_OUT <= D3 when (sel_2 = "11") else 
              D2 when (sel_2 = "10") else
              D1 when (sel_2 = "01") else
              D0 when (sel_2 = "00") else 
              '0';
end mux_arch;              
