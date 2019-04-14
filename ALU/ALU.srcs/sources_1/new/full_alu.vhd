----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Olivia Bellatin and Kevin Brosam
-- 
-- Create Date: 04/14/2019 01:04:25 PM
-- Design Name: 
-- Module Name: full_alu - Behavioral
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


entity full_alu is
  Port (
        a,b: in std_logic_vector(31 downto 0);
        op: in std_logic_vector(1 downto 0);
        cin: in std_logic;
        cout: out std_logic;
        res: out std_logic_vector(31 downto 0)
        );
end full_alu;

architecture Behavioral of full_alu is

    signal C1,C2,C3,C4,C5,C6,C7,C8,C9,C10,C11,C12,C13,C14,C15,C16,C17,C18,C19,C20,C21,C22,C23,C24,C25,C26,C27,C28,C29,C30,C31: std_logic;

    component alu
        Port(
            X,Y: in std_logic;
            CarIn: in std_logic;
            OPC: in std_logic_vector(1 downto 0);
            CarOut: out std_logic;
            ResA: out std_logic
            );
    end component;

begin


end Behavioral;
