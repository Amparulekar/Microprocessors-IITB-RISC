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

entity mux8to1 is
  Port (muxin0: in STD_LOGIC;
        muxin1: in STD_LOGIC;
        muxin2: in STD_LOGIC;
        muxin3: in STD_LOGIC;
        muxin4: in STD_LOGIC;
        muxin5: in STD_LOGIC;
        muxin6: in STD_LOGIC;
        muxin7: in STD_LOGIC;
        muxout: out STD_LOGIC;
        sel: in STD_LOGIC_VECTOR(2 downto 0));
end mux8to1;

architecture Behavioral of mux8to1 is

begin
process(sel,muxin0,muxin1,muxin2,muxin3,muxin4,muxin5,muxin6,muxin7)
begin
    case sel is
    when "000" => muxout <= muxin0;
    when "001" => muxout <= muxin1;
    when "010" => muxout <= muxin2;
    when "011" => muxout <= muxin3;
    when "100" => muxout <= muxin4;
    when "101" => muxout <= muxin5;
    when "110" => muxout <= muxin6;
    when "111" => muxout <= muxin7;
    end case;
end process;
end Behavioral;
