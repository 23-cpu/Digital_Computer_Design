-- This is to solve the exercises in chapter 1 
-- The architecture definitions can be commented(i.e. comment the architecture you wish not to use)

-- Exercise 1

-- libraries

 library IEEE;
 use IEEE.std_logic_1164.all;
 use IEEE.numeric_std.all;

 -- Entity Declaration

 entity circ_1 is port (

     A_in, B_in : in std_logic;
     F_out : out std_logic

 );

 end circ_1;

 --architecture 1(concurrent signal assignment)

 architecture circ_1_arch of circ_1 is
    begin

        F_out <= ((not A and (not B)) or A or (A and (not B)));

    end circ_1_arch;

--architecture 2(conditional signal assignment)

architecture circ_1_arch2 of circ_1 is 
    begin

        F_out <= '1' when (A_in = '0' and B_in = '1')else
                 '1' when (A_in = '1')else
                 '1' when (A_in = '1' and B_in = '0')else
                 '0';

    end circ_1_arch2;


-- architecture 3 (select to signal assignment)

architecture circ_1_arch3 of circ_1 is 
    begin

        with((a = '0' and b = '1') or a = '1' or (a = '1' and b = '0')) select 
        
        F_out <= '1' when '1',
                 '0' when '0',
                 '0' when others;

    end circ_1_arch3;


--Exercise 2

entity circ_2 is port(

    A_in1 , B_in2 , C_in3, D_in4 : in std_logic;
    F_out2 : out

);
    end circ_2;

-- Architecture Definition
-- Concurrent Signal Assignment

architecture circ_2_arch of circ_2 is 
        begin
            F_out2 <= ((not(A_in1) and C_in3 and not(D_in4)) or (not(B) and C) or (B and C and not(D)));

        end circ_2_arch;

-- Conditional  Statement 

architecture circ_2_arch1 of circ_2 is 
        begin 

          F_out2 <= '1' when (A_in1 = '0' and C_in3 = '1' and D_in4 = '0')else
                   '1' when (B_in2 = '0' and C_in3 = '1')else
                   '1' when (B_in2 = '1' and C_in3 = '1' and D_in4 = '0')else
                   '0';

        end circ_2_arch1;

-- Another Method for circ_2, this uses the intermediate result method

architecture circ_2_arch1 of circ_2 is 
            signal inter1 , inter2, inter3 : std_logic;
        begin
            inter1 <= (not(A_in1) and C_in3 and not(D_in4));
            inter2 <= (not(B) and C);
            inter3 <= (B and C and not(D));

            F_out <= inter1 or inter2 or inter3;
        
        end circ_2_arch1;









