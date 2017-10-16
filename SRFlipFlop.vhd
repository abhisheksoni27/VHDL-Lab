----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:49:38 10/16/2017 
-- Design Name: 
-- Module Name:    SRFlipFlop - Behavioral 
-- Project Name: 
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

entity SRFlipFlop is
    Port ( S : in  STD_LOGIC;
           R : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           Q : inout  STD_LOGIC;
           QN : inout  STD_LOGIC);
end SRFlipFlop;

architecture Behavioral of SRFlipFlop is

begin

	process(S, R, CLK)
	begin
		if(CLK' EVENT AND CLK = '1') then
			if(S = '0' AND R = '0') then
				Q <= Q;
				QN <= QN;
			elsif(S='1' AND R='0') then
				Q <= '1';
				QN <= '0';
			elsif(S='0' AND R='1') then
				Q <= '0';
				QN <= '1';
			else
				Q <= 'Z';
				QN <= 'Z';
			end if;
		end if;
	end process;

end Behavioral;

