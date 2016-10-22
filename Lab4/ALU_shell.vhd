-------------------------------------------------------------------------------
--
-- Title       : ALU
-- Design      : ALU
-- Author      : usafa
-- Company     : usafa
--
-------------------------------------------------------------------------------
--
-- File        : ALU.vhd
-- Generated   : Fri Mar 30 11:16:54 2007
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.20
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------

--{{ Section below this comment is automatically maintained
--   and may be overwritten
--{entity {ALU} architecture {ALU}}

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ALU is
	 port(
		 OpSel : in STD_LOGIC_VECTOR(2 downto 0);
		 Data : in STD_LOGIC_VECTOR(3 downto 0);
		 Accumulator : in STD_LOGIC_VECTOR(3 downto 0);
		 Result : out STD_LOGIC_VECTOR(3 downto 0)
	     );
end ALU;

--}} End of automatically maintained section

architecture ALU of ALU is	   


begin
	
-- fill in details to create result as a function of Data and Accumulator, based on OpSel.
 -- e.g : Build a multiplexer choosing between the eight ALU operations.  Either use a case statement (and thus a process)
 --       or a conditional signal assignment statement ( x <= Y when <condition> else . . .)
 -- ALU Operations are defined as:
 -- OpSel : Function
--  0     : AND
--  1     : NEG (2s complement)
--  2     : NOT (invert)
--  3     : ROR
--  4     : OR
--  5     : IN
--  6     : ADD
--  7     : LD
aluswitch: process (Accumulator, Data, OpSel)
        begin
		-- enter your if/then/else or case statements here
		
		--AND opsel (accumulator and data bus)
		if (OpSel <= "000") then
			Result <= Accumulator and Data;

		
		--NEG opsel (2s complement of accumulator)
		elsif (OpSel <= "001") then
			Result <= std_logic_vector(not signed(Accumulator) + "0001");
		
		
		--NOT opsel (invert bit-by-bit of accumulator)
		elsif (OpSel <= "010") then
			Result <= not Accumulator;
			
			
		--ROR opsel (rotate 1bit to the right of accumulator)
		elsif (OpSel <= "011") then
			Result <= std_logic_vector(signed(Accumulator) ROR 1);

		--OR opsel (accumulator or data bus)
		elsif (OpSel <= "100") then
			Result <= Accumulator or Data;
		
		
		--IN opsel (data bus to the accumulator)
		elsif (OpSel <= "101") then
			Result <= Data;
			
			
		--ADD opsel (accumulator + data bus)
		elsif (OpSel <= "110") then
			Result <= std_logic_vector(signed(Accumulator) + signed(Data));
			
			
		--LDA opsel (loads operand from data bus to accumulator)
		elsif (OpSel <= "111") then
			Result <= Data;
			
						
		end if;
		
		end process;

-- OR, enter your conditional signal statement here

end ALU;