----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/19/2017 04:03:05 PM
-- Design Name: 
-- Module Name: pipe_mult - Behavioral
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

entity pipe_mult is
generic (N:natural:=4);
port ( x: in std_logic_vector(N-1 downto 0);
        y: in std_logic;
        z: out std_logic;
        ck,reset,b1,b2:in std_logic);
end pipe_mult;

architecture struc of pipe_mult is

component pe
port( x_i,y_i,c_in,ps_in: in std_logic;
y_out,c_out,ps_out: out std_logic;
ck, reset: in std_logic);
end component;

component DFF
port( x, reset, ck: in std_logic;
Q: out std_logic);
end component;

-- wires declaration
signal yy, c, ps: std_logic_vector(n-1 downto 0);
signal w, en: std_logic;

begin
D: DFF port map(w, reset, en, ps(n-1)); -- what wire is w in Fig. 2?

g1: for i in 0 to n-1 generate
g2: if i=0 generate
cell: pe port map(x(i), yy(i), c(i), ps(i), yy(i+1), c(i+1), z, en, reset); 
end generate g2;
g3: if i > 0 and i < n-1 generate
cell: pe port map(x(i), yy(i), c(i), ps(i), yy(i+1), c(i+1), ps(i-1) , en, reset);
end generate g3;
g4: if i=n-1 generate
cell: pe port map(x(i), yy(i), c(i), ps(i), open , w, ps(i-1), en, reset);
end generate g4;
end generate g1;
-- Wire Input Ports 
c(0) <= '0'; yy(0) <= y;
-- Single Step process generates en from b1 and b2 button press
process(ck)
type state is (not_rdy, rdy, pulse);
variable ns: state;
begin
if ck='1' and ck'event then
        case ns is
        when not_rdy=>en<='0';
        if b1='1' then ns:=rdy; end if;
        when rdy=>en<='0';
        if b2='1' then ns:=pulse; end if;
        when pulse=>en<='1';
        ns:=not_rdy;
        when others=>null;
        end case;
end if;
end process;
end struc;