-- Testbench for the counter.
library IEEE;
use IEEE.std_logic_1164.all;
USE IEEE.std_logic_arith.all;
use IEEE.numeric_std.all; 
entity test_counter is
end entity test_counter;
architecture my_test of test_counter is
 signal t_clk, t_reset, t_enable,t_direction : STD_LOGIC;
 signal t_A, t_B : std_logic_vector(3 downto 0);
 component counter is
 port (Clk, reset, enable, direction: in STD_LOGIC;
 A, B : out  std_logic_vector(3 downto 0));
 end component;
begin
 DUT: counter port map (t_clk, t_reset, t_enable,t_direction, t_A, t_B);
 -- Initialization process (code that executes only once).
 init: process
 begin
 -- reset pulse
 t_reset <= '1', '0' after 12 ns, '1' after 600 ns, '0' after 612 ns;
 t_Enable <= '1', '0' after 200 ns, '1' after 400 ns;
 t_direction <= '1';
 wait;
 end process init;
 -- clock generation
 clk_gen: process
 begin
 t_clk <= '1';
 wait for 5 ns;
 t_clk <= '0';
 wait for 5 ns;
 end process clk_gen;
end architecture my_test;