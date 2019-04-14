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
          op: in std_logic_vector(1 downto 0);
          cout: out std_logic;
          res: out std_logic
          );
end alu;

architecture Behavioral of alu is

    signal R0,R1,R2: std_logic;
    
    component three_in_mux
        Port(
             X,Y,Z: in std_logic;
             SEL: in std_logic_vector(1 downto 0);
             R: out std_logic
            );
     end component;
    
     component full_adder
        Port(
            XA,YA,CarIn: IN std_logic; 
            sum, CarOut: OUT std_logic 
            );
     end component;
     
begin
   
   R0 <= a AND b;
   R1 <= a OR b;
   FA: full_adder port map(XA=>a, YA=>b, CarIn=>cin, CarOut=>cout, sum=>R2);
   MUX: three_in_mux port map(X=>R0, Y=>R1, Z=>R2, SEL=>op, R=>res);

end Behavioral;
