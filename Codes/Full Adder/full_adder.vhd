library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity full_adder is
port
(
	a,b,cin : in std_logic;
	sout,cout : out std_logic
);
end full_adder;
architecture full_adder_arch of full_adder is
signal s1,s2,s3: std_logic;
begin
	s1 <= a and b;
	s2 <= a and cin;
	s3 <= b and cin;
	cout <= s1 or s2 or s3;
	sout <= a xor b xor cin; 
	end full_adder_arch;