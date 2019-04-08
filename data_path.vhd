library IEEE;
use IEEE.std_logic_1164.all;

entity data_path is 
   port(clock	    : in std_logic;
	reset	    : in std_logic;
	IR	    : out std_logic_vector(7 downto 0);
	CCR_Result  : out std_logic_vector(3 downto 0);
	IR_Load	    : in std_logic;
	MAR_Load    : in std_logic;
	PC_Load	    : in std_logic;
	PC_Inc	    : in std_logic;
	A_Load	    : in std_logic;
	B_Load	    : in std_logic;
	ALU_Sel	    : in std_logic_vector(2 downto 0);
	CCR_Load    : in std_logic;
	Bus2_Sel    : in std_logic_vector(1 downto 0);
	Bus1_Sel    : in std_logic_vector(1 downto 0);
	address	    : out std_logic_vector(7 downto 0);
	to_memory   : out std_logic_vector(7 downto 0);
	from_memory : in std_logic_vector(7 downto 0));
end entity;

architecture data_path_arch of data_path is 

component alu  
   port(A, B	   : in std_logic_vector(7 downto 0);
	ALU_Sel	   : in std_logic_vector(2 downto 0);
	NZVC	   : out std_logic_vector(3 downto 0);
	ALU_Result : out std_logic_vector(7 downto 0));
end component;

signal A, B, ALU_Result	: std_logic_vector(7 downto 0);
signal NZVC : std_logic_vector(3 downto 0);

begin 

ALU_1 : alu
   port map(A => A,
	    B => B,
	    ALU_Sel => ALU_Sel,
	    NZVC => NZVC,
	    ALU_Result => ALU_Result);

end architecture;