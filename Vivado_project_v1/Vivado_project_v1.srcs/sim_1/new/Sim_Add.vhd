----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.12.2023 11:20:24
-- Design Name: 
-- Module Name: Sim_Add - Version1
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
use IEEE.std_logic_arith.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Sim_Add is
    generic (n : integer := 8);
end Sim_Add;

architecture Version1 of Sim_Add is

    component Three_Adder
        generic (n : integer := 8);
        Port (A : in STD_LOGIC_VECTOR (n-1 downto 0);
              B : in STD_LOGIC_VECTOR (n-1 downto 0);
              C : in STD_LOGIC_VECTOR (n-1 downto 0);
              R : out STD_LOGIC_VECTOR (n+1 downto 0);
              CLK : in STD_LOGIC;
              Clear : in STD_LOGIC);
    end component;
    Signal IA,IB,IC : STD_LOGIC_VECTOR (n-1 downto 0);
    Signal ORR : STD_LOGIC_VECTOR (n+1 downto 0);
    signal clk, clear : STD_LOGIC;
    constant T : time := 5 ms;
begin
    TA : Three_Adder port map(IA,IB,IC,ORR,clk,clear);
    process begin
    clk <= '0';
    wait for T/2;
    clk <= '1';
    wait for T/2;
    end process;
    process begin
    clear <= '1';
    wait until falling_edge(clk);
    clear <= '0';
    
    wait for 4 ms;
    
    IA<=(others=>'1');
    IB<=(others=>'1');
    IC<=(others=>'1');
    wait for T;
    
    end process;
end Version1;
