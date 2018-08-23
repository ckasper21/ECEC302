----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/24/2017 11:35:45 AM
-- Design Name: 
-- Module Name: AND8 - Behavioral
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

entity AND8 is
port(v: in std_logic_vector(1 to 8);
 y: out std_logic); 
end AND8;

Architecture struc of AND8 is
component AND_gate
generic (n: natural := 4);
port(x: in std_logic_vector(1 to n);
 z: out std_logic);
end component;
begin
U2: AND_gate generic map (8) port map (z => y , x => v);
end struc;
