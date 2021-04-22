library IEEE;
use IEEE.std_logic_1164.all;
USE IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all; 

entity tbitcounter is
 	port (Clk: in STD_LOGIC;
	digit: in std_logic_vector(1 downto 0);
 	Q : out  std_logic_vector(7 downto 0));
 end entity tbitcounter;

architecture behaviour of tbitcounter is

 begin
	
 	process (Clk)
	case digit is 
 		when "00" =>  Q<=  "00000011"; 
		when "01" =>  Q<=  "10011111";
		when "10" =>  Q<=  "00100101";    
		when "11"=>   Q<=  "00001101";       
		when others  =>   Q<=  "00001101";  	
 	end process;
 end architecture behaviour;