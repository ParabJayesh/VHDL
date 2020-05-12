library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
entity half_adder is
port
(
a,b : in std_logic;
sout,cout : out std_logic
);
end half_adder;
architecture halfadder_arch of half_adder is
begin
sout <= a xor b;
cout <= a and b;
end halfadder_arch;