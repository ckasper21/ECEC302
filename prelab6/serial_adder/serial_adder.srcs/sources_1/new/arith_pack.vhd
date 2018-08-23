----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/15/2017 01:56:35 PM
-- Design Name: 
-- Module Name: arith_pack - Behavioral
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

package arith_pack is
function add3bits (a, b, c_in: std_logic)
 return std_logic_vector;
function "+" (x, y: std_logic_vector)
 return std_logic_vector;
end arith_pack;

package body arith_pack is
function add3bits (a,b,c_in: std_logic)
return std_logic_vector is
variable count: natural;
begin
count := 0;
if a='1' then count := count+1; end if;
if b='1' then count := count+1; end if;
if c_in='1' then count := count+1; end if;
case count is
 when 0 => return "00";
 when 1 => return "01";
 when 2 => return "10";
 when 3 => return "11";
 when others => null;
end case;
end add3bits;

function "+" (x, y : std_logic_vector)
return std_logic_vector is
variable L: natural := x'length;
variable L2: natural := y'length;
variable c,s: std_logic_vector(L-1 downto 0);
variable temp: std_logic_vector(1 downto 0);
begin
-- check vector lengths equal
assert L=L2
 report "Argument unequal length"
 severity ERROR;
-- initial carry
 c(0) := '0';
 -- loop from LSB to MSB-1 position
 for i in 0 to L-2 loop
 temp := add3bits(x(i),y(i),c(i));
 s(i) := temp(0);
 c(i+1) := temp(1);
 end loop;
-- MSB position
 temp := add3bits(x(L-1),y(L-1),c(L-1));
 s(L-1) := temp(0);
 -- overflow assertion
 assert temp(1) = '0'
 report "addition overflow"
 severity ERROR;
 return s;
end "+";
end arith_pack;
