library IEEE;
use IEEE.std_logic_1164.all;

entity sev_seg is
port (
bcd: in STD_LOGIC_VECTOR (3 downto 0);
segment: out STD_LOGIC_VECTOR (6 downto 0)
);
end sev_seg;

architecture seg_7 of sev_seg is
begin
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

end seg_7;
