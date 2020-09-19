library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.all;

entity freq_divider is
    Port ( Clk,reset : in  STD_LOGIC;    -- Horloge 50 Mhz et Reset Asynchrone
           clk1hz : out  STD_LOGIC);         -- Horloge 1 Hz
end freq_divider;
 
architecture div_arch of freq_divider is
 
-- Registre Horloge 50 MHz
signal count: integer:=1;
signal tmp : std_logic := '0';
 
begin
 
process(clk,reset)
begin
if(reset='1') then
count<=1;
tmp<='0';
elsif(clk'event and clk='1') then
count <=count+1;
if (count = 25000000) then
tmp <= NOT tmp;
count <= 1;
end if;
end if;
clk1hz <= tmp;
end process;
end div_arch;