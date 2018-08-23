library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_unsigned.all;
entity fact is
generic (K:natural:=32); --K number of bits
port(ck,reset:in std_logic;
	LED: out std_logic_vector(K-1 downto 0));
end fact;

architecture behav of fact is
signal temp: std_logic_vector(2*K-1 downto 0);
signal n: std_logic_vector(K-1 downto 0);

begin
process(ck)
begin
if ck='1' and ck'event then
	if reset='1' then
	-- initialize to vector "00..01"
	temp<=(0=>'1', others=>'0');
	n<=(0=>'1', others=>'0');
	else
	temp<=n*temp(K-1 downto 0);
	n<=n+1;
	end if;
end if;
end process;
led<=temp(K-1 downto 0);
end behav;