----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Olivia Bellatin and Kevin Brosam
-- 
-- Create Date: 04/15/2019 09:25:22 PM
-- Design Name: 
-- Module Name: ALUOp - Behavioral
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


entity ALUOp is
  Port ( 
        OPC: in std_logic_vector(2 downto 0);
        ALUOP: out std_logic_vector(1 downto 0);
        Funct1: out std_logic  
        );
end ALUOp;

architecture Behavioral of ALUOp is

begin
    
    with OPC select ALUOP <=
        "00" when "000", --and
        "01" when "001", --or
        "10" when "010", --and
        "11" when others; --sub and slt
        
    with OPC select Fucnt1 <=
        "0" when "000", --and
        "0" when "001", --or
        "0" when "010", --and
        "1" when others; --sub and slt
        
end Behavioral;
