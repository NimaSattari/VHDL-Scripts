library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity moore_tavaly is
  port (reset,clock,input : in std_logic;
    output : out std_logic);
end moore_tavaly;

architecture behavior of moore_tavaly is
  type state_type is (s0,s1,s2,s3,s4,s5,s6,s7,s8);
  signal state , next_state : state_type;
begin

state_register : process( clock , reset)
begin
  if reset = '0' then
    state <= s0;
    --output <= '0';
  elsif clock'event and clock = '1' then 
    state <= next_state;
  end if;

end process state_register;

state_logic : process( state,input )
begin
  case state is
------------------------- 42 = 0 0 1 0 1 0 1 0
  when s0 =>        --0
    output <= '0';
    if (input = '0') then 
      next_state <= s1;
    elsif (input = '1') then
      next_state <= s0;
    end if;

  when s1 =>         --0
    output <= '0';
    if (input = '0') then 
      next_state <= s2;
    elsif (input = '1') then
      next_state <= s0;
    end if;
  when s2 => --1
    output <= '0';
    if (input = '1') then 
      next_state <= s3;
    elsif (input = '0') then
      next_state <= s0;
    end if;
  when s3 => --0
    output <= '0';
    if (input = '0') then 
      next_state <= s4;
    elsif (input = '1') then
      next_state <= s0;
    end if;
  when s4 => --1
    output <= '0';
    if (input = '1') then 
      next_state <= s5;
    elsif (input = '0') then
      next_state <= s0;
    end if;
  when s5 => --0
    output <= '0';
    if (input = '0') then 
      next_state <= s6;
    elsif (input = '1') then
      next_state <= s0;
    end if;
  when s6 => --1
    output <= '0';
    if (input = '1') then 
      next_state <= s7;
    elsif (input = '0') then
      next_state <= s0;
    end if;
  when s7 => --0
    output <= '0';
    if (input = '0') then 
      next_state <= s8;
    elsif (input = '1') then
      next_state <= s0;
    end if;
  when s8 => --ok
    output <= '1';
    next_state <= s0;
  end case;
end process state_logic;

end behavior;