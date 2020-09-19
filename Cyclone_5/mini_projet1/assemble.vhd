library ieee;
Use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity assemble is
	port(
		-- entree
		Clk 		: in std_logic;
		reset		: in std_logic;
		-- sortie
		segments		: out std_logic_vector(6 downto 0)
	);
end assemble;
	
architecture arch of assemble is
  signal tmp : std_logic := '0';
  signal temp: std_logic_vector(3 downto 0);
	
component freq_divider is
    Port ( Clk,reset : in  STD_LOGIC;    -- Horloge 50 Mhz et Reset Asynchrone
           clk1hz : out  STD_LOGIC);         -- Horloge 1 Hz
end component;

component bcd_counter is
   port( --Clock_enable: in std_logic;
 	 Clock: in std_logic;
 	 Output: out std_logic_vector(3 downto 0));
end component;

component sev_seg is
   port (
      bcd: in STD_LOGIC_VECTOR (3 downto 0);
      segment: out STD_LOGIC_VECTOR (6 downto 0)
         );
end component;
begin
	diviseur : freq_divider
	port map(Clk => Clk, reset => reset, clk1hz => tmp);
	counter : bcd_counter
	port map(Clock => tmp, output => temp );
	sev_seg0 : sev_seg
	port map(bcd => temp, segment => segments );
	

end arch;