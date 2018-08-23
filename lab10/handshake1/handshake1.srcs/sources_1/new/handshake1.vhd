----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/06/2017 09:05:37 PM
-- Design Name: 
-- Module Name: handshake1 - Behavioral
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

library IEEE; use IEEE.STD_LOGIC_1164.ALL; 
 
entity handshake1 is 
Port(
    c_request_service  : out std_logic;-- A1 
    s_request_service  : in  std_logic;-- A2 
    s_request_received : out std_logic;-- A3 
    c_request_received : in  std_logic;-- A4 
    s_service_done     : out std_logic;-- A7 
    c_service_done     : in  std_logic;-- A8 
    c_done_received    : out std_logic;-- A9 
    s_done_received    : in  std_logic;-- A10 
    c_data_out         : out std_logic;-- C1 
    s_data_in          : in  std_logic;-- C2 
    sw, btnC, btnR     : in  std_logic; 
    led :out std_logic_vector(1 downto 0); 
    ck, reset          : in  std_logic ); 
end handshake1; 
 
architecture Behavioral of handshake1 is 
 
-- client interface to capture button press 
signal start, ready : std_logic; 
 
-- server interface to capture and display data job 
signal start_job, job_completed : std_logic; 
 
signal d_in : std_logic; -- data received FF 
signal d_out: std_logic; -- data sent FF 
 
begin 
 
-------------------------- -- Capture button event  -- with debounce and  -- pulses start signal -------------------------- 
process(ck) 
type my_state is  (rdy,pulse,rst); 
variable n_s : my_state; 
begin 
if ck='1' and ck'event then  
    if reset = '1' then    n_s := rdy;    
    start <= '0';    d_out <= '0';  
    else  
        case n_s is   
        when rdy =>     
        start <= '0';     
        if btnC = '1' and ready = '1' then        
        n_s := pulse;     
        end if; 
        when pulse =>     
        start <= '1';     
        d_out <= sw;     
        n_s := rst;   
        when rst =>     
        if btnR = '1' then      
        n_s := rdy;     
        end if;     
        start <= '0';   
        end case;  
    end if; 
end if; 
end process; 
 
-------------------------------- -- wire output data port -------------------------------- 
c_data_out <= d_out; 
 
----------------------------------------- 
-- client (sync with capture button) 
--  inputs: start (from capture button), 
--          request_received, service_done 
--          (from server) 
-- outputs: ready (to capture button) 
--          request_service, done_received 
--          (to server) 
------------------------------------------ 
process(ck) 
type my_state is ( 
------------------------------------------------ 
--wait on server flag then action on transition 
------------------------------------------------   
wait_on_start,           -- then request service  
wait_on_request_received,--   then lower request  
wait_on_request_received_low, -- no action  
wait_on_service_done,  -- then flag done received  
wait_on_service_done_low--then lower done_received  
); 
variable n_s : my_state; 
begin 
 
if ck = '1' and ck'event then   
    if reset = '1' then   
    n_s := wait_on_start;   
    c_request_service <= '0';   
    c_done_received <= '0';   
    ready <= '1';   
    else 
    
    case n_s is 
    
    when wait_on_start =>   
    if start = '1' then   
    n_s := wait_on_request_received;   
    c_request_service <= '1';   
    c_done_received <= '0';   
    ready <= '0'; 
    else   
    c_request_service <= '0';   
    c_done_received <= '0';   
    ready <= '1';   
    end if; 
    
    when wait_on_request_received =>   
    if c_request_received = '1' then   
    n_s := wait_on_request_received_low;   -- stop requesting   
    c_request_service <= '0';   
    c_done_received <= '0';   
    ready <= '0';   
    else -- keep requesting   
    c_request_service <= '1';   
    c_done_received <= '0';   
    ready <= '0';   
    end if; 
 
    when wait_on_request_received_low =>   
    if c_request_received = '0' then   
    n_s := wait_on_service_done;   
    c_request_service <= '0';   
    c_done_received <= '0';   
    ready <= '0';   
    else   
    c_request_service <= '0';   
    c_done_received <= '0';   
    ready <= '0';   
    end if; 
 
    when wait_on_service_done =>   
    if c_service_done = '1' then   
    n_s := wait_on_service_done_low;   
    c_request_service <= '0';   
    c_done_received <= '1';   
    ready <= '0';   
    else   
    c_request_service <= '0';   
    c_done_received <= '0';   
    ready <= '0';   
    end if; 
 
    when wait_on_service_done_low =>   
    if c_service_done = '0' then   
    n_s := wait_on_start;   
    c_request_service <= '0';   
    c_done_received <= '0';   
    ready <= '1';   
    else   
    c_request_service <= '0';   
    c_done_received <= '1';   
    ready <= '0';   
    end if;   
    end case;  
    end if; 
