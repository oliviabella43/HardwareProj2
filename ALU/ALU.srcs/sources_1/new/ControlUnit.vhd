----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Olivia Bellatin and Kevin Brosam
-- 
-- Create Date: 04/15/2019 09:16:47 PM
-- Design Name: 
-- Module Name: ControlUnit - Behavioral
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

entity ControlUnit is
  Port ( 
        INSTRU: in std_logic_vector(5 downto 0);
        jump: out std_logic;
        branch: out std_logic;
        MemRead: out std_logic;
        MemtoReg: out std_logic;
        ALUOp: out std_logic_vector(1 downto 0);
        MemWrite: out std_logic;
        ALUsrc: out std_logic;
        RegWrite: out std_logic        
        );
end ControlUnit;

architecture Behavioral of ControlUnit is

begin

    with INSTRU select ALUOp <=
        "10" when "000000"; --Rtype Instructions       
        
        
        
     --add '100000'=32 funct Rtype
     --sub '100010'=34 funct Rtype
     --and '100100'=40 funct Rtype
     --or  '100101'=35 funct Rtype
     --slt '101010'=42 funct Rtype   
     --lw '100011'=35 op Itype
     --sw '1010011'=43 op Itype
     --addi '001000'=8 op Itype
     --beq '000100'=4 op Itype
     --lui '001111'=15 op Itype
     --ori '001101'=13 op Itype
     --sll '000000'=0 funct and 0 op Rtype, uses shift amount
     --srl '000010'=2 funct and 0 op Rtype, uses shift amount
     --jr  '001000'=8 funct and 0 op Rtype, uses PC-R(rs)
     --jal '000011'=3 op Jtype, R[31]=PC+8;PC=JumpAddr
     
     
     
end Behavioral;
