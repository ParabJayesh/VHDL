library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity fbit_adder is
port
(
	a,b : in std_logic_vector(3 downto 0);
	cin : in std_logic:='0';
	sout : out std_logic_vector(3 downto 0);
	cout : out std_logic
);
end fbit_adder;
architecture fbit_adder_arch of fbit_adder is
component full_adder is 
port
(
	a,b,cin : in std_logic;
	sout,cout : out std_logic
);
end component;
signal c0 ,c1,c2:std_logic:= '0';
begin
f0 : full_adder port map(a(0),b(0),cin,sout(0),c0);
f1 : full_adder port map(a(1),b(1),c0,sout(1),c1);
f2 : full_adder port map(a(2),b(2),c1,sout(2),c2);
f3 : full_adder port map(a(3),b(3),c2,sout(3),cout);
end architecture;

