----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Olvia Bellatin and Kevin Brosam
-- 
-- Create Date: 04/14/2019 01:09:18 PM
-- Design Name: 
-- Module Name: alu - Behavioral
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

entity alu is
    Port ( 
          a,b: in std_logic;
          cin: in std_logic;
          ALUopc: in std_logic_vector(1 downto 0);
          funct: in std_logic_vector(5 downto 0);
          cout: out std_logic;
          overflow: out std_logic;
          set: out std_logic;
          res: out std_logic
          );
end alu;

architecture Behavioral of alu is

    signal R0,R1,R2,R3,Ainverter,Binverter: std_logic;
    signal nota, notb: std_logic;
    signal ALUControlAinvBit, ALUControlBinvBit: std_logic;
    signal ALUControlOpCode: std_logic_vector(1 downto 0);

    component ALUOp
        Port(
             aluop: in std_logic_vector(1 downto 0);
             funct: in std_logic_vector(5 downto 0);
             Ainv: out std_logic;
             Binv: out std_logic;
             AOp: out std_logic_vector(1 downto 0)
             );
    end component;

    component three_in_mux
        Port(
             A,B,C,D: in std_logic;
             SEL: in std_logic_vector(1 downto 0);
             X: out std_logic
            );
     end component;
    
     component two_in_mux
        Port(
             SEL : in std_logic;
             A : in std_logic;
             B : in std_logic;
             X : out std_logic
             );
     end component;
     
     component full_adder
        Port(
            x,y,Cin: IN std_logic; 
            sum, Cout: OUT std_logic 
            );
     end component;
     
begin
   
   
   
   R0 <= Ainverter AND Binverter;  --Output from Mux saying if A is inverted
   R1 <= Ainverter OR Binverter;   --Output from Mux saying if B is inverted
   FA: full_adder port map(x=>Ainverter, y=>Binverter, Cin=>cin, Cout=>cout, sum=>R2);
   R3 <= '0';  --LSB? helps us determine overflow
   
   MUX3: three_in_mux port map(A=>R0, B=>R1, C=>R2, D=>R3, SEL=>ALUControlOpCode, X=>res);
   
   nota <= NOT a;
   notb <= NOT b;
   Ainv: two_in_mux port map(A=>a, B=>nota, SEL=>ALUControlAinvBit, X=>Ainverter);
   Binv: two_in_mux port map(A=>b, B=>notb, SEL=>ALUControlBinvBit, X=>Binverter);
   ALUOpControl: ALUOp port map(aluop=>ALUopc, funct=>funct, Ainv=>ALUControlAinvBit, Binv=>ALUControlBinvBit, AOp=>ALUControlOpCode);
   --NEED TO FIGURE OUT HOW TO DO THE OVERFLOW!!!

end Behavioral;
