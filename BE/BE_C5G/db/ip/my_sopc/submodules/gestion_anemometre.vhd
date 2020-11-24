library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;
entity gestion_anemometre is
	port (
			clk, chipselect, write_n, reset_n, address	: in std_logic;			                             
			in_freq_anemometre                  : in std_logic;
			writedata 									: in std_logic_vector (31 downto 0);
			readdata 									: out std_logic_vector (31 downto 0)
		);
end entity;

architecture arch of gestion_anemometre is
    signal count : integer:=1;
    signal tmp   : std_logic := '0';
    signal temp  : std_logic_vector ( 7 downto 0);
    signal temp1 : std_logic_vector ( 7 downto 0);
    signal temp2 : std_logic_vector ( 7 downto 0);
    signal clk_1hz : std_logic;
	  signal nbr_front : std_logic_vector(7 downto 0);
    TYPE   State_type IS (init, cont, mono,acq);
    SIGNAL State : State_Type;
    signal tmp1  : std_logic;
    signal tmp2  : std_logic_vector(7 downto 0);
    signal config : std_logic_vector(2 downto 0);
	  --signal code : std_logic_vector(8 downto 0);
	  signal start_stop : std_logic;
	  signal raz_n : std_logic;
	  signal continu : std_logic;
	  signal data_anemometre	: std_logic_vector(7 downto 0);
	  signal	data_valid : std_logic;
begin
-------------------------------------------------process diviseur de frequence-----------------------

process(clk,raz_n)
begin
if(raz_n='0') then
count<=1;
tmp<='0';
elsif(clk'event and clk='1') then
count <=count+1;
if (count = 25000000) then
tmp <= NOT tmp;
count <= 1;
end if;
end if;
end process;
clk_1hz <= tmp;
-------------------------------------------------process compteur-----------------------------------
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
 ------------------------------------------------process machine à états----------------------------
 process(raz_n,clk)
        begin
            if (raz_n='0') then
                tmp1 <='0';
                tmp2 <=(others=> '0');
                state <=init;
            elsif rising_edge(clk)then
                case state is
                    when init =>
                        if (continu='1') then
                            state <= cont;
                        else
                            state <= mono;
                        end if;
                    when cont =>
								  if (continu='0') then
                            state <= mono;
                        end if;
								tmp1 <= '1';
                        tmp2 <= nbr_front;
                    when mono =>
                        if (continu='1') then
                            state <= cont;
                        elsif(start_stop= '1')then
                           state <= acq;
                        end if;
                            tmp2 <=(others=> '0');
                            tmp1 <= '0';
                    when acq =>
                        if (start_stop= '0')then
                           state <= mono;
                        end if;
                        tmp1 <= '1'; 
                        tmp2 <= nbr_front;
                    when others =>
                        state <= init;
                end case;
            end if;
        end process;
Data_anemometre <= tmp2;
data_valid <= tmp1;
-------------------------------------------------process ecriture avalon----------------------------
raz_n <= config(0);
continu <= config(1);
start_stop <= config(2);

registers: process (clk, reset_n)
begin
  if reset_n = '0' then
  config <= (others => '0');
  elsif clk'event and clk = '1' then
    if chipselect ='1' and write_n = '0' then
      if address = '0' then
      config <= (writedata (2 downto 0));
      end if;
    end if;
  end if;
end process registers;
readdata <= X"0000000"&'0'&config when address = '0' else X"00000"&"000"&data_valid&data_anemometre;

end arch;