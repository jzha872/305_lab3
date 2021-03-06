library IEEE;
use IEEE.std_logic_1164.all;
USE IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all; 
entity fbitcounter is
 	port (Clk: in STD_LOGIC;
	digit: in std_logic_vector(3 downto 0);
 	Q : out  std_logic_vector(7 downto 0));
 end entity fbitcounter;

 architecture behaviour of fbitcounter is

 begin
	
 	process (Clk)
	case digit is 
 		when "0000" =>  Q<=  "00000011"; 
		when "0001" =>  Q<=  "10011111";
		when "0010" =>  Q<=  "00100101";    
		when "0011" =>  Q<=  "00001101";    
		when "0100" =>  Q<=  "10011001";    
		when "0101" =>  Q<=  "01001001";    
		when "0110" =>  Q<=  "01000001";  
		when "0111" =>  Q<=  "00011111";    
		when "1000" =>  Q<=  "00000001";     
		when "1001" =>  Q<=  "00001001";    
		when others  =>   Q<=  "00001001";	
 	end process;
 end architecture behaviour;