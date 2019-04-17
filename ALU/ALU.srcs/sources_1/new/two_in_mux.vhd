----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Olvia Bellatin and Kevin Brosam
-- 
-- Create Date: 04/12/2019 03:39:44 PM
-- Design Name: 
-- Module Name: 2InMux - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
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


entity two_in_mux is
  Port ( 
        SEL : in std_logic;
        A : in std_logic;
        B : in std_logic;
        C : out std_logic
        );
end two_in_mux;

architecture Behavioral of two_in_mux is

begin
    
    C <= (A AND NOT SEL) OR (B AND SEL);

end Behavioral;
