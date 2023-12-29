----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Stefano Scarcelli, Michele De Fusco
-- 
-- Create Date: 12.12.2023 11:20:24
-- Design Name: ---
-- Module Name: Sim_Add - Version1
-- Project Name: ThreeNumbersAdder
-- Target Devices: xc7z020clg400-2
-- Tool Versions: 2023.2
-- Description: Main simulation
-- 
-- Dependencies: Three_Adder.vhd
-- 
-- Revision: 1
-- Revision 2.0 - Implementation
-- Additional Comments: ---
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.ALL;

entity Sim_Add is
    generic (n : integer := 8);
end Sim_Add;

architecture Version1 of Sim_Add is
    component Three_Adder
        --generic (n : integer := 8);
        Port (A : in STD_LOGIC_VECTOR (n-1 downto 0);
              B : in STD_LOGIC_VECTOR (n-1 downto 0);
              C : in STD_LOGIC_VECTOR (n-1 downto 0);
              R : out STD_LOGIC_VECTOR (n+1 downto 0);
              CLK : in STD_LOGIC;
              Clear : in STD_LOGIC);
    end component;
    Signal IA, IB, IC : STD_LOGIC_VECTOR (n-1 downto 0);
    Signal ORR : STD_LOGIC_VECTOR (n+1 downto 0);
    signal clk, clear : STD_LOGIC;
    constant T : time := 10 ns;
begin
    TA : Three_Adder port map(IA, IB, IC, ORR, clk, clear);
    process begin
        clk <= '0';
        wait for T/2;
        clk <= '1';
        wait for T/2;
    end process;

    process begin
        -- wait for 100 ns;
        
        clear <= '1';
        wait for T;
        clear <= '0';
        wait for T/4;
        
        -- (-1)+(-1)+(-1)=-3
        IA <= (others=>'1');
        IB <= (others=>'1');
        IC <= (others=>'1');
        wait for T;
        
        -- 127+127+127=381
        IA(n-1) <= ('0');
        IA(n-2 downto 0) <= (others=>'1');
        IB(n-1) <= ('0');
        IB(n-2 downto 0) <= (others=>'1');
        IC(n-1) <= ('0');
        IC(n-2 downto 0) <= (others=>'1');
        wait for T;
        
        -- (-64)+1+(-63)=0
        IA(n-1 downto n-2) <= (others=>'0');
        IA(n-3 downto 0) <= (others=>'1');
        IB(n-1 downto 1) <= (others=>'0');
        IB(0) <= ('1');
        IC(n-1 downto n-2) <= (others=>'1');
        IC(n-3 downto 0) <= (others=>'0');
        wait for T;
        
        -- Waiting results
        wait for T;
    end process;

end Version1;
