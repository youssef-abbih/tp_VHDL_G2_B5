library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.all;

entity freq_divider is
    Port ( Clk_50M,raz_n : in  STD_LOGIC;    -- Horloge 50 Mhz et Reset Asynchrone
           clk_1hz : out  STD_LOGIC);         -- Horloge 1 Hz
end freq_divider;
 
architecture div_arch of freq_divider is
 
-- Registre Horloge 50 MHz
signal count: integer:=1;
signal tmp : std_logic := '0';
 
begin
 
process(Clk_50M,raz_n)
begin
if(raz_n='0') then
count<=1;
tmp<='0';
elsif(Clk_50M'event and Clk_50M='1') then
count <=count+1;
if (count = 25) then
tmp <= NOT tmp;
count <= 1;
end if;
end if;
clk_1hz <= tmp;
end process;
end div_arch;
