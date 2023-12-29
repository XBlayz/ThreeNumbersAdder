----------------------------------------------------------------------------------
-- Company: UNICAL
-- Engineer: Stefano Scarcelli, Michele De Fusco
-- 
-- Create Date: 26.12.2023 17:10:58
-- Design Name: ---
-- Module Name: Three_Adder - Version2
-- Project Name: ThreeNumbersAdder
-- Target Devices: xc7z020clg400-2
-- Tool Versions: 2023.2
-- Description: Main file of the project
-- 
-- Dependencies: Register_n.vhd
-- 
-- Revision: 1
-- Revision 1.0 - Implementation
-- Additional Comments: ---
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Three_Adder is
    generic (n : integer := 8);
    Port (A : in STD_LOGIC_VECTOR (n-1 downto 0);
          B : in STD_LOGIC_VECTOR (n-1 downto 0);
          C : in STD_LOGIC_VECTOR (n-1 downto 0);
          R : out STD_LOGIC_VECTOR (n+1 downto 0);
          CLK : in STD_LOGIC;
          Clear : in STD_LOGIC);
end Three_Adder;

architecture Version2 of Three_Adder is
    component Register_n
        generic (n : integer := 8);
        Port (CLK, Clear : in STD_LOGIC;
              D : in STD_LOGIC_VECTOR (n-1 downto 0);
              Q : out STD_LOGIC_VECTOR (n-1 downto 0));
    end component;
    signal Ra, Rb, Rc: STD_LOGIC_VECTOR (n-1 downto 0);
    signal Rs: STD_LOGIC_VECTOR (n downto 0);
    
    component FullAdder
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           cout : out STD_LOGIC;
           r : out STD_LOGIC);
    end component;
    
    component Adder is
    generic (n: integer :=8);
    Port ( clk : in STD_LOGIC;
           clear : in STD_LOGIC;
           a : in STD_LOGIC_VECTOR (n-1 downto 0);
           b : in STD_LOGIC_VECTOR (n-1 downto 0);
           r : out STD_LOGIC_VECTOR (n downto 0));
    end component;
    
    signal vr, sp: STD_LOGIC_VECTOR(n downto 0);
    signal a1, b1, c1, vr1, sp1: STD_LOGIC_VECTOR(n-1 downto 0);
begin
    RegA: Register_n generic map(n) port map(CLK, Clear, A, Ra);
    RegB: Register_n generic map(n) port map(CLK, Clear, B, Rb);
    RegC: Register_n generic map(n) port map(CLK, Clear, C, Rc);
    
    -- DA FARE: Circuito di somma (Ra+Rb+Rc=Rs)
    s1: for i in 0 to (n-1) generate
        FAi: FullAdder port map(a1(i), b1(i), c1(i), vr(i), sp(i));
    end generate;
    
    sp <= sp1(n-1) & sp1;
    vr <= vr1 & '0';
    
    Sum: Adder generic map(n+1) port map(CLK, Clear, vr, sp, R);

end Version2;
