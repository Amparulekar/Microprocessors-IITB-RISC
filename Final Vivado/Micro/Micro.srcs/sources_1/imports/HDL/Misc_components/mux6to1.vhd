----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/17/2022 08:53:48 PM
-- Design Name: 
-- Module Name: demux1to2 - Behavioral
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

entity mux1to6 is
    Port ( mux6to1out: out STD_LOGIC_VECTOR(15 downto 0);
           mux6to1in1: in STD_lOGIC_VECTOR(15 downto 0);
           mux6to1in2: in STD_LOGIC_VECTOR(15 downto 0);
           mux6to1in3: in STD_LOGIC_VECTOR(15 downto 0);
           mux6to1in4: in STD_lOGIC_VECTOR(15 downto 0);
           mux6to1in5: in STD_LOGIC_VECTOR(15 downto 0);
           mux6to1in6: in STD_LOGIC_VECTOR(15 downto 0);
           mux6to1select: in STD_LOGIC_VECTOR(2 downto 0));
end mux1to6;

architecture Behavioral of mux1to6 is

begin
process(mux6to1Select, mux6to1in1, mux6to1in2, mux6to1in3, mux6to1in4, mux6to1in5, mux6to1in6)
    begin
    if mux6to1select = "000" then
        mux6to1out <= mux6to1in1;
    elsif mux6to1select = "001" then
        mux6to1out <= mux6to1in2;
    elsif mux6to1select = "010" then
        mux6to1out <= mux6to1in3;    
    elsif mux6to1select = "011" then
        mux6to1out <= mux6to1in4;
    elsif mux6to1select = "100" then
        mux6to1out <= mux6to1in5;
    elsif mux6to1select = "101" then
        mux6to1out <= mux6to1in6;       
    end if;        
end process;
end Behavioral;
