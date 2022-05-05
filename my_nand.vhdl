-- Create a simple nand gate
-- An application of concurrent signal assignment

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

--Entity Declaration

entity my_nand is port(
            A_in : in std_logic;
            B_in : in std_logic;
            C_in : in std_logic;

            Y_out : out std_logic
);

end my_nand;

-- Architecture definition

architecture nand_arch of my_nand is 

begin
    Y_out <= not( A_in and B_in and C_in);
end nand_arch;


