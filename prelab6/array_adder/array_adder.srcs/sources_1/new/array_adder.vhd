----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/15/2017 01:59:23 PM
-- Design Name: 
-- Module Name: array_adder - Behavioral
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


entity array_adder is
generic (n:natural:=3);
port(x,y: in std_logic_vector(n-1 downto 0);
 s: out std_logic_vector(n-1 downto 0));
end array_adder;

architecture struct of array_adder is
component n_array_adder
generic (n:natural);
port(x,y: in std_logic_vector(n-1 downto 0);
 s: out std_logic_vector(n-1 downto 0));
end component;

begin
U1: n_array_adder generic map(3)
port map(x=>x,y=>y,s=>s);
end struct;