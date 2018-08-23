----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/24/2017 12:48:15 PM
-- Design Name: 
-- Module Name: mux3 - Behavioral
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

entity mux3 is
port(input: in std_logic_vector(0 to 7);
    output: out std_logic;
    sel: in std_logic_vector(2 downto 0));
end mux3;

architecture struct of mux3 is

component mux
generic (m:natural:=3);
port(x: in std_logic_vector(0 to 2**m - 1);
    z: out std_logic;
    s: in std_logic_vector(m-1 downto 0));
end component;

begin
U1: mux generic map(3) port map(z=>output,s=>sel,x=>input);
end struct;
