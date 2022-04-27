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

entity mux1to3 is
    Port ( mux3to1out: out STD_LOGIC_VECTOR(15 downto 0);
           mux3to1in1: in STD_lOGIC_VECTOR(15 downto 0);
           mux3to1in2: in STD_LOGIC_VECTOR(15 downto 0);
           mux3to1in3: in STD_LOGIC_VECTOR(15 downto 0);
           mux3to1select: in STD_LOGIC_VECTOR(1 downto 0));
end mux1to3;

architecture Behavioral of mux1to3 is

begin
process(mux3to1Select, mux3to1in1, mux3to1in2, mux3to1in3)
    begin
    if mux3to1select = "00" then
        mux3to1out <= mux3to1in1;
    elsif mux3to1select = "01" then
        mux3to1out <= mux3to1in2;
    elsif mux3to1select = "10" then
        mux3to1out <= mux3to1in3;    
    end if;        
end process;
end Behavioral;
