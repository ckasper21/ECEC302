----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/24/2017 01:11:15 PM
-- Design Name: 
-- Module Name: thres_test - Behavioral
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

entity thres_test is
port(a: in std_logic_vector(1 to 7);
    b: out std_logic);
end thres_test;

architecture struct of thres_test is

component thres_gate
generic (n:natural:=7; k:natural:=3);
port(x: in std_logic_vector(1 to n);
    z: out std_logic);
end component;

begin
U1: thres_gate generic map(7,3) port map(z=>b,x=>a);
end struct;
