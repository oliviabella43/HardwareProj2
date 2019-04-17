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
        aluop: in std_logic_vector(1 downto 0);
        funct: in std_logic_vector(5 downto 0);
        Ainv: out std_logic;
        Binv: out std_logic;
        AOp: out std_logic_vector(1 downto 0) 
        );
end ALUOp;

architecture Behavioral of ALUOp is

begin
    
    with aluop select AOp <=
        "00" when "00", 
        "01" when "01", 
        "10" when "10", --Rtype instructions
        "11" when "11";
        
    with funct select Binv <=
        '0' when "100000", --and
        '1' when "100010", --sub
        '0' when "100100", --and
        '0' when "100101", --or
        '1' when "101010"; --slt
        
    with funct select Ainv <= --Do not need Ainv for any current functionality
        '0' when others;
        
     --add '100000'=32 funct Rtype
     --sub '100010'=34 funct Rtype
     --and '100100'=40 funct Rtype
     --or  '100101'=35 funct Rtype
     --slt '101010'=42 funct Rtype 
        
end Behavioral;
