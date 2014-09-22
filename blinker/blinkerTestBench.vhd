--------------------------------------------------------------------------------
-- Company: 
-- Engineer: Ke-Wei Ma (keweima@gmail.com)
--
-- Create Date:   15:28:48 09/17/2014
-- Design Name:   
-- Module Name:   D:/dev/src/XESS_FPGA/blinker/blinkerTestBench.vhd
-- Project Name:  blinker
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: blinker
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
 
ENTITY blinkerTestBench IS
END blinkerTestBench;
 
ARCHITECTURE behavior OF blinkerTestBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT blinker
    PORT(
         clk_in : IN  std_logic;
         blinker_o : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk_in : std_logic := '0';

 	--Outputs
   signal blinker_o : std_logic;

   -- Clock period definitions
   constant clk_in_period : time := 83.3 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: blinker PORT MAP (
          clk_in => clk_in,
          blinker_o => blinker_o
        );

   -- Clock process definitions
   clk_in_process :process
   begin
		clk_in <= '0';
		wait for clk_in_period/2;
		clk_in <= '1';
		wait for clk_in_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_in_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
