library IEEE;
use IEEE.std_logic_1164.all;

entity rom_128x8_sync is
   port(address	: in std_logic_vector(7 downto 0);
	clock	: in std_logic;
	data_out: out std_logic_vector(7 downto 0));
end entity;

architecture rom_128x8_sync_arch of rom_128x8_sync is 

begin 


end architecture;