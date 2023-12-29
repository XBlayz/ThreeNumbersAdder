----------------------------------------------------------------------------------
-- Company: UNICAL
-- Engineer: Stefano Scarcelli, Michele De Fusco
-- 
-- Create Date: 29.12.2023 12:31:56
-- Design Name: 
-- Module Name: Adder - Behavioral
-- Project Name: ThreeNumbersAdder
-- Target Devices: xc7z020clg400-2
-- Tool Versions: 2023.2
-- Description: Adder n-bit
-- 
-- Dependencies: None
-- 
-- Revision: 2
-- Revision 1.0 - Implementation
-- Additional Comments: ---
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Adder is
    generic (n: integer := 8);
    Port ( A : in STD_LOGIC_VECTOR (n-1 downto 0);
           B : in STD_LOGIC_VECTOR (n-1 downto 0);
           R : out STD_LOGIC_VECTOR (n downto 0));
end Adder;

architecture Behavioral of Adder is

signal A1, B1, P, G: STD_LOGIC_VECTOR (n downto 0); 
signal C: STD_LOGIC_VECTOR (n+1 downto 0); 

begin
    P <= A1 xor B1;
    G <= A1 and B1;
    A1 <= A(n-1)&A;
    B1 <= B(n-1)&B;
    C(0) <= '0';
    C(n+1 downto 1) <= G or (P and C(n downto 0));
    R <= P xor C(n downto 0);
end Behavioral;