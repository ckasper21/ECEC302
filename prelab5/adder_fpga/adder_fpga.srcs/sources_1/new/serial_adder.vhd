library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity serial_adder is
generic (n: natural:=2);
port(a,b,ck,reset: in std_logic;
    s: out std_logic_vector(n-1 downto 0);
    c_out, done: out std_logic);
end serial_adder;

architecture Behavioral of serial_adder is
signal state: std_logic;
signal temp: std_logic_vector(n-1 downto 0);
signal carry, sum : std_logic;
component add3bits
port(x: in std_logic_vector(2 downto 0);
    z: out std_logic_vector(1 downto 0));
end component; 

begin
process(ck)
subtype my_int is integer range 0 to n;
variable count: my_int;
begin
if ck='1' and ck'event then
    if reset='1' then
        state<='0';
        count:=0;
        temp<=(others =>'0');
        done<='0';
    else
    if count<n then
        state<=carry;
        temp(n-1) <= sum;
        for i in n-2 downto 0 loop
            temp(i)<=temp(i+1);
        end loop;
        count:=count+1;
        if count< n then
            done <='0';
            else
            done <='1';
        end if;
     end if;
end if;
end if;
end process;

c_out<=state;
s<=temp;

ADD3b: add3bits port map(
z(1)=> carry, z(0)=>sum,
x(2)=> a, x(1)=>b, x(0)=> state);
end Behavioral;

