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
        funct:in std_logic_vector(5 downto 0);
        cin: in std_logic;
        cout: out std_logic;
        overflow: out std_logic;
        zeroflag: out std_logic;
        res: out std_logic_vector(31 downto 0)
        );
end full_alu;

architecture Behavioral of full_alu is

    signal C1,C2,C3,C4,C5,C6,C7,C8,C9,C10,C11,C12,C13,C14,C15,C16,C17,C18,C19,C20,C21,C22,C23,C24,C25,C26,C27,C28,C29,C30,C31: std_logic;
    signal R0,R1,R2,R3,R4,R5,R6,R7,R8,R9,R10,R11,R12,R13,R14,R15,R16,R17,R18,R19,R20,R21,R22,R23,R24,R25,R26,R27,R28,R29,R30,R31: std_logic;
    signal SETSIG,SET0: std_logic;

    component alu
        Port(
          a,b: in std_logic;
          cin: in std_logic;
          ALUopc: in std_logic_vector(1 downto 0);
          funct: in std_logic_vector(5 downto 0);
          cout: out std_logic;
          overflow: out std_logic;
          set: out std_logic;
          res: out std_logic
            );
    end component;

begin
    SET0 <= '0';
    
    ALU0: alu port map(a=>a(0), b=>b(0), cin=>cin, cout=>C1, ALUopc=>op, funct=>funct, overflow=>overflow, set=>SETSIG, res=>R0);
    ALU1: alu port map(a=>a(1), b=>b(1), cin=>C1, cout=>C2, ALUopc=>op, funct=>funct, overflow=>overflow, set=>SET0, res=>R1);
    ALU2: alu port map(a=>a(2), b=>b(2), cin=>C2, cout=>C3, ALUopc=>op, funct=>funct, overflow=>overflow, set=>SET0, res=>R2);
    ALU3: alu port map(a=>a(3), b=>b(3), cin=>C3, cout=>C4, ALUopc=>op, funct=>funct, overflow=>overflow, set=>SET0, res=>R3);
    ALU4: alu port map(a=>a(4), b=>b(4), cin=>C4, cout=>C5, ALUopc=>op, funct=>funct, overflow=>overflow, set=>SET0, res=>R4);
    ALU5: alu port map(a=>a(5), b=>b(5), cin=>C5, cout=>C6, ALUopc=>op, funct=>funct, overflow=>overflow, set=>SET0, res=>R5);
    ALU6: alu port map(a=>a(6), b=>b(6), cin=>C6, cout=>C7, ALUopc=>op, funct=>funct, overflow=>overflow, set=>SET0, res=>R6);
    ALU7: alu port map(a=>a(7), b=>b(7), cin=>C7, cout=>C8, ALUopc=>op, funct=>funct, overflow=>overflow, set=>SET0, res=>R7);
    ALU8: alu port map(a=>a(8), b=>b(8), cin=>C8, cout=>C9, ALUopc=>op, funct=>funct, overflow=>overflow, set=>SET0, res=>R8);
    ALU9: alu port map(a=>a(9), b=>b(9), cin=>C9, cout=>C10, ALUopc=>op, funct=>funct, overflow=>overflow, set=>SET0, res=>R9);
    ALU10: alu port map(a=>a(10), b=>b(10), cin=>C10, cout=>C11, ALUopc=>op, funct=>funct, overflow=>overflow, set=>SET0, res=>R10);
    ALU11: alu port map(a=>a(11), b=>b(11), cin=>C11, cout=>C12, ALUopc=>op, funct=>funct, overflow=>overflow, set=>SET0, res=>R11);
    ALU12: alu port map(a=>a(12), b=>b(12), cin=>C12, cout=>C13, ALUopc=>op, funct=>funct, overflow=>overflow, set=>SET0, res=>R12);
    ALU13: alu port map(a=>a(13), b=>b(13), cin=>C13, cout=>C14, ALUopc=>op, funct=>funct, overflow=>overflow, set=>SET0, res=>R13);
    ALU14: alu port map(a=>a(14), b=>b(14), cin=>C14, cout=>C15, ALUopc=>op, funct=>funct, overflow=>overflow, set=>SET0, res=>R14);
    ALU15: alu port map(a=>a(15), b=>b(15), cin=>C15, cout=>C16, ALUopc=>op, funct=>funct, overflow=>overflow, set=>SET0, res=>R15);
    ALU16: alu port map(a=>a(16), b=>b(16), cin=>C16, cout=>C17, ALUopc=>op, funct=>funct, overflow=>overflow, set=>SET0, res=>R16);
    ALU17: alu port map(a=>a(17), b=>b(17), cin=>C17, cout=>C18, ALUopc=>op, funct=>funct, overflow=>overflow, set=>SET0, res=>R17);
    ALU18: alu port map(a=>a(18), b=>b(18), cin=>C18, cout=>C19, ALUopc=>op, funct=>funct, overflow=>overflow, set=>SET0, res=>R18);
    ALU19: alu port map(a=>a(19), b=>b(19), cin=>C19, cout=>C20, ALUopc=>op, funct=>funct, overflow=>overflow, set=>SET0, res=>R19);
    ALU20: alu port map(a=>a(20), b=>b(20), cin=>C20, cout=>C21, ALUopc=>op, funct=>funct, overflow=>overflow, set=>SET0, res=>R20);
    ALU21: alu port map(a=>a(21), b=>b(21), cin=>C21, cout=>C22, ALUopc=>op, funct=>funct, overflow=>overflow, set=>SET0, res=>R21);
    ALU22: alu port map(a=>a(22), b=>b(22), cin=>C22, cout=>C23, ALUopc=>op, funct=>funct, overflow=>overflow, set=>SET0, res=>R22);
    ALU23: alu port map(a=>a(23), b=>b(23), cin=>C23, cout=>C24, ALUopc=>op, funct=>funct, overflow=>overflow, set=>SET0, res=>R23);
    ALU24: alu port map(a=>a(24), b=>b(24), cin=>C24, cout=>C25, ALUopc=>op, funct=>funct, overflow=>overflow, set=>SET0, res=>R24);
    ALU25: alu port map(a=>a(25), b=>b(25), cin=>C25, cout=>C26, ALUopc=>op, funct=>funct, overflow=>overflow, set=>SET0, res=>R25);
    ALU26: alu port map(a=>a(26), b=>b(26), cin=>C26, cout=>C27, ALUopc=>op, funct=>funct, overflow=>overflow, set=>SET0, res=>R26);
    ALU27: alu port map(a=>a(27), b=>b(27), cin=>C27, cout=>C28, ALUopc=>op, funct=>funct, overflow=>overflow, set=>SET0, res=>R27);
    ALU28: alu port map(a=>a(28), b=>b(28), cin=>C28, cout=>C29, ALUopc=>op, funct=>funct, overflow=>overflow, set=>SET0, res=>R28);
    ALU29: alu port map(a=>a(29), b=>b(29), cin=>C29, cout=>C30, ALUopc=>op, funct=>funct, overflow=>overflow, set=>SET0, res=>R29);
    ALU30: alu port map(a=>a(30), b=>b(30), cin=>C30, cout=>C31, ALUopc=>op, funct=>funct, overflow=>overflow, set=>SET0, res=>R30);
    ALU31: alu port map(a=>a(31), b=>b(31), cin=>C31, cout=>cout, ALUopc=>op, funct=>funct, overflow=>overflow, set=>SET0, res=>R31);
    
    zeroflag <= R1 AND R2 AND R3 AND R4 AND R5 AND R6 AND R7 AND R8 AND R9 AND R10 AND R11 AND R12 AND R13 AND R14 AND R15 AND R16 AND R17 AND R18 AND R19 AND R20 AND R21 AND R22 AND R23 AND R24 AND R25 AND R26 AND R27 AND R28 AND R29 AND R30 AND R31;
    res(0) <= R0;
    res(1) <= R1;
    res(2) <= R2;
    res(3) <= R3;
    res(4) <= R4;
    res(5) <= R5;
    res(6) <= R6;
    res(7) <= R7;
    res(8) <= R8;
    res(9) <= R9;
    res(10) <= R10;
    res(11) <= R11;
    res(12) <= R12;
    res(13) <= R13;
    res(14) <= R14;
    res(15) <= R15;
    res(16) <= R16;
    res(17) <= R17;
    res(18) <= R18;
    res(19) <= R19;
    res(20) <= R20;
    res(21) <= R21;
    res(22) <= R22;
    res(23) <= R23;
    res(24) <= R24;
    res(25) <= R25;
    res(26) <= R26;
    res(27) <= R27;
    res(28) <= R28;
    res(29) <= R29;
    res(30) <= R30;
    res(31) <= R31;
    
end Behavioral;
