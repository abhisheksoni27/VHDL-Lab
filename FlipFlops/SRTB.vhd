--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:00:18 10/16/2017
-- Design Name:   
-- Module Name:   /home/abhishek/VLSI/SRTB.vhd
-- Project Name:  VLSI
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SRFlipFlop
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
 
ENTITY SRTB IS
END SRTB;
 
ARCHITECTURE behavior OF SRTB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SRFlipFlop
    PORT(
         S : IN  std_logic;
         R : IN  std_logic;
         CLK : IN  std_logic;
         Q : INOUT  std_logic;
         QN : INOUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal S : std_logic := '0';
   signal R : std_logic := '0';
   signal CLK : std_logic := '0';

	--BiDirs
   signal Q : std_logic;
   signal QN : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SRFlipFlop PORT MAP (
          S => S,
          R => R,
          CLK => CLK,
          Q => Q,
          QN => QN
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
		wait for 100 ns;
			S<='0';
			R<='0';
		wait for 100 ns;
			S<='1';
			R<='0';
		wait for 100 ns;
			S<='0';
			R<='1';
		wait for 100 ns;
			S<='1';
			R<='1';
		wait for 100 ns;
   end process;

END;
