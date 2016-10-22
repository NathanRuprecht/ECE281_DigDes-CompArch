--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:50:26 03/09/2014
-- Design Name:   
-- Module Name:   C:/Users/C16Nathan.Ruprecht/Documents/Academics/2013-2014/2014_Spring/ECE_281/CE3/CE3_Ruprecht/Mealy_testbench_Ruprecht.vhd
-- Project Name:  CE3_Ruprecht
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MealyElevatorController_Shell
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
--USE ieee.numeric_std.ALL;
 
ENTITY Mealy_testbench_Ruprecht IS
END Mealy_testbench_Ruprecht;
 
ARCHITECTURE behavior OF Mealy_testbench_Ruprecht IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MealyElevatorController_Shell
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         stop : IN  std_logic;
         up_down : IN  std_logic;
         floor : OUT  std_logic_vector(3 downto 0);
         nextfloor : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal stop : std_logic := '0';
   signal up_down : std_logic := '0';

 	--Outputs
   signal floor : std_logic_vector(3 downto 0);
   signal nextfloor : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MealyElevatorController_Shell PORT MAP (
          clk => clk,
          reset => reset,
          stop => stop,
          up_down => up_down,
          floor => floor,
          nextfloor => nextfloor
        );

   -- Clock process definitions
   clk_process :process
   begin		
      -- hold reset state for 100 ns.
		
		--at floor1
		reset <= '1';
		wait for 10 ns;
		
		--goes to floor2
		reset <= '0';
		stop <= '0';
		up_down <='1';
		wait for 20 ns;
		
		--goes to floor3
		stop <= '0';
		up_down <='1';
		wait for 20 ns;
		
		--goes to floor4
		stop <= '0';
		up_down <='1';
		
		--goes to floor1
		stop <= '0';
		up_down <='0';
		wait;


      -- insert stimulus here 

      wait;
   end process;

END;
