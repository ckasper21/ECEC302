----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/24/2017 12:19:22 PM
-- Design Name: 
-- Module Name: mux - Behavioral
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


entity mux is
generic (m : natural);
port(x: in std_logic_vector(0 to 2**m - 1);
    z: out std_logic;
    s: in std_logic_vector(m-1 downto 0));
end mux;

architecture Behavioral of mux is
begin
process(x,s)

subtype my_int is integer range 0 to 2**m-1;
variable temp: my_int;

-- s identifier
begin
    temp:=0;
    for i in 0 to m-1 loop
        if s(i)='1' then
            temp:=temp+2**i;
        end if;
    end loop;
    
-- use s
   if x(temp)='1' then
    z<='1';
   else
    z<='0';
   end if;
   
end process;
end Behavioral;
