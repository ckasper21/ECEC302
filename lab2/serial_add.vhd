LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY serial_add IS
Generic (N:natural:=8);
PORT (
SIGNAL a,b,clk,en: IN std_logic;
SIGNAL s: OUT std_logic_vector (N-1 downto 0);
SIGNAL cout, done: OUT std_logic);
end serial_add;

ARCHITECTURE behav of serial_add is
SIGNAL state, carry, sum: std_logic;
SIGNAL temp: std_logic_vector (N-1 DOWNTO 0);

BEGIN
trans_and_count: PROCESS(clk,en)
VARIABLE counter: integer:=0;
BEGIN
if (en='0') then
	state<='0';
	counter:=0;
	temp<=(others =>'0');
	done<='0';
elsif clk ='1' and clk'event then
if (counter<N) then
done<='0';
state<=carry;
counter:=counter+1;
temp(N-1)<=sum;
for i in N-2 DOWNTO 0 loop
temp(i)<=temp(i+1);
end loop;
else
done<='1';
end if;
end if;
end process trans_and_count;

cout<=state;
output:PROCESS(a,b,state)
begin
sum<=a xor b xor state;
carry<=(a and b) or (a and state) or (b and state);
end process output;
s<=temp;
end behav;
		


