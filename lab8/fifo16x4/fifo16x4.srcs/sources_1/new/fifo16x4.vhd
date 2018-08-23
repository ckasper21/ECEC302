----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/24/2017 02:22:05 PM
-- Design Name: 
-- Module Name: fifo16x4 - Behavioral
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

entity fifo16x4 is
port(
    ck,btn0,btn1,reset,wen,ren: in std_logic;
    x: in std_logic_vector(3 downto 0);
    z: out std_logic_vector(3 downto 0);
    empty_flag,full_flag: out std_logic);
end fifo16x4;

architecture Behavioral of fifo16x4 is

component fifo_generator_0 IS
  PORT (
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    din : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    wr_en : IN STD_LOGIC;
    rd_en : IN STD_LOGIC;
    dout : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    full : OUT STD_LOGIC;
    empty : OUT STD_LOGIC
  );
END component;

signal en: std_logic;
signal wen_temp,ren_temp,full_temp,empty_temp: std_logic;
shared variable count:integer:=0;
signal is_full:std_logic:='0';

begin

U1: fifo_generator_0
  PORT MAP (
    clk => en,
    rst => reset,
    din => x,
    wr_en => wen_temp,
    rd_en => ren_temp,
    dout => z,
    full => full_temp,
    empty => empty_temp
  );

process(ck)

type db_state is (not_rdy, rdy, pulse);
variable db_ns: db_state;
begin
if ck='1' and ck'event then
    wen_temp<=wen;
    ren_temp<=ren;
    case db_ns is
        when not_rdy=>en<='0';
        if btn1='1' then db_ns:=rdy; end if;
        when rdy=>en<='0';
        if btn0='1' then db_ns:= pulse; end if;
        when pulse =>
        if is_full='1' then
            wen_temp<='0';
            ren_temp<='1';
            if empty_temp='1' then
                db_ns:=not_rdy;
                is_full<='0';
            else
                count:=count+1;
                en<='0';
                if count>= 100000000 then
                    en<='1';
                    count:=0;
                end if;
            end if;
        else
            db_ns:=not_rdy;
            en<='1';
        end if;
        if full_temp='1' then
            is_full<='1';
            db_ns:=pulse;
        end if;
        when others=> null;
    end case;
end if;
end process;
empty_flag<=empty_temp;
full_flag<=full_temp;
end Behavioral;
