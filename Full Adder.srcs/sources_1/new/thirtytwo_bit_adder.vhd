----------------------------------------------------------------------------------
-- Company: Marquette University
-- Engineer: Olivia Bellatin and Kevin Brosam
-- 
-- Create Date: 04/09/2019 01:11:38 PM
-- Design Name: 
-- Module Name: thirtytwo_bit_adder - Behavioral
-- Project Name: Project 2
-- Target Devices: 
-- Tool Versions: 
-- Description: thirtytwo_bit_adder, this is the "top" file for the full adder 
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

--Unique declaration
entity thirtytwo_bit_adder is
    Port (
            a,b: IN std_logic_vector(31 downto 0);
            Cin: IN std_logic; 
            z: OUT std_logic_vector(31 downto 0); 
            Cout: OUT std_logic 
          );
end thirtytwo_bit_adder;

architecture Behavioral of thirtytwo_bit_adder is

--Set signals 
signal C1,C2,C3,C4,C5,C6,C7,C8,C9,C10,C11,C12,C13,C14,C15,C16,C17,C18,C19,C20,C21,C22,C23,C24,C25,C26,C27,C28,C29,C30,C31: std_logic; 

--Component declaration
component full_adder
    Port(
            x,y,Cin: IN std_logic; 
            sum, Cout: OUT std_logic 
        ); 
end component; 

--Inputs (truth table) 
begin
        FA0: full_adder port map(x=>a(0), y=>b(0), Cin =>Cin, sum=>z(0), Cout=>C1);
        FA1: full_adder port map(x=>a(1), y=>b(1), Cin =>C1, sum=>z(1), Cout=>C2);
        FA2: full_adder port map(x=>a(2), y=>b(2), Cin =>C2, sum=>z(2), Cout=>C3);
        FA3: full_adder port map(x=>a(3), y=>b(3), Cin =>C3, sum=>z(3), Cout=>C4);
        FA4: full_adder port map(x=>a(4), y=>b(4), Cin =>C4, sum=>z(4), Cout=>C5);
        FA5: full_adder port map(x=>a(5), y=>b(5), Cin =>C5, sum=>z(5), Cout=>C6);
        FA6: full_adder port map(x=>a(6), y=>b(6), Cin =>C6, sum=>z(6), Cout=>C7);
        FA7: full_adder port map(x=>a(7), y=>b(7), Cin =>C7, sum=>z(7), Cout=>C8);
        FA8: full_adder port map(x=>a(8), y=>b(8), Cin =>C8, sum=>z(8), Cout=>C9);
        FA9: full_adder port map(x=>a(9), y=>b(9), Cin =>C9, sum=>z(9), Cout=>C10);
        FA10: full_adder port map(x=>a(10), y=>b(10), Cin =>C10, sum=>z(10), Cout=>C11);
        FA11: full_adder port map(x=>a(11), y=>b(11), Cin =>C11, sum=>z(11), Cout=>C12);
        FA12: full_adder port map(x=>a(12), y=>b(12), Cin =>C12, sum=>z(12), Cout=>C13);
        FA13: full_adder port map(x=>a(13), y=>b(13), Cin =>C13, sum=>z(13), Cout=>C14);
        FA14: full_adder port map(x=>a(14), y=>b(14), Cin =>C14, sum=>z(14), Cout=>C15);
        FA15: full_adder port map(x=>a(15), y=>b(15), Cin =>C15, sum=>z(15), Cout=>C16);
        FA16: full_adder port map(x=>a(16), y=>b(16), Cin =>C16, sum=>z(16), Cout=>C17);
        FA17: full_adder port map(x=>a(17), y=>b(17), Cin =>C17, sum=>z(17), Cout=>C18);
        FA18: full_adder port map(x=>a(18), y=>b(18), Cin =>C18, sum=>z(18), Cout=>C19);
        FA19: full_adder port map(x=>a(19), y=>b(19), Cin =>C19, sum=>z(19), Cout=>C20);
        FA20: full_adder port map(x=>a(20), y=>b(20), Cin =>C20, sum=>z(20), Cout=>C21);
        FA21: full_adder port map(x=>a(21), y=>b(21), Cin =>C21, sum=>z(21), Cout=>C22);
        FA22: full_adder port map(x=>a(22), y=>b(22), Cin =>C22, sum=>z(22), Cout=>C23);
        FA23: full_adder port map(x=>a(23), y=>b(23), Cin =>C23, sum=>z(23), Cout=>C24);
        FA24: full_adder port map(x=>a(24), y=>b(24), Cin =>C24, sum=>z(24), Cout=>C25);
        FA25: full_adder port map(x=>a(25), y=>b(25), Cin =>C25, sum=>z(25), Cout=>C26);
        FA26: full_adder port map(x=>a(26), y=>b(26), Cin =>C26, sum=>z(26), Cout=>C27);
        FA27: full_adder port map(x=>a(27), y=>b(27), Cin =>C27, sum=>z(27), Cout=>C28);
        FA28: full_adder port map(x=>a(28), y=>b(28), Cin =>C28, sum=>z(28), Cout=>C29);
        FA29: full_adder port map(x=>a(29), y=>b(29), Cin =>C29, sum=>z(29), Cout=>C30);
        FA30: full_adder port map(x=>a(30), y=>b(30), Cin =>C30, sum=>z(30), Cout=>C31);           
        FA31: full_adder port map(x=>a(31), y=>b(31), Cin =>C31, sum=>z(31), Cout=>Cout);
end Behavioral;