end if; 
end process; 
----------------------------------------- 
-- server (sync with capture and display) 
-- inputs:job_completed, 
-- request_service, service_done 
-- outputs: start_job 
-- request_received, service_done 
------------------------------------------ 
process(ck) 
type my_state is ( 
------------------------------------------------ 
--wait on client flag then action on transition 
------------------------------------------------  
wait_on_request_service, --> acknowledge request   
wait_on_request_service_low,-->lower ack_request  
wait_on_job_completed,     --> send service_done  
wait_on_done_received,    --> lower service_done  
wait_on_done_received_low);        --> no action   
variable n_s : my_state; 

begin 
 
if ck = '1' and ck'event then   
    if reset = '1' then   
    n_s :=  wait_on_request_service;   
    s_request_received <= '0';   
    s_service_done <= '0';   
    start_job <= '0';   
    else 
 
    case n_s is 
    when wait_on_request_service =>   
    if s_request_service = '1' then   
    n_s := wait_on_request_service_low;   
    s_request_received <= '1';   
    s_service_done <= '0';   
    start_job <= '0';   
    else   
    s_request_received <= '0';   
    s_service_done <= '0';   
    start_job <= '0';   
    end if; 
 
    when wait_on_request_service_low =>   
    if s_request_service = '0' then   
    n_s := wait_on_job_completed;   
    s_request_received <= '0';   
    s_service_done <= '0';   
    start_job <= '1';   
    else   
    s_request_received <= '1';   
    s_service_done <= '0';   
    start_job <= '0';   
    end if; 
 
    when wait_on_job_completed =>   
    if job_completed = '1' then   
    n_s := wait_on_done_received;   
    s_request_received <= '0'; 
    s_service_done <= '1';   
    start_job <= '0';   
    else   
    s_request_received <= '0';   
    s_service_done <= '0';   
    start_job <= '0';   
    end if; 
 
    when wait_on_done_received =>   
    if s_done_received = '1' then   
    n_s := wait_on_done_received_low;   
    s_request_received <= '0';   
    s_service_done <= '0';   
    start_job <= '0';   
    else   
    s_request_received <= '0';   
    s_service_done <= '1';   
    start_job <= '0';   
    end if; 
 
    when wait_on_done_received_low =>   
    if s_done_received = '0' then   
    n_s := wait_on_request_service;   
    s_request_received <= '0';   
    s_service_done <= '0';   
    start_job <= '0';   
    else   
    s_request_received <= '0';   
    s_service_done <= '0';   
    start_job <= '0';   
    end if;   
    end case;  
    end if; 
end if; 
end process; 
 
---------------------- 
-- Capture and display 
---------------------- 
process(ck) 
begin 
if ck = '1' and ck'event then  
    if reset = '1' then     
    d_in <= '0';    
    job_completed <= '0';  
    else    
    if start_job = '1' then      
    d_in <= s_data_in;      
    job_completed <= '1';    
    else      
    job_completed <= '0';   
    end if;  
    end if; 
end if; 
end process; 
 
------------------ 
-- display d_in 
------------------    
led(0) <= not d_in;   
led(1) <= d_in; 
 
end Behavioral;