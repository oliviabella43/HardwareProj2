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

entity three_in_mux is  --actually is a four input mux
  Port (
        SEL : in std_logic_vector(1 downto 0);
        A : in std_logic;
        B : in std_logic;
        C : in std_logic;
        D : in std_logic;
        X : out std_logic
        );
end three_in_mux;

architecture Behavioral of three_in_mux is

begin
    
    with SEL select X <=
        A when "00",
        B when "01",
        C when "10",
        D when "11";

end Behavioral;
