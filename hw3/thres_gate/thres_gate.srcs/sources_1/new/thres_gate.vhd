----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/24/2017 01:02:14 PM
-- Design Name: 
-- Module Name: thres_gate - Behavioral
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

entity thres_gate is
generic (n:natural; k:natural);
port(x: in std_logic_vector(1 to n);
    z: out std_logic);
end thres_gate;

architecture Behavioral of thres_gate is
begin
process(x)
subtype my_int is integer range 0 to n;
variable count: my_int;
begin
    count:=0;
    for i in 1 to n loop
        if x(i)='1' then
            count:=count+1;
        end if;
    end loop;
    
    if count >= k then
        z<='1';
    else
        z<='0';
    end if;
    
end process;
end Behavioral;
