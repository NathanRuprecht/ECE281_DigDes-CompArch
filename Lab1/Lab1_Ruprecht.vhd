----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:38:56 01/23/2014 
-- Design Name: 
-- Module Name:    Lab1_Ruprecht - Behavioral 
-- Project Name: Lab 1
-- Target Devices: 
-- Tool versions: 
-- Description: 2s Complement Lab
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

entity Lab1_Ruprecht is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           X : out  STD_LOGIC;
           Y : out  STD_LOGIC;
           Z : out  STD_LOGIC);
end Lab1_Ruprecht;

architecture Behavioral of Lab1_Ruprecht is

signal A_NOT, B_NOT, C_NOT, D, E, F, G, H, I : STD_LOGIC;

begin

--making my inputs into the wires

A_NOT <= not A;
B_NOT <= not B;
C_NOT <= not C;

--the wires between the inputs and outputs
D <= B or C;
E <= A_NOT and D;
F <= A and B_NOT;
G <= F and C_NOT;
H <= B_NOT and C;
I <= B and C_NOT;

--output wires
X <= E or G;
Y <= H or I;
Z <= C;

end Behavioral;

