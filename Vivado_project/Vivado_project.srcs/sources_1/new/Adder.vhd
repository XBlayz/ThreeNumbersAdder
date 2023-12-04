----------------------------------------------------------------------------------
-- Company: UNICAL
-- Engineer: Michele De Fusco
-- 
-- Create Date: 04.12.2023 14:49:19
-- Design Name: ---
-- Module Name: Adder - Version1
-- Project Name: ThreeNumbersAdder
-- Target Devices: xc7z020clg400-2
-- Tool Versions: 2023.2
-- Description: Parametric n-bit ripple carry adder
-- 
-- Dependencies: None
-- 
-- Revision: 1
-- Revision 0.01 - File Created
-- Additional Comments: ---
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Adder is
    generic (n : integer := 8);
    Port (A, B : in STD_LOGIC_VECTOR (n-1 downto 0);
          R : out STD_LOGIC_VECTOR (n downto 0));
end Adder;

architecture Version1 of Adder is
    signal p, g : STD_LOGIC_VECTOR (n downto 0);
    signal carry : STD_LOGIC_VECTOR (n+1 downto 0);
begin
    p <= (A(n-1) xor B(n-1)) & (A xor B);
    g <= (A(n-1) xor B(n-1)) & (A and B);

    carry(0) <= '0';
    carry(n+1 downto 1) <= (g or p) and carry (n downto 0);
    R <= p xor carry(n downto 0);

end Version1;
