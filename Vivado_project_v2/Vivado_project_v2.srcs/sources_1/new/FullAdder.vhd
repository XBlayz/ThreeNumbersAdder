----------------------------------------------------------------------------------
-- Company: UNICAL
-- Engineer: Michele De Fusco
-- 
-- Create Date: 29.12.2023 13:05:14
-- Design Name: ---
-- Module Name: FullAdder - Behavioral
-- Project Name: ThreeNumbersAdder
-- Target Devices: xc7z020clg400-2
-- Tool Versions: 2023.2
-- Description: Full adder
-- 
-- Dependencies: None
-- 
-- Revision: 1
-- Revision 1.0 - Implementation
-- Additional Comments: ---
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FullAdder is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           cout : out STD_LOGIC;
           r : out STD_LOGIC);
end FullAdder;

architecture Behavioral of FullAdder is
    signal p : STD_LOGIC;
begin
    p <= a xor b;
    r <= p xor c;
    cout <= (a nand b) nand (c nand p);
end Behavioral;