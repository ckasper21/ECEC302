library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity fib_seq_gen is
generic(N: natural:=8);
port(reset,ck: in std_logic;
	z:out std_logic_vector(N-1 downto 0));
end fib_seq_gen;

architecture behavioral of fib_seq_gen is
signal temp1: std_logic_vector(n-1 downto 0);
signal temp2: std_logic_vector(n-1 downto 0);
begin
process(ck)
begin
if ck='1' and ck'event then
	if reset='1' then
	temp1<="00000001";
	temp2<="00000001";
	else
	temp1<=temp1+temp2;
	temp2<=temp1;
	end if;
end if;
end process;
z<=temp1;
end behavioral;

