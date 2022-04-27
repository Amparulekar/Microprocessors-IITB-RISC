----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/17/2022 09:32:31 PM
-- Design Name: 
-- Module Name: mux8to1 - Behavioral
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

entity demux1to8 is
  Port (demuxout0: out STD_LOGIC_VECTOR(7 downto 0);
        demuxout1: out STD_LOGIC_VECTOR(7 downto 0);
        demuxout2: out STD_LOGIC_VECTOR(7 downto 0);
        demuxout3: out STD_LOGIC_VECTOR(7 downto 0);
        demuxout4: out STD_LOGIC_VECTOR(7 downto 0);
        demuxout5: out STD_LOGIC_VECTOR(7 downto 0);
        demuxout6: out STD_LOGIC_VECTOR(7 downto 0);
        demuxout7: out STD_LOGIC_VECTOR(7 downto 0);
        demuxin: in STD_LOGIC_VECTOR(7 downto 0);
        sel: in STD_LOGIC_VECTOR(2 downto 0));
end demux1to8;

architecture Behavioral of demux1to8 is

begin
process(sel,demuxin)
begin
    case sel is
    when "000" => demuxout0 <= demuxin;
    when "001" => demuxout1 <= demuxin;
    when "010" => demuxout2 <= demuxin;
    when "011" => demuxout3 <= demuxin;
    when "100" => demuxout4 <= demuxin;
    when "101" => demuxout5 <= demuxin;
    when "110" => demuxout6 <= demuxin;
    when "111" => demuxout7 <= demuxin;
    end case;
end process;
end Behavioral;
