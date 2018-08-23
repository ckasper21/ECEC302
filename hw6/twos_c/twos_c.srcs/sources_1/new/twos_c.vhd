----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/15/2017 09:19:34 AM
-- Design Name: 
-- Module Name: twos_c - Behavioral
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

entity twos_c is
generic (n:natural:=4);
port (x: in std_logic_vector(n-1 downto 0);
    z: out std_logic_vector(n-1 downto 0);
    go, reset, ck, btn0,btn1: in std_logic);
end twos_c;

architecture Behavioral of twos_c is
signal en: std_logic;
signal count: integer :=0;

begin
--Single Step--
process(ck)
type state is (not_rdy, rdy, pulse);
variable ns: state;
begin
if ck='1' and ck'event then
        case ns is
        when not_rdy=>en<='0';
        if btn0='1' then ns:=rdy; end if;
        when rdy=>en<='0';
        if btn1='1' then ns:=pulse; end if;
        when pulse=>en<='1';
        ns:=not_rdy;
        when others=>null;
        end case;
end if;
end process;

process(en)
type my_state is (copy, invert,chill);
variable state: my_state;
begin
if en='1' and en'event then
    if reset='1' then
    z<="0000"; state:=copy; count<=0;
    else
    if go='1' then
    case state is
        when copy=>
            if x(count)='0' then
            z(count)<='0';
            count<=count+1;
            if count=4 then
            state:=chill;
            end if;
            else
            z(count)<='1'; state:=invert;
            count<=count+1;
            if count=4 then
            state:=chill;
            end if;
            end if;
        when invert=>
            z(count)<=not x(count);
            count<=count+1;
            if count=4 then
            state:=chill;
            end if;
        when chill=>
            null;
        when others=> null;
    end case;
    end if;
    end if;
end if;
end process;
end Behavioral;
