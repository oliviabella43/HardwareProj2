----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Olivia Bellatin and Kevin Brosam
-- 
-- Create Date: 04/14/2019 12:54:33 PM
-- Design Name: 
-- Module Name: 3InMux - Behavioral
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

entity three_in_mux is
  Port (
        SEL : in std_logic_vector(1 downto 0);
        A : in std_logic;
        B : in std_logic;
        C : in std_logic;
        X : out std_logic
        );
end three_in_mux;

architecture Behavioral of three_in_mux is

begin
    
    X <= A when (SEL='00');
    X <= B when (SEL='01');
    X <= C when (SEL='10');

end Behavioral;
