----------------------------------------------------------------------------------
-- Company: USAFA ECE Department
-- Engineer: C3C Nathan Ruprecht
-- 
-- Create Date:    11:09:04 02/18/2014 
-- Design Name: 
-- Module Name:    Full_Adder - Behavioral 
-- Project Name: Lab2
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Full_Adder is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Cin : in STD_LOGIC;
           Sum : out STD_LOGIC;
           Cout : out STD_LOGIC);
end Full_Adder;

architecture Behavioral of Full_Adder is

begin

--Boolean expression for Cout.  Found it in class so no internal wires
Cout <= (A and B) or (A and Cin) or (B and Cin);

--Boolean expression for Sum.  Found it in class so no internal wires
Sum <= A xor B xor Cin;

end Behavioral;