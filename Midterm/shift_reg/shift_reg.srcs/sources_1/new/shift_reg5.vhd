----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/10/2017 03:21:10 PM
-- Design Name: 
-- Module Name: shift_reg5 - Behavioral
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

entity shift_reg5 is
port(x: in std_logic;
    z: out std_logic_vector(4 downto 0);
    ck, reset,btn0,btn1: in std_logic);
end shift_reg5;

architecture structure of shift_reg5 is
signal en: std_logic;
component shift_reg
generic(n:natural);
port(x: in std_logic;
    z: out std_logic_vector(n-1 downto 0);
    ck, reset: in std_logic);
end component;
begin
U: shift_reg generic map(5) port
map(x=>x,ck=>en,reset=>reset,z=>z);

process(ck)
type state is (not_rdy,rdy,pulse);
variable ns:state;
begin
if ck='1' and ck'event then
    case ns is
        when not_rdy=>en<='0';
        if btn1='1' then ns:=rdy; end if;
        when rdy=>en<='0';
        if btn0='1' then ns:=pulse; end if;
        when pulse =>en<='1';
        ns:=not_rdy;
        when others => null;
     end case;
end if;
end process;
end structure;
