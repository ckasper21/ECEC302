----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/15/2017 02:14:31 PM
-- Design Name: 
-- Module Name: n_array_adder - Behavioral
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
use IEEE.STD_LOGIC_1164.ALL,
ieee.std_logic_arith.all,
ieee.std_logic_unsigned,
work.arith_pack.all;


entity n_array_adder is
generic (n:natural);
port(x,y: in std_logic_vector(n-1 downto 0);
 s: out std_logic_vector(n-1 downto 0));
end n_array_adder;

architecture Behavioral of n_array_adder is
begin
process(x,y)
begin
s<=x + y;
end process;
end Behavioral;