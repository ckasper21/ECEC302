----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/15/2017 02:32:45 PM
-- Design Name: 
-- Module Name: serial_adder - Behavioral
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

entity serial_adder is
port(x,y,btn0,btn1: in std_logic;
    z: out std_logic;
    ck, reset: in std_logic);
end serial_adder;

architecture Behavioral of serial_adder is
signal c_nxt: std_logic:='0';
signal en: std_logic;
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
variable temp: std_logic_vector(1 downto 0);
begin
if en='1' and en'event then
    if reset='1' then
        z<='0'; c_nxt<='0';
    else
        temp:=add3bits(x,y,c_nxt);
        z<=temp(0);
        c_nxt<=temp(1);
    end if;
end if;
end process;
end Behavioral;
