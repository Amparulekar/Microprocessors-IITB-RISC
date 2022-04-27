----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/16/2022 06:49:11 PM
-- Design Name: 
-- Module Name: DEMUX - Behavioral
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

entity DEMUX is
    Port ( DEMUX_SEL_IN : in STD_LOGIC_VECTOR (2 downto 0);
           DEMUX_IN : in STD_LOGIC_vector(15 DOWNTO 0);
           DEMUX_OUT0 : out STD_LOGIC_VECTOR (15 downto 0);
           DEMUX_OUT1 : out STD_LOGIC_VECTOR (15 downto 0);
           DEMUX_OUT2 : out STD_LOGIC_VECTOR (15 downto 0);
           DEMUX_OUT3 : out STD_LOGIC_VECTOR (15 downto 0);
           DEMUX_OUT4 : out STD_LOGIC_VECTOR (15 downto 0);
           DEMUX_OUT5 : out STD_LOGIC_VECTOR (15 downto 0);
           DEMUX_OUT6 : out STD_LOGIC_VECTOR (15 downto 0);
           DEMUX_OUT7 : out STD_LOGIC_VECTOR (15 downto 0));
end DEMUX;

architecture Behavioral of DEMUX is
 begin
    process(DEMUX_SEL_IN,DEMUX_IN)
        begin
        case DEMUX_SEL_IN is
            when "000" => DEMUX_OUT0 <= DEMUX_IN;
            when "001" => DEMUX_OUT1 <= DEMUX_IN;
            when "010" => DEMUX_OUT2 <= DEMUX_IN;
            when "011" => DEMUX_OUT3 <= DEMUX_IN;            
            when "100" => DEMUX_OUT4 <= DEMUX_IN;
            when "101" => DEMUX_OUT5 <= DEMUX_IN;                
            when "110" => DEMUX_OUT6 <= DEMUX_IN;
            when others => DEMUX_OUT7 <= DEMUX_IN;
        end case;               
   end process;
end Behavioral;
