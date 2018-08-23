----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/17/2017 03:51:53 PM
-- Design Name: 
-- Module Name: blink - Behavioral
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

entity blink is
port (b1, b2, ck, reset: in std_logic; --b1 is fast to slow
    z,y: out std_logic);                 --b2 is slow to fast
end blink;

architecture Behavioral of blink is
type state is (s0,s1); --s0 is fast, s1 is slow
signal nx_state:state;
signal ck1: std_logic; 
signal ck2: std_logic;
signal sel: std_logic;
begin
process(ck) --making fast clock
variable count: integer;
begin
if ck='1' and ck'event then
    if reset='1' then
        count:=0; ck1<='0';
    else
        if count=9999999 then
            ck1<=not ck1; count:=0;
        else
            count:=count+1;
        end if;
    end if;
end if;
end process;

process(ck)--making slow clock
variable count2: integer;
begin
if ck='1' and ck'event then
    if reset='1' then
        count2:=0; ck2<='0';
    else
        if count2=99999999 then
            ck2<=not ck2; count2:=0;
        else
            count2:=count2+1;
        end if;
    end if;
end if;
end process;

process(sel,ck1,ck2) --process selects the clock
begin
if sel='1' then z<=ck1;
else z<=ck2;
end if;
end process;


process(ck)
begin
if ck='1' and ck'event then
    if reset='1' then
    nx_state<=s1;
    else
        case nx_state is
        when s1=>sel<='0';
        if b2='1' then nx_state<=s0;
        end if;
        when s0=>sel<='1';
        if b1='1' then nx_state<=s1;
        end if;
        end case;
    end if;
end if;
end process;
end Behavioral;