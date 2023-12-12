----------------------------------------------------------------------------------
-- Company: UNICAL
-- Engineer: Stefano Scarcelli, Michele De Fusco
-- 
-- Create Date: 04.12.2023 15:46:04
-- Design Name: ---
-- Module Name: Three_Adder - Version1
-- Project Name: ThreeNumbersAdder
-- Target Devices: xc7z020clg400-2
-- Tool Versions: 2023.2
-- Description: Main file of the project
-- 
-- Dependencies: Register_n.vhd, Synched_adder.vhd
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

architecture Version1 of Three_Adder is
    component Synched_adder
        generic (n : integer := 8);
        Port (A, B : in STD_LOGIC_VECTOR (n-1 downto 0);
              R : out STD_LOGIC_VECTOR (n downto 0);
              CLK, Clear : in STD_LOGIC);
    end component;
    component Register_n
        generic (n : integer := 8);
        Port (CLK, Clear : in STD_LOGIC;
              D : in STD_LOGIC_VECTOR (n-1 downto 0);
              Q : out STD_LOGIC_VECTOR (n-1 downto 0));
    end component;
    component Adder
        generic (n : integer := 8);
        Port (A, B : in STD_LOGIC_VECTOR (n-1 downto 0);
              R : out STD_LOGIC_VECTOR (n downto 0));
    end component;
    signal Rc: STD_LOGIC_VECTOR (n-1 downto 0);
    signal Rs,RCext: STD_LOGIC_VECTOR (n downto 0);
    signal RSF: STD_LOGIC_VECTOR (n+1 downto 0);
begin
    RCext <= Rc(n-1) & Rc;
    RegC: Register_n generic map(n) port map(CLK, Clear, C, Rc);
    
    SA1:  Synched_adder generic map(n) port map(A, B, Rs, CLK, Clear);
    SA2:  Synched_adder generic map(n+1) port map(Rs, RCext, RSF, CLK, Clear);
    
    RegSF:Register_n generic map(n+2) port map(CLK, Clear, RSF, R);

end Version1;
