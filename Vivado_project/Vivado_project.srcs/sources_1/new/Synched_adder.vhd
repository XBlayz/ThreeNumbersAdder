----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.12.2023 15:31:55
-- Design Name: 
-- Module Name: Synched_adder - Behavioral
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

entity Synched_adder is
    generic (n : integer := 8);
    Port ( A : in STD_LOGIC_VECTOR (n-1 downto 0);
           B : in STD_LOGIC_VECTOR (n-1 downto 0);
           R : out STD_LOGIC_VECTOR (n downto 0);
           CLK : in STD_LOGIC;
           Clear : in STD_LOGIC);
end Synched_adder;

architecture Version1 of Synched_adder is
    component Adder is
        generic (n : integer := 8);
        Port ( A, B : in STD_LOGIC_VECTOR (n-1 downto 0);
               R : out STD_LOGIC_VECTOR (n downto 0));
    end component;
    component Register_n is
        generic (n : integer := 8);
        Port ( CLK : in STD_LOGIC;
               Clear : in STD_LOGIC;
               D : in STD_LOGIC_VECTOR (n-1 downto 0);
               Q : out STD_LOGIC_VECTOR (n-1 downto 0));
    end component;
    signal Ra, Rb: STD_LOGIC_VECTOR (n-1 downto 0);
begin
    RegA: Register_n generic map(n) port map(CLK, Clear, A, Ra);
    RegB: Register_n generic map(n) port map(CLK, Clear, B, Rb);

    Adder: Adder generic map(n) port map(Ra, Rb, R);

end Version1;
