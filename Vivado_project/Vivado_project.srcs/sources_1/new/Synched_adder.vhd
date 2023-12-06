----------------------------------------------------------------------------------
-- Company: UNICAL
-- Engineer: Stefano Scarcelli, Michele De Fusco
-- 
-- Create Date: 04.12.2023 15:31:55
-- Design Name: ---
-- Module Name: Synched_adder - Version1
-- Project Name: ThreeNumbersAdder
-- Target Devices: xc7z020clg400-2
-- Tool Versions: 2023.2
-- Description: Adder with input registers
-- 
-- Dependencies: Adder.vhd, Register_n.vhd
-- 
-- Revision: 1
-- Revision 1.0 - Implementation
-- Additional Comments: ---
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Synched_adder is
    generic (n : integer := 8);
    Port (A, B : in STD_LOGIC_VECTOR (n-1 downto 0);
          R : out STD_LOGIC_VECTOR (n downto 0);
          CLK, Clear : in STD_LOGIC);
end Synched_adder;

architecture Version1 of Synched_adder is
    component Adder is
        generic (n : integer := 8);
        Port (A, B : in STD_LOGIC_VECTOR (n-1 downto 0);
              R : out STD_LOGIC_VECTOR (n downto 0));
    end component;
    component Register_n is
        generic (n : integer := 8);
        Port (CLK, Clear : in STD_LOGIC;
              D : in STD_LOGIC_VECTOR (n-1 downto 0);
              Q : out STD_LOGIC_VECTOR (n-1 downto 0));
    end component;
    signal Ra, Rb: STD_LOGIC_VECTOR (n-1 downto 0);
begin
    RegA: Register_n generic map(n) port map(CLK, Clear, A, Ra);
    RegB: Register_n generic map(n) port map(CLK, Clear, B, Rb);

    Adder1: Adder generic map(n) port map(Ra, Rb, R);

end Version1;
