
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity counter is
   port(
 	 Clk_1hz,in_freq_anemometre,raz_n: in std_logic;
 	 Nbr_front: out std_logic_vector(7 downto 0));
end counter;
 
architecture bcd of counter is
signal temp : std_logic_vector ( 7 downto 0);
signal temp1 : std_logic_vector ( 7 downto 0);
signal temp2 : std_logic_vector ( 7 downto 0);
begin  
   process(Clk_1hz,in_freq_anemometre,raz_n) begin
	   if raz_n = '0' then
	       temp<= (others=>'0');
	  elsif(in_freq_anemometre = '1' and in_freq_anemometre'event)then
      if(Clk_1hz = '1')then
	        temp <= temp + 1;
	     else temp <= (others => '0');
         end if;
      end if;
     
   end process;
    process(Clk_1hz,raz_n) begin
	   if raz_n = '0' then
	       temp2<= (others=>'0');
	  elsif(falling_edge(in_freq_anemometre) )then
      if(Clk_1hz = '1')then
	        temp2 <= temp2 + 1;
	     else temp2 <= (others => '0');
         end if;
      end if;
     
   end process;
   process(Clk_1hz,raz_n) begin
   if raz_n= '0' then
	       temp1<= (others=>'0');
	elsif (falling_edge(clk_1hz))then
          temp1 <= temp+temp2;
          end if;
   end process;
   Nbr_front <= temp1;
end bcd;