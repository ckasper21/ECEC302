library ieee;
use ieee.std_logic_1164.all, work.p1_pack.all;
entity control is
port( go,ck,reset,done: in std_logic;
	sel: out sh_reg_sel;
	reset_sadder:out std_logic);
end control;

architecture behav of control is
type state is (idle, loading,shifting);
signal n_s: state;
begin 
process(ck)
begin
if ck='1' and ck'event then
if reset='1' then n_s<=idle;
else
case n_s is
when idle=>
reset_sadder<='0';
sel<=no_op;
if go='1' then n_s<= loading;
end if;
when loading=>
reset_sadder<='1';
sel<=load;
n_s<=shifting;
when shifting=>
reset_sadder<='0';
sel<=shift;
if done='1' then n_s<=idle;
end if;
end case;
end if;
end if;
end process;
end behav;
