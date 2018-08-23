----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/17/2017 07:13:57 PM
-- Design Name: 
-- Module Name: reg_v1 - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity reg_v1 is
port (X : in std_logic_vector(1 downto 0);
    LEDS: out std_logic_vector(7 downto 0);
    btns: in std_logic_vector(3 downto 0);
    ck: in std_logic);
end reg_v1;

architecture beh of reg_v1 is
signal r0,r1,r2,r3: std_logic_vector(1 downto 0);
begin
LEDS(7 downto 6)<=R3;
LEDS(5 downto 4)<=R2;
LEDS(3 downto 2)<=R1;
LEDS(1 downto 0)<=R0;
process(ck)
begin
if ck='1' and ck'event then
case btns is
    when "1000" =>R0<=x;
    when "0100" =>R1<=x;
    when "0010" =>R2<=x;
    when "0001" =>R3<=x;
    when others => null;
end case;
end if;
end process;
end beh;

