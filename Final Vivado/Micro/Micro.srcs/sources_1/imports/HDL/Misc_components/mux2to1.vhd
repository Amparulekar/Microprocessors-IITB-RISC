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

entity mux1to2 is
    Port ( mux2to1out: out STD_LOGIC_VECTOR(15 downto 0);
           mux2to1in1: in STD_lOGIC_VECTOR(15 downto 0);
           mux2to1in2: in STD_LOGIC_VECTOR(15 downto 0);
           mux2to1select: in STD_LOGIC);
end mux1to2;

architecture Behavioral of mux1to2 is

begin
process(mux2to1Select, mux2to1in1,mux2to1in2)
    begin
    if mux2to1select = '0' then
        mux2to1out <= mux2to1in1;
    elsif mux2to1select = '1' then
        mux2to1out <= mux2to1in2;
    end if;        
end process;
end Behavioral;
