library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- This is just an example from the free range vhdl book

-- Black Box 1
entity sys1 is port(

    a_in1 : in std_logic;
    b_in2 : in std_logic;
    clk : in std_logic;
    ctrl_int : in std_logic;

    out_b : out std_logic

); 

end sys1;

-- Black box 2

--entity sys2 is port(
    --input_w : in std_logic;
    --a_data :  in std_logic_vector(0 to 7);
    --b_data :  in std_logic_vector(0 to 7);
    --clk : in;

    --dat_4 : out std_logic_vector(0 to 7);
    --dat_5 : out std_logic_vector(0 to 2)

--);

--end sys2;