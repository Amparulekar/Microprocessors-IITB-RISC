----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/16/2022 06:35:24 PM
-- Design Name: 
-- Module Name: Testbench - Behavioral
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

entity Testbench is
end Testbench;

architecture Behavioral of Testbench is

component Register_File is
    Port ( A1 : in STD_LOGIC_VECTOR (2 downto 0);
           A2 : in STD_LOGIC_VECTOR (2 downto 0);
           A3 : in STD_LOGIC_VECTOR (2 downto 0);
           D1 : out STD_LOGIC_VECTOR (15 downto 0);
           D2 : out STD_LOGIC_VECTOR (15 downto 0);
           D3 : in STD_LOGIC_VECTOR (15 downto 0);
           CLK: in STD_LOGIC);
end component;

signal A1 :  STD_LOGIC_VECTOR (2 downto 0);
signal A2 :  STD_LOGIC_VECTOR (2 downto 0);
signal A3 :  STD_LOGIC_VECTOR (2 downto 0);
signal D1 :  STD_LOGIC_VECTOR (15 downto 0);
signal D2 :  STD_LOGIC_VECTOR (15 downto 0);
signal D3 :  STD_LOGIC_VECTOR (15 downto 0);
signal CLK:  STD_LOGIC;

begin
    uut :  Register_File port map(A1,A2,A3,D1,D2,D3,CLK);
    
    Clock : process
    begin
    CLK <= '0';
    wait for 10 ns;
    CLK <= '1';
    wait for 10 ns;
    end process;


    stimulus: process
    begin
        D3 <= "0000111100001111";
        A3 <= "001";
        wait for 10 ns;
        A1 <= "001";
        A3 <= "010";
        D3 <= "1111111111111111";
        wait for 10 ns;
        D3 <= "1111000011110000";
        A3 <= "001";
        wait for 10 ns;
        A1 <= "010";
        wait for 10ns; 
    end process;
end Behavioral;
