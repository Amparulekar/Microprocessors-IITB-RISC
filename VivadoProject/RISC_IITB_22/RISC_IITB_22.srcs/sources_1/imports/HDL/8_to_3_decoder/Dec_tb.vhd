----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/17/2022 02:12:04 AM
-- Design Name: 
-- Module Name: Dec_tb - Behavioral
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

entity Dec_tb is
--  Port ( );
end Dec_tb;

architecture Behavioral of Dec_tb is
component decoder is
    Port ( dec_in : in STD_LOGIC_VECTOR (7 downto 0);
           dec_out : out STD_LOGIC_VECTOR (2 downto 0);
           clk : STD_LOGIC);
end component decoder;

signal dec_in: STD_LOGIC_VECTOR( 7 downto 0);
signal dec_out: STD_LOGIC_VECTOR(2 downto 0);
signal clk: STD_LOGIC;

begin
    uut :  decoder port map(dec_in,dec_out,clk);
    
    Clock : process
    begin
    CLK <= '0';
    wait for 10 ns;
    CLK <= '1';
    wait for 10 ns;
    end process;


    stimulus: process
    begin
        dec_in <= "00000010";
        wait for 20 ns;
        dec_in <= "00000001";
        wait for 20ns;
        dec_in <= "01000000";
        wait for 20 ns;
        dec_in <= "11111111";
        wait for 20ns;
    end process;
end Behavioral;

