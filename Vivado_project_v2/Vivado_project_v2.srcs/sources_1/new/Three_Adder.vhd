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
begin
    RegA: Register_n generic map(n) port map(CLK, Clear, A, Ra);
    RegB: Register_n generic map(n) port map(CLK, Clear, B, Rb);
    RegC: Register_n generic map(n) port map(CLK, Clear, C, Rc);
    
    -- DA FARE: Circuito di somma (Ra+Rb+Rc=Rs)
    
    RegS: Register_n generic map(n+2) port map(CLK, Clear, Rs, R);

end Version2;
