--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:37:01 03/09/2014
-- Design Name:   
-- Module Name:   C:/Users/C16Nathan.Ruprecht/Documents/Academics/2013-2014/2014_Spring/ECE_281/CE3/CE3_Ruprecht/Moore_testbench_Ruprecht.vhd
-- Project Name:  CE3_Ruprecht
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MooreElevatorController_Shell
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
 
ENTITY Moore_testbench_Ruprecht IS
END Moore_testbench_Ruprecht;
 
ARCHITECTURE behavior OF Moore_testbench_Ruprecht IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MooreElevatorController_Shell
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         stop : IN  std_logic;
         up_down : IN  std_logic;
         floor : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal stop : std_logic := '0';
   signal up_down : std_logic := '0';

 	--Outputs
   signal floor : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MooreElevatorController_Shell PORT MAP (
          clk => clk,
          reset => reset,
          stop => stop,
          up_down => up_down,
          floor => floor
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
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
