LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY pwm IS
PORT( clk : IN std_logic;
      dutty_cycle : IN std_logic_vector(8 downto 0);
      pwm,masse : OUT std_logic);
END pwm;


ARCHITECTURE behavioral OF pwm IS

signal counter : std_logic_vector(8 downto 0) :=(others =>'0');
begin
   process(clk)
     begin
         if rising_edge(clk)
           then
             counter <= counter + 1;
         end if;
     end process;
     pwm <= '1' when counter < dutty_cycle else '0';
     masse <= '0';
 end behavioral;