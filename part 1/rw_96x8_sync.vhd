library IEEE;
use IEEE.std_logic_1164.all;

entity rw_96x8_sync is
   port(address	: in std_logic_vector(7 downto 0);
	data_in	: in std_logic_vector(7 downto 0);
	write	: in std_logic;
	clock	: in std_logic;
	data_out: out std_logic_vector(7 downto 0));
end entity; 

architecture rw_96x8_sync_arch of rw_96x8_sync is 

begin 

end architecture;
