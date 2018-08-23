----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/10/2017 04:15:06 PM
-- Design Name: 
-- Module Name: signedmult - Behavioral
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
package reg_mult_pack is
constant n: natural:=3;
end reg_mult_pack;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;
use work.reg_mult_pack.all;

entity unsignedmult is
Port (
    x,y: in std_logic_vector(n-1 downto 0);
    rx,ry: out std_logic_vector(n-1 downto 0);
    z: out std_logic_vector(2*n-1 downto 0);
    ck,en: in std_logic;
    btnL,btnR: in std_logic);
end unsignedmult;

architecture Behavioral of unsignedmult is
component reg
generic (n: natural);
Port (ck, ld_en: in std_logic;
    x: in std_logic_vector(n-1 downto 0);
    z: out std_logic_vector(n-1 downto 0));
end component;

signal w1, w2: std_logic_vector(n-1 downto 0);
signal w3: std_logic_vector(2*n-1 downto 0);
signal ck_step: std_logic;

begin
x_reg: reg generic map(n)
port map(x=>x, z=>w1,
        ck=>ck_step, ld_en=>en);
y_reg: reg generic map(n)
port map(x=>y, z=>w2,
        ck=>ck_step, ld_en=>en);
z_reg: reg generic map(2*n)
port map(x=>w3, z=>z,
        ck=>ck_step, ld_en=>en);
        
--signed multiply module
process(w1,w2)
begin
w3<=unsigned(w1)*unsigned(w2);
end process;

rx<=w1;
ry<=w2;

process(ck)
type state is (not_rdy, rdy, pulse);
variable ns: state;
begin
if ck='1' and ck'event then
    case ns is
    when not_rdy=>ck_step<='0';
    if btnR='1' then ns:=rdy; end if;
    when rdy=>ck_step<='0';
    if btnL='1' then ns:=pulse; end if;
    when pulse=> ck_step<='1';
    ns:=not_rdy;
    when others=>null;
    end case;
end if;
end process;
end Behavioral;