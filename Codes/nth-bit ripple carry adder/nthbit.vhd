library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity nthbit is
generic(m : natural := 4);
port(
		a1,b1 : in std_logic_vector(m-1 downto 0);
		s : out std_logic_vector(m-1 downto 0);
		cout1 : out std_logic
	);
end entity;

architecture nthbit_arch of nthbit is
component full_adder is
port
(
	a,b,cin : in std_logic;
	sout,cout : out std_logic
);
end component;
signal carry : std_logic_vector(m downto 0);
begin
	fa : full_adder port map(a1(0),b1(0),'0',s(0),carry(0));
	fai : for i in 1 to m-1 generate
		fai : full_adder port map(a1(i),b1(i),carry(i-1),s(i),carry(i));
	end generate;
	cout1 <= carry(m-1);
end architecture;
