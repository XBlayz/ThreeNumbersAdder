----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.12.2023 15:46:04
-- Design Name: 
-- Module Name: Three_Adder - Version1
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

entity Three_Adder is
    generic (n : integer := 8);
    Port ( A : in STD_LOGIC_VECTOR (0 downto 0);
           B : in STD_LOGIC_VECTOR (0 downto 0);
           C : in STD_LOGIC_VECTOR (0 downto 0);
           R : in STD_LOGIC_VECTOR (0 downto 0);
           CLK : in STD_LOGIC;
           Clear : in STD_LOGIC);
end Three_Adder;

architecture Version1 of Three_Adder is
    component Synched_adder is
        generic (n : integer := 8);
        Port ( A : in STD_LOGIC_VECTOR (0 downto 0);
               B : in STD_LOGIC_VECTOR (0 downto 0);
               R : out STD_LOGIC_VECTOR (0 downto 0);
               CLK : in STD_LOGIC;
               Clear : in STD_LOGIC);
    end component;
begin


end Version1;
