----------------------------------------------------------------------------------
-- Company: Marquette University 
-- Engineer: Olivia Bellatin and Kevin Brosam
-- 
-- Create Date: 04/09/2019 01:11:38 PM
-- Design Name: 
-- Module Name: full_adder - Behavioral
-- Project Name: Project 2
-- Target Devices: 
-- Tool Versions: 
-- Description: full adder functional
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


entity full_adder is
    Port (
            x,y,Cin: in std_logic;
            sum,Cout: out std_logic
         );
end full_adder;

architecture Behavioral of full_adder is
begin
        sum <= (x XOR y) XOR Cin; 
        Cout <= (x XOR y) OR (x AND Cin) OR (y AND Cin); 
end Behavioral;
