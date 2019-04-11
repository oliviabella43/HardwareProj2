----------------------------------------------------------------------------------
-- Company: Marquette University
-- Engineer: Olivia Bellatin and Kevin Brosam
-- 
-- Create Date: 04/10/2019 04:12:08 PM
-- Design Name: 
-- Module Name: tb_thirtytwo_bit_adder - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description:  test bench for 32 bit full adder
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_thirtytwo_bit_adder is
--  Port ( );
end tb_thirtytwo_bit_adder;

architecture Behavioral of tb_thirtytwo_bit_adder is

--Component Declaration
component thirtytwo_bit_adder is
    Port(
            a,b: IN std_logic_vector(31 downto 0); -- inputs
            Cin: IN std_logic; 
            z: OUT std_logic_vector(31 downto 0); -- outputs
            Cout: OUT std_logic  
         ); 
end component;        

--Set Signals
signal a,b: std_logic_vector(31 downto 0) := (others => '0'); --inputs
signal Cin: std_logic := '0'; 
signal z: std_logic_vector(31 downto 0); --outputs
signal Cout: std_logic; 

begin

--Instantiation
test: thirtytwo_bit_adder port map (a=>a, b=>b, Cin=>Cin, z=>z, Cout=>Cout); 

--Simulation Process
simulation_process: process
begin
    wait for 100 ns;
        a<="00000000000000000000000000000110";
        b<="00000000000000000000000000001100";
    wait for 100 ns;
        a<="00000000000000000000000000001111";
        b<="00000000000000000000000000001100";
    wait for 100 ns;
        a<="00000000000000000000000000000110";
        b<="00000000000000000000000000000111";
    wait for 100 ns;
        a<="00000000000000000000000000000110";
        b<="00000000000000000000000000001110";
    wait for 100 ns;
        a<="00000000000000000000000000001111";
        b<="00000000000000000000000000001111";     
    wait;     
end process; 

end Behavioral;
