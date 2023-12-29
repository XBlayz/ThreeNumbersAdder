----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.12.2023 12:31:56
-- Design Name: 
-- Module Name: Adder - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Adder is
    generic (n: integer :=8);
    Port ( clk : in STD_LOGIC;
           clear : in STD_LOGIC;
           a : in STD_LOGIC_VECTOR (n-1 downto 0);
           b : in STD_LOGIC_VECTOR (n-1 downto 0);
           r : out STD_LOGIC_VECTOR (n downto 0));
end Adder;

architecture Behavioral of Adder is

component Register_n
    generic (n : integer := 8);
    Port (CLK, Clear : in STD_LOGIC;
          D : in STD_LOGIC_VECTOR (n-1 downto 0);
          Q : out STD_LOGIC_VECTOR (n-1 downto 0));
end component;

signal a1, b1,  p, g, Isum: STD_LOGIC_VECTOR (n downto 0); 
signal c: STD_LOGIC_VECTOR (n+1 downto 0); 

begin
    P <= a1 xor b1;
    G <= a1 and b1;
    a1 <= a(n-1) & a;
    b1 <= b(n-1) & b;
    c(0) <= '0';
    c(n+1 downto 1) <= g or (p and c(n downto 0));
    Isum <= p xor c(n downto 0);
    RegistroS: Register_n generic map(n+1) port map(clk, clear, Isum, r);
end Behavioral;
