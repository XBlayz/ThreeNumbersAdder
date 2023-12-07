----------------------------------------------------------------------------------
-- Company: UNICAL
-- Engineer: Stefano Scarcelli
-- 
-- Create Date: 04.12.2023 14:57:11
-- Design Name: ---
-- Module Name: Register_n - Version1
-- Project Name: ThreeNumbersAdder
-- Target Devices: xc7z020clg400-2
-- Tool Versions: 2023.2
-- Description: Parametric n-bit register
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

entity Register_n is
    generic (n : integer := 8);
    Port (CLK, Clear : in STD_LOGIC;
          D : in STD_LOGIC_VECTOR (n-1 downto 0);
          Q : out STD_LOGIC_VECTOR (n-1 downto 0));
end Register_n;

architecture Version1 of Register_n is

begin
    process(CLK, Clear) begin
        if (Clear = '1') then
            Q <= (others => '0');
        elsif rising_edge(CLK) then
            Q <= D;
        end if;
    end process;

end Version1;
