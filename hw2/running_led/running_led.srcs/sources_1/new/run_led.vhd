----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/17/2017 01:08:49 PM
-- Design Name: 
-- Module Name: run_led - Behavioral
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

entity run_led is
port(x,reset,ck: in std_logic;
    z: out std_logic_vector(15 downto 0));
end run_led;

architecture Behavioral of run_led is
TYPE state is (stateA,stateB,stateC,stateD, stateE,stateF,stateG,stateH, stateI,stateJ,stateK,stateL, stateM,stateN,stateO,stateP);
signal nx_state: state;
signal ck1: std_logic;
begin
process(ck)
variable count: integer;
begin
if ck='1' and ck'event then
    if reset='1' then
        count:=0; ck1<='0';
    else
        if count=999999 then
            ck1<=not ck1; count:=0;
        else
            count:=count+1;
        end if;
    end if;
end if;
end process;
process(ck1)
begin
if ck1='1' and ck1'event then
    if reset='1' then
    nx_state<=stateA; z<="0000000000000000";
    else
        case nx_state is
        when stateA=> z<="0000000000000001";
            if x='1' then nx_state<=stateB;
            else nx_state<=stateP;
            end if;
        when stateB=> z<="0000000000000010";
            if x='1' then nx_state<=stateC;
            else nx_state<=stateA;
            end if;
        when stateC=> z<="0000000000000100";
            if x='1' then nx_state<=stateD;
            else nx_state<=stateB;
            end if;
        when stateD=> z<="0000000000001000";
            if x='1' then nx_state<=stateE;
            else nx_state<=stateC;
            end if;
        when stateE=> z<="0000000000010000";
            if x='1' then nx_state<=stateF;
            else nx_state<=stateD;
            end if;
        when stateF=> z<="0000000000100000";
            if x='1' then nx_state<=stateG;
            else nx_state<=stateE;
            end if;
        when stateG=> z<="0000000001000000";
            if x='1' then nx_state<=stateH;
            else nx_state<=stateF;
            end if;
        when stateH=> z<="0000000010000000";
            if x='1' then nx_state<=stateI;
            else nx_state<=stateG;
            end if;
        when stateI=> z<="0000000100000000";
            if x='1' then nx_state<=stateJ;
            else nx_state<=stateH;
            end if;
        when stateJ=> z<="0000001000000000";
            if x='1' then nx_state<=stateK;
            else nx_state<=stateI;
            end if;   
        when stateK=> z<="0000010000000000";
            if x='1' then nx_state<=stateL;
            else nx_state<=stateJ;
            end if;
        when stateL=> z<="0000100000000000";
            if x='1' then nx_state<=stateM;
            else nx_state<=stateK;
            end if;
        when stateM=> z<="0001000000000000";
            if x='1' then nx_state<=stateN;
            else nx_state<=stateL;
            end if;
        when stateN=> z<="0010000000000000";
            if x='1' then nx_state<=stateO;
            else nx_state<=stateM;
            end if;
        when stateO=> z<="0100000000000000";
            if x='1' then nx_state<=stateP;
            else nx_state<=stateN;
            end if;
        when stateP=> z<="1000000000000000";
            if x='1' then nx_state<=stateA;
            else nx_state<=stateO;
            end if;
     end case;
     end if;
end if;
end process;         
end Behavioral;
