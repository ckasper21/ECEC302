----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/10/2017 03:56:24 PM
-- Design Name: 
-- Module Name: unsigned_mult - Behavioral
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
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;
use ieee.std_logic_unsigned.all;

entity unsigned_mult is
port(x,y:in std_logic_vector(3 downto 0);
    sel: in std_logic;
    z:out std_logic_vector(7 downto 0));
end unsigned_mult;

architecture Behavioral of unsigned_mult is

begin
process(x,y,sel)
begin
if sel='1' then
    z<= signed(x)*signed(y);
elsif sel='0' then
    z<= unsigned(x)*unsigned(y);
end if;
end process;



end Behavioral;
