----------------------------------------------------------------------------------
-- Company: USAFA ECE Department
-- Engineer: C3C Nathan Ruprecht
-- 
-- Create Date:    14:20:20 02/08/2014 
-- Design Name: 
-- Module Name:    Lab2_Structural - Structural 
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

entity Lab2_Structural is
    Port ( Ain : in  STD_LOGIC_VECTOR (3 downto 0);
           Bin : in  STD_LOGIC_VECTOR (3 downto 0);
			  Carry : out STD_LOGIC;
           Sum : out  STD_LOGIC_VECTOR (3 downto 0);
			  Btn : in STD_LOGIC);
end Lab2_Structural;

architecture Structural of Lab2_Structural is
	
   component Full_Adder is	         --FULL ADDER component
      port( A, B, Cin : in std_logic;
            sum, Cout : out std_logic);
   end component;

   --interconnecting wires
   signal C1, C2, C3, C4: std_logic; --intermediate carries
	signal F, B_not: STD_LOGIC_VECTOR(3 downto 0);

begin

--Defining the internal wire 'B_not' for the MUX
B_not <= not Bin;

--MUX for deciding addition or subtraction
F <= Bin when Btn = '0' else
		B_not;

--Port maps for 4, 1bit adders
   ADD0: Full_Adder port map(Ain(0), F(0), Btn,  Sum(0), C1);-- S0
   ADD1: Full_Adder port map(Ain(1), F(1), C1,  Sum(1), C2);  -- S1
   ADD2: Full_Adder port map(Ain(2), F(2), C2,  Sum(2), C3);  -- S2
   ADD3: Full_Adder port map(Ain(3), F(3), C3,  Sum(3), C4);  -- S3

   Carry <= C4 xor C3; -- Cout.  Dr. Neebel gave us the expression

end Structural;