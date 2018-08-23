----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/24/2017 10:54:02 AM
-- Design Name: 
-- Module Name: OR_gate_test - Behavioral
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

library ieee;
use ieee.std_logic_1164.all;
entity OR_gate_test is
port(v: in std_logic_vector(1 to 5);
 y: out std_logic);
end OR_gate_test;
Architecture struc of OR_gate_test is
component OR_gate
generic (n: natural := 4);
port(x: in std_logic_vector(1 to n);
 z: out std_logic);
end component;
begin
U2: OR_gate generic map (5) port map (z => y , x => v);
end struc;
