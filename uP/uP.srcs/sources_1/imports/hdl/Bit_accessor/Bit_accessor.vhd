----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/17/2022 02:43:46 PM
-- Design Name: 
-- Module Name: Bit_accessor - Behavioral
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

entity Bit_accessor is
    Port ( seven_in : in STD_LOGIC_VECTOR (7 downto 0);
           six_in : in STD_LOGIC_VECTOR (7 downto 0);
           five_in : in STD_LOGIC_VECTOR (7 downto 0);
           four_in : in STD_LOGIC_VECTOR (7 downto 0);
           three_in : in STD_LOGIC_VECTOR (7 downto 0);
           two_in : in STD_LOGIC_VECTOR (7 downto 0);
           one_in : in STD_LOGIC_VECTOR (7 downto 0);
           zero_in : in STD_LOGIC_VECTOR (7 downto 0);
           seven_out : out STD_LOGIC_VECTOR (7 downto 0);
           six_out : out STD_LOGIC_VECTOR (7 downto 0);
           five_out : out STD_LOGIC_VECTOR (7 downto 0);
           four_out : out STD_LOGIC_VECTOR (7 downto 0);
           three_out : out STD_LOGIC_VECTOR (7 downto 0);
           two_out : out STD_LOGIC_VECTOR (7 downto 0);
           one_out : out STD_LOGIC_VECTOR (7 downto 0);
           zero_out : out STD_LOGIC_VECTOR (7 downto 0));
end Bit_accessor;

architecture Behavioral of Bit_accessor is

begin
seven_out <= seven_in and "10000000";
six_out <= six_in and "01000000";
five_out <= five_in and "00100000";
four_out <= four_in and "00010000";
three_out <= three_in and "00001000";
two_out <= two_in and "00000100";
one_out <= one_in and "00000010";
zero_out <= zero_in and "00000001";
end Behavioral;
