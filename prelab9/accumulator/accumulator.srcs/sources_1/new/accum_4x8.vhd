----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/26/2017 03:14:37 PM
-- Design Name: 
-- Module Name: accum_4x8 - Behavioral
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

entity accum_4x8 is
port(x: in std_logic_vector(3 downto 0);
    z: out std_logic_vector(7 downto 0);
    ck,reset,bypass,btn1,btn0: in std_logic);
end accum_4x8;

architecture Behavioral of accum_4x8 is
component c_accum_0 IS
  PORT (
    B : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    CLK : IN STD_LOGIC;
    BYPASS : IN STD_LOGIC;
    SCLR : IN STD_LOGIC;
    Q : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END component;
signal en: std_logic;
begin
U1: c_accum_0
    port map(
     B => x,
     CLK => en,
     BYPASS => bypass,
     SCLR => reset,
     Q => z
     );
     
process(ck)
type db_state is (not_rdy, rdy, pulse);
variable db_ns: db_state;
begin
if ck='1' and ck'event then
 case db_ns is
     when not_rdy=>en<='0';
     if btn0='1' then db_ns:=rdy; end if;
     when rdy=>en<='0';
     if btn1='1' then db_ns:= pulse; end if;
     when pulse =>en<='1';
         db_ns:=not_rdy;
     when others=> null;
 end case;
end if;
end process;
end Behavioral;
