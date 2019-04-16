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
    
    with INSTRU select ALUOp <=
        "010" when "100000", --add
        "110" when "100010", --sub
        "000" when "100100", --and
        "001" when "100101", --or
        "111" when "101010"; --slt

end Behavioral;
