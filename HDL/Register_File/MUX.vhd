----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/16/2022 06:49:11 PM
-- Design Name: 
-- Module Name: MUX - Behavioral
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

entity MUX is
    Port ( MUX_SEL_IN : in STD_LOGIC_VECTOR (2 downto 0);
           MUX_IN0 : in STD_LOGIC_VECTOR (15 downto 0);
           MUX_IN1 : in STD_LOGIC_VECTOR (15 downto 0);
           MUX_IN2 : in STD_LOGIC_VECTOR (15 downto 0);
           MUX_IN3 : in STD_LOGIC_VECTOR (15 downto 0);
           MUX_IN4 : in STD_LOGIC_VECTOR (15 downto 0);
           MUX_IN5 : in STD_LOGIC_VECTOR (15 downto 0);
           MUX_IN6 : in STD_LOGIC_VECTOR (15 downto 0);
           MUX_IN7 : in STD_LOGIC_VECTOR (15 downto 0);
           MUX_OUT : out STD_LOGIC_VECTOR(15 downto 0));
end MUX;

architecture Behavioral of MUX is
    begin
    process(MUX_SEL_IN,MUX_IN0,MUX_IN1,MUX_IN2,MUX_IN3,MUX_IN4,MUX_IN5,MUX_IN6,MUX_IN7)
        begin
        case MUX_SEL_IN is
            when "000" => MUX_OUT <= MUX_IN0;
            when "001" => MUX_OUT <= MUX_IN1;
            when "010" => MUX_OUT <= MUX_IN2;
            when "011" => MUX_OUT <= MUX_IN3;            
            when "100" => MUX_OUT <= MUX_IN4;
            when "101" => MUX_OUT <= MUX_IN5;                
            when "110" => MUX_OUT <= MUX_IN6;
            when others => MUX_OUT <= MUX_IN7;
        end case;               
    end process;
end Behavioral;
