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
        ALUOp: out std_logic_vector(2 downto 0);
        MemWrite: out std_logic;
        ALUsrc: out std_logic;
        RegWrite: out std_logic        
        );
end ControlUnit;

architecture Behavioral of ControlUnit is

begin
    --Uses funct not op code, op code for these is '000000' for R type
    with INSTRU select ALUOp <=
        "010" when "100000", --add
        "110" when "100010", --sub
        "000" when "100100", --and
        "001" when "100101", --or
        "111" when "101010"; --slt
        
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
