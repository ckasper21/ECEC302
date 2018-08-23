----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/24/2017 11:34:43 AM
-- Design Name: 
-- Module Name: AND_gate - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity AND_gate is
generic (n: natural);
port(x: in std_logic_vector(1 to n);
 z: out std_logic); 
end AND_gate;

architecture Behavioral of AND_gate is

begin
process(x)
variable temp: std_logic;
begin
 temp := '1';
 for i in 1 to N loop
 temp := temp and x(i);
 end loop;
z <= temp;
end process;


end Behavioral;
