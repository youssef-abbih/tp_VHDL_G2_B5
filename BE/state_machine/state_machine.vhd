library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use ieee.numeric_std.all;
entity state_machine is
      port(
           continu, start_stop,clk_50M, raz_n: in std_logic;
           data_valid : out std_logic;
           nbr_front : in std_logic_vector(7 downto 0);
           Data_anemometre : out std_logic_vector(7 downto 0)         
           );
end state_machine;
architecture arch of state_machine is
    TYPE State_type IS (init, cont, mono,acq);
    SIGNAL State : State_Type;
    signal temp1: std_logic;
    signal temp2 : std_logic_vector(7 downto 0);
    begin

        process(raz_n,clk_50M)
        begin
            if (raz_n='0') then
                temp1 <='0';
                temp2 <=(others=> '0');
                state <=init;
            elsif rising_edge(clk_50M)then
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
								temp1 <= '1';
                        temp2 <= nbr_front;
                    when mono =>
                        if (continu='1') then
                            state <= cont;
                        elsif(start_stop= '1')then
                           state <= acq;
                        end if;
                            temp2 <=(others=> '0');
                            temp1 <= '0';
                    when acq =>
                        if (start_stop= '0')then
                           state <= mono;
                        end if;
                        temp1 <= '1'; 
                        temp2 <= nbr_front;
                    when others =>
                        state <= init;
                end case;
            end if;
        end process;
    Data_anemometre <= temp2;
    data_valid <= temp1;
end arch;