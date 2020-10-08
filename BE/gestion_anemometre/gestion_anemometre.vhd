
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.all;

entity gestion_anemometre is
	
    Port ( Clk_50M,raz_n,continu, start_stop,in_freq_anemometre : in  STD_LOGIC;    -- Horloge 50 Mhz et Reset Asynchrone
           data_valid : out std_logic;
           Data_anemometre : out std_logic_vector(7 downto 0));
			 
end gestion_anemometre;
architecture arch of gestion_anemometre is
signal Clk_1hz :std_logic;
signal Nbr_front :std_logic_vector(7 downto 0);
component freq_divider 
    Port ( Clk_50M,raz_n : in  STD_LOGIC;    -- Horloge 50 Mhz et Reset Asynchrone
           clk_1hz : out  STD_LOGIC);         -- Horloge 1 Hz
end component;
component counter 
   port( --Clock_enable: in std_logic;
 	 clk_1hz,in_freq_anemometre,raz_n : in std_logic;
	 
 	 Nbr_front: out std_logic_vector(7 downto 0));
end component;
component state_machine is
      port(
           continu, start_stop, raz_n: in std_logic;
           data_valid : out std_logic;
           nbr_front : in std_logic_vector(7 downto 0);
           Data_anemometre : out std_logic_vector(7 downto 0)         
           );
end component;

begin
	
	divider : freq_divider 
	port map(Clk_50M=>Clk_50M, raz_n=>raz_n, clk_1hz => Clk_1hz);
	
	counter0 : counter
	port map( clk_1hz=>Clk_1hz,raz_n=>raz_n,in_freq_anemometre=>in_freq_anemometre,Nbr_front=> Nbr_front);
	mae :state_machine
	port map(continu=>continu,start_stop=>start_stop,raz_n=>raz_n,nbr_front=>Nbr_front,data_valid=>data_valid,Data_anemometre=>Data_anemometre);
	end arch;