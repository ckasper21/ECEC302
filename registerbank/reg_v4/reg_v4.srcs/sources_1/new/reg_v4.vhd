----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/19/2017 03:13:47 PM
-- Design Name: 
-- Module Name: reg_v4 - Behavioral
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


entity reg_v4 is
port (sw: in std_logic_vector(3 downto 0);
    btns: in std_logic_vector(3 downto 0);
    z: out std_logic_vector(7 downto 0);
    disp_en: out std_logic_vector(3 downto 0);
    ck, reset: in std_logic);
end reg_v4;

architecture Behavioral of reg_v4 is
Type my_state is (s0,s1,s2,s3);
signal n_s: my_state;
signal ck_div: std_logic;
signal sw_sel: std_logic_vector(0 to 3);
signal r0,r1,r2,r3: std_logic_vector(3 downto 0);

begin
process(sw_sel)
variable temp: std_logic_vector(3 downto 0);
begin
case sw_sel is
    when "1000" => temp:=r0(3 downto 0);
    when "0100" => temp:=r1(3 downto 0);
    when "0010" => temp:=r2(3 downto 0);
    when "0001" => temp:=r3(3 downto 0);
    when others => temp:="0000";
end case;
case btns is
    when "1000" =>R0<=sw;
    when "0100" =>R1<=sw;
    when "0010" =>R2<=sw;
    when "0001" =>R3<=sw;
    when others => null;
end case;
case temp is
    when "0000" => Z <="00000011";--0
    when "0001" => Z <="10011111";--1
    when "0010" => Z <="00100101";--2
    when "0011" => Z <="00001101";--3
    when "0100" => Z <="10011001";--4
    when "0101" => Z <="01001001";--5
    when "0110" => Z <="01000001";--6
    when "0111" => Z <="00011111";--7
    when "1000" => Z <="00000001";--8
    when "1001" => Z <="00001001";--9
    when "1010" => Z <="00010001";--10
    when "1011" => Z <="11000001";--11
    when "1100" => Z <="01100011";--12
    when "1101" => Z <="10000101";--13
    when "1110" => Z <="01100001";--14
    when "1111" => Z <="01110001";--15
    when others => null;
end case;
end process;
process(ck_div)
begin
if ck_div'event and ck_div='1' then
case n_s is
when s0=>sw_sel<="1000"; disp_en<="0111";n_s<=s1;
when s1=>sw_sel<="0100"; disp_en<="1011";n_s<=s2;
when s2=>sw_sel<="0010"; disp_en<="1101";n_s<=s3;
when s3=>sw_sel<="0001"; disp_en<="1110";n_s<=s0;
end case;
end if;
end process;

process(ck)
variable count: integer;
begin
if ck='1' and ck'event then
    if reset='1' then
        count:=0;
        ck_div<='0';
    elsif reset='0' then
        if count=99999 then
            ck_div<= not ck_div;
            count:=0;
        else
            count:=count+1;
        end if;
   end if;
end if;
end process;


end Behavioral;
