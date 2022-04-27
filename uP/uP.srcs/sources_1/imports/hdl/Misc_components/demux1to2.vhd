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

entity demux1to2 is
    Port ( Demux2to1in: in STD_LOGIC_VECTOR(15 downto 0);
           Demux2to1out1: out STD_lOGIC_VECTOR(15 downto 0);
           Demux2to1out2: out STD_LOGIC_VECTOR(15 downto 0);
           Demux2to1select: in STD_LOGIC);
end demux1to2;

architecture Behavioral of demux1to2 is

begin
process(Demux2to1Select, Demux2to1in)
    begin
    if demux2to1select = '0' then
        demux2to1out1 <= demux2to1in;
    elsif demux2to1select = '1' then
        demux2to1out2 <= demux2to1in;
    end if;        
end process;
end Behavioral;
