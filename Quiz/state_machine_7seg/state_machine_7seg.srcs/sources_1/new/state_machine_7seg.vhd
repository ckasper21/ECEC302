----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/03/2017 04:01:14 PM
-- Design Name: 
-- Module Name: state_machine_7seg - Behavioral
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


entity state_machine_7seg is
port(seg:out std_logic_vector(0 to 6);
        dp: out std_logic;
        an:out std_logic_vector(3 downto 0);
        sel,ck,reset,btn0,btn1:in std_logic);
end state_machine_7seg;

architecture Behavioral of state_machine_7seg is
type my_state is (s0,s1,s2,s3,s4,s5);
signal n_s: my_state;
signal ck_step:std_logic;
begin
process(ck)
type state is (not_rdy,rdy,pulse);
variable ns:state;
begin
if ck='1' and ck'event then
    case ns is
        when not_rdy=>ck_step<='0';
        if btn1='1' then ns:=rdy; end if;
        when rdy=>ck_step<='0';
        if btn0='1' then ns:=pulse; end if;
        when pulse => ck_step<='1';
        ns:=not_rdy;
        when others => null;
     end case;
end if;
end process;

process(ck_step)
begin
if ck_step='1' and ck_step'event then
    if reset='1' then
        n_s<=s0; seg<="0000001"; an<="1110"; dp<='1';
    else
        case n_s is
           when s0=>
           if sel='0' then
           n_s<=s1; seg<="1001111"; an<="1110"; dp<='1';
           elsif sel='1' then
           n_s<=s2; seg<="0010010"; an<="1110"; dp<='1';
           end if;
           when s1=>
           if sel='0' then
           n_s<=s2; seg<="0010010"; an<="1110"; dp<='1';
           elsif sel='1' then
           n_s<=s3; seg<="0000110"; an<="1110"; dp<='1';
           end if;
           when s2=>
           if sel='0' then          
           n_s<=s3; seg<="0000110"; an<="1110"; dp<='1';
           elsif sel='1' then
           n_s<=s4; seg<="1001100"; an<="1110"; dp<='1';
           end if;
           when s3=>
           if sel='0' then           
           n_s<=s4; seg<="1001100"; an<="1110"; dp<='1';
           elsif sel='1' then
           n_s<=s5; seg<="0100100"; an<="1110"; dp<='1';
           end if;
           when s4=>
           if sel='0' then           
           n_s<=s5; seg<="0100100"; an<="1110"; dp<='1';
           elsif sel='1' then
           n_s<=s1; seg<="1001111"; an<="1110"; dp<='1';
           end if;
           when s5=>
           n_s<=s5; seg<="0100100"; an<="1110"; dp<='1';
        end case;
     end if;
end if;
end process;

end Behavioral;
