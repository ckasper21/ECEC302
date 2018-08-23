----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/10/2017 03:00:24 PM
-- Design Name: 
-- Module Name: shift_reg - Behavioral
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


entity shift_reg is
generic(n:natural);
port(x: in std_logic;
    z: out std_logic_vector(n-1 downto 0);
    ck, reset: in std_logic);
end shift_reg;

architecture Behavioral of shift_reg is
signal temp: std_logic_vector(n-1 downto 0);
begin
process(ck)
begin
if ck='1' and ck'event then
    if reset='1' then 
    temp<="00000";
    else
        for i in n-1 to 1 loop
            if i=n-1 then
                temp(i)<=x;
            else
                temp(i)<=temp(i+1);
            end if;   
        end loop;
    temp(0)<=temp(4)xor temp(3) xor temp(2) xor temp(1);
    end if;
end if;
z<=temp;   
end process;
end Behavioral;
