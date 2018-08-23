----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/24/2017 10:45:53 AM
-- Design Name: 
-- Module Name: OR_gate - Behavioral
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
entity OR_gate is
generic (n: natural);
port(x: in std_logic_vector(1 to n);
    z: out std_logic);
end OR_gate;
-- solution to part a
Architecture beh of OR_gate is
begin

process(x)
subtype my_int is integer range 0 to 5;
variable temp: my_int;
begin
    temp :=0;
    for i in 1 to N loop
        if x(i)='1' then
            temp:= temp+1;
        end if;
    end loop;
if temp>0 then 
    z<='1';
else 
    z<='0';
end if;
end process;
end beh;