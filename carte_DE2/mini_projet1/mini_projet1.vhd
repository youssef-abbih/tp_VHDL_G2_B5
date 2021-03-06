 ----------------------------library------------------------------------------------ 
  library IEEE;
  use IEEE.std_logic_1164.all;
  use IEEE.STD_LOGIC_ARITH.ALL;
  use IEEE.STD_LOGIC_UNSIGNED.ALL;
  use ieee.numeric_std.all;
-----------------------------------entity----------------------------------------
  entity mini_projet1 is
    Port ( Clk,reset : in  STD_LOGIC;    -- Horloge 50 Mhz et Reset Asynchrone
           segment: out STD_LOGIC_VECTOR (6 downto 0));   -- afficheur 7 segment
  end mini_projet1;
-----------------------------------ARCHITECTURE---------------------------------
architecture arch of mini_projet1 is

  signal count: integer:=1;
  signal tmp : std_logic := '0';
  signal clk1hz : std_logic;
  signal temp: std_logic_vector(3 downto 0);
  signal bcd : std_logic_vector(3 downto 0);

  begin
-----------------------DIVISEUR DE FREQUENCES---------------------------------
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
    end process;
    clk1hz <= tmp;
  ---------------------------BCD COUNTER----------------------------------------
   process(Clk1hz)
     begin
        if temp="1010" then
           temp<="0000";
    	elsif(Clk1hz = '1'  and Clk1hz'event)then
        temp <= temp + 1;
           end if;
     end process;
   bcd <= temp;
   ----------------------7 SEGMENTS DISPLAY-------------------------------------
   process(bcd)
     begin
       case bcd is
         when "0000"=>segment<="1000000";
         when "0001"=>segment<="1111001";
         when "0010"=>segment<="0100100";
         when "0011"=>segment<="0110000";
         when "0100"=>segment<="0011001";
         when "0101"=>segment<="0010010";
         when "0110"=>segment<="0000010";
         when "0111"=>segment<="1111000";
         when "1000"=>segment<="0000000";
         when "1001"=>segment<="0010000";
         when others => segment<="0000110";
     end case;
   end process;
end arch;