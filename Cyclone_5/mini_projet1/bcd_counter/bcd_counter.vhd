
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity bcd_counter is
   port( --Clock_enable: in std_logic;
 	 Clock: in std_logic;
 	 Output: out std_logic_vector(3 downto 0));
end bcd_counter;
 
architecture bcd of bcd_counter is
   signal temp: std_logic_vector(3 downto 0);
begin   
   process(Clock) begin
	    if temp="1010" then
	       temp<="0000";
		elsif(Clock = '1'  and Clock'event)then
	    temp <= temp + 1;
         end if;
   end process;
   Output <= temp;
end bcd;