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

    ALU0: alu port map(X=>a(0), Y=>b(0), CarIn=>cin, CarOut=>C1, OPC=>op, ResA=>res(0));
    ALU1: alu port map(X=>a(1), Y=>b(1), CarIn=>C1, CarOut=>C2, OPC=>op, ResA=>res(1));
    ALU2: alu port map(X=>a(2), Y=>b(2), CarIn=>C2, CarOut=>C3, OPC=>op, ResA=>res(2));
    ALU3: alu port map(X=>a(3), Y=>b(3), CarIn=>C3, CarOut=>C4, OPC=>op, ResA=>res(3));
    ALU4: alu port map(X=>a(4), Y=>b(4), CarIn=>C4, CarOut=>C5, OPC=>op, ResA=>res(4));
    ALU5: alu port map(X=>a(5), Y=>b(5), CarIn=>C5, CarOut=>C6, OPC=>op, ResA=>res(5));
    ALU6: alu port map(X=>a(6), Y=>b(6), CarIn=>C6, CarOut=>C7, OPC=>op, ResA=>res(6));
    ALU7: alu port map(X=>a(7), Y=>b(7), CarIn=>C7, CarOut=>C8, OPC=>op, ResA=>res(7));
    ALU8: alu port map(X=>a(8), Y=>b(8), CarIn=>C8, CarOut=>C9, OPC=>op, ResA=>res(8));
    ALU9: alu port map(X=>a(9), Y=>b(9), CarIn=>C9, CarOut=>C10, OPC=>op, ResA=>res(9));
    ALU10: alu port map(X=>a(10), Y=>b(10), CarIn=>C10, CarOut=>C11, OPC=>op, ResA=>res(10));
    ALU11: alu port map(X=>a(11), Y=>b(11), CarIn=>C11, CarOut=>C12, OPC=>op, ResA=>res(11));
    ALU12: alu port map(X=>a(12), Y=>b(12), CarIn=>C12, CarOut=>C13, OPC=>op, ResA=>res(12));
    ALU13: alu port map(X=>a(13), Y=>b(13), CarIn=>C13, CarOut=>C14, OPC=>op, ResA=>res(13));
    ALU14: alu port map(X=>a(14), Y=>b(14), CarIn=>C14, CarOut=>C15, OPC=>op, ResA=>res(14));
    ALU15: alu port map(X=>a(15), Y=>b(15), CarIn=>C15, CarOut=>C16, OPC=>op, ResA=>res(15));
    ALU16: alu port map(X=>a(16), Y=>b(16), CarIn=>C16, CarOut=>C17, OPC=>op, ResA=>res(16));
    ALU17: alu port map(X=>a(17), Y=>b(17), CarIn=>C17, CarOut=>C18, OPC=>op, ResA=>res(17));
    ALU18: alu port map(X=>a(18), Y=>b(18), CarIn=>C18, CarOut=>C19, OPC=>op, ResA=>res(18));
    ALU19: alu port map(X=>a(19), Y=>b(19), CarIn=>C19, CarOut=>C20, OPC=>op, ResA=>res(19));
    ALU20: alu port map(X=>a(20), Y=>b(20), CarIn=>C20, CarOut=>C21, OPC=>op, ResA=>res(20));
    ALU21: alu port map(X=>a(21), Y=>b(21), CarIn=>C21, CarOut=>C22, OPC=>op, ResA=>res(21));
    ALU22: alu port map(X=>a(22), Y=>b(22), CarIn=>C22, CarOut=>C23, OPC=>op, ResA=>res(22));
    ALU23: alu port map(X=>a(23), Y=>b(23), CarIn=>C23, CarOut=>C24, OPC=>op, ResA=>res(23));
    ALU24: alu port map(X=>a(24), Y=>b(24), CarIn=>C24, CarOut=>C25, OPC=>op, ResA=>res(24));
    ALU25: alu port map(X=>a(25), Y=>b(25), CarIn=>C25, CarOut=>C26, OPC=>op, ResA=>res(25));
    ALU26: alu port map(X=>a(26), Y=>b(26), CarIn=>C26, CarOut=>C27, OPC=>op, ResA=>res(26));
    ALU27: alu port map(X=>a(27), Y=>b(27), CarIn=>C27, CarOut=>C28, OPC=>op, ResA=>res(27));
    ALU28: alu port map(X=>a(28), Y=>b(28), CarIn=>C28, CarOut=>C29, OPC=>op, ResA=>res(28));
    ALU29: alu port map(X=>a(29), Y=>b(29), CarIn=>C29, CarOut=>C30, OPC=>op, ResA=>res(29));
    ALU30: alu port map(X=>a(30), Y=>b(30), CarIn=>C30, CarOut=>C31, OPC=>op, ResA=>res(30));
    ALU31: alu port map(X=>a(31), Y=>b(31), CarIn=>C31, CarOut=cout, OPC=>op, ResA=>res(31));

end Behavioral;
