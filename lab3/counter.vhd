library IEEE;
use IEEE.std_logic_1164.all;   
use IEEE.std_logic_unsigned.all;


entity counter is 
port (Clk, direction, enable,reset : in std_logic;
	A, B : out std_logic_vector(3 downto 0));
end entity counter;

architecture structural of counter is
component BCDcounter is

port (Clk, direction, enable,init : in std_logic;
Q : out std_logic_vector(3 downto 0));

end component BCDcounter;

signal S1: std_logic_vector (3 downto 0);
signal tens_enable: std_logic;

begin 
ones: BCDcounter port map (Clk => Clk, direction => direction, enable => enable, init => reset, Q => S1);
tens: BCDcounter port map (Clk => Clk, direction => direction, enable => tens_enable, init => reset, Q => B);

tens_enable <= '1' when (S1 = "1001") else '0';
A <= S1;

end architecture structural;