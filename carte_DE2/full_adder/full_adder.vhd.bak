----------------------------------------
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
----------------------------------------
ENTITY full_adder IS
PORT(a,b,cin : IN std_logic;
     sum,cout : OUT std_logic);
END full_adder;
----------------------------------------
ARCHITECTURE sum OF full_adder IS
BEGIN
 cout <= (a AND b) OR (b AND cin) OR (cin AND a); 
 sum  <= a XOR b XOR cin;
 END sum;
