library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity gestion_compas is
port (
        in_pwm_compas                               : in std_logic;
 		clk, chipselect, write_n, reset_n, address	: in std_logic;			                             
		writedata 									: in std_logic_vector (31 downto 0);
		readdata 									: out std_logic_vector (31 downto 0)
);
end entity;
architecture arch of gestion_compas is
    signal clk_10K,fin_mesure : std_logic;
    signal sig_duree, data_compas : std_logic_vector(8 downto 0);
    TYPE   State_type IS (init, cont, mono,acq);
    SIGNAL State : State_Type;
    signal tmp1  : std_logic;
    signal tmp2  : std_logic_vector(8 downto 0);
    signal config : std_logic_vector(2 downto 0);
	signal start_stop, raz_n, continu : std_logic;
	signal  data_valid: std_logic;
begin
	gene_10K: process(clk,raz_n)
	variable count : integer range 0 to 2500;	
	BEGIN
		if raz_n= '0' then
			count:=0; clk_10K <= '0';
		elsif rising_edge(clk) then
			count:= count +1;
			if count =  2499 then
				clk_10K <= not clk_10K;
				count:= 0;
			end if;
		end if;
	end process gene_10K;


	duree_etat_haut: process(clk_10K,raz_n)	
	BEGIN
		if raz_n= '0' then
		    sig_duree <= "000000000";	
		elsif rising_edge(clk_10K) then
				if in_pwm_compas = '1' then
				    sig_duree <= sig_duree + "000000001";
			    else sig_duree <= "000000000";
			end if;
		end if;	
	end process duree_etat_haut;

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
                        tmp2 <= sig_duree;
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
                        tmp2 <= sig_duree;
                    when others =>
                        state <= init;
                end case;
            end if;
        end process;
data_compas <= tmp2;
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
readdata <= X"0000000"&'0'&config when address = '0' else X"00000"&"00"&data_valid&data_compas;
end arch;