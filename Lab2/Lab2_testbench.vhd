--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:30:23 02/18/2014
-- Design Name:   
-- Module Name:   C:/Users/C16Nathan.Ruprecht/Documents/Academics/2013-2014/2014_Spring/ECE_281/Lab2/Lab2/Lab2_Testbench.vhd
-- Project Name:  Lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Lab2_Structural
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
USE ieee.numeric_std.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;

 
ENTITY Lab2_Testbench IS
END Lab2_Testbench;
 
ARCHITECTURE behavior OF Lab2_Testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Lab2_Structural
    PORT(
         Ain : IN  std_logic_vector(3 downto 0);
         Bin : IN  std_logic_vector(3 downto 0);
         Carry : OUT  std_logic;
         Sum : OUT  std_logic_vector(3 downto 0)
			);
    END COMPONENT;
    

   --Inputs
   signal Ain : std_logic_vector(3 downto 0) := (others => '0');
   signal Bin : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Carry : std_logic;
   signal Sum : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Lab2_Structural PORT MAP (
          Ain => Ain,
          Bin => Bin,
          Carry => Carry,
          Sum => Sum
        );

--   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
-- 
--
--   -- Stimulus process
--   stim_proc: process
--   begin		
--      -- hold reset state for 100 ns.
--      wait for 100 ns;	
--
--      wait for <clock>_period*10;
--
--       insert stimulus here 
--
--      wait;
--   end process;

stim_proc: process
   begin	


Ain <= "0000";
Bin <= "0000";

	for H in 0 to 1 loop
      for I in 0 to 15 loop
				for J in 0 to 15 loop
					Bin <= Bin + "0001";
					wait for 100 ns;
				end loop;

			Ain <= Ain + "0001";
			wait for 100 ns;
		end loop;
		
		wait for 10 ns;
		end loop;
		
		end process;
			
END;