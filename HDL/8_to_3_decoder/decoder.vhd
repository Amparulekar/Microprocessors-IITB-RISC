----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/17/2022 02:00:47 AM
-- Design Name: 
-- Module Name: decoder - Behavioral
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

entity decoder is
    Port ( dec_in : in STD_LOGIC_VECTOR (7 downto 0);
           dec_out : out STD_LOGIC_VECTOR (2 downto 0);
           clk : STD_LOGIC);
end decoder;

architecture Behavioral of decoder is

begin
    process(clk)
    begin
        if CLK'event and CLK = '0' then
            case dec_in is
                when "00000001" => dec_out <= "000";
                when "00000010" => dec_out <= "001";
                when "00000100" => dec_out <= "010";
                when "00001000" => dec_out <= "011";
                when "00010000" => dec_out <= "100";
                when "00100000" => dec_out <= "101";
                when "01000000" => dec_out <= "110";
                when "10000000" => dec_out <= "111";           
                when others => dec_out <= "XXX";
            end case;
        end if;    
    end process;        
end Behavioral;
