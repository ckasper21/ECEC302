----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/31/2017 02:18:34 PM
-- Design Name: 
-- Module Name: radixR_adder - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity radixR_adder is
generic (r: natural:=5; --r radix
         n: natural:=3); --n is the least integer > log r
port (x,y: in std_logic_vector(n-1 downto 0);
    ck,btn0,btn1,reset: in std_logic;
    z: out std_logic_vector(n downto 0));
end radixR_adder;

architecture Behavioral of radixR_adder is
signal en: std_logic;
signal temp_x,temp_y: std_logic_vector(n downto 0); -- n+1 bit vector
type state is (no_carry,carry);
signal n_s:state;
begin

temp_x<='0'&x;
temp_y<='0'&y;

process(en)
variable temp: std_logic_vector(n downto 0); --n+1 bit vector
begin
if en='1' and en'event then
    if reset='1' then 
        n_s<= no_carry;
    else
        case n_s is
            when no_carry=>
                temp:=temp_x+temp_y;
                if unsigned(temp)>(r-1) then
                n_s<=carry;
                temp:=temp-r;
                else
                    n_s<=no_carry;
                end if;
            when carry=>
                temp:=temp_x+temp_y +'1';
                z<=temp;
                if unsigned(temp)> r-1 then
                n_s<=carry;
                temp:=temp-r;
                else
                    n_s<=no_carry;
                end if;
           end case;
      end if;
end if;       
z<=temp;       
end process;


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
