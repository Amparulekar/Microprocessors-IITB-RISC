----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/16/2022 06:18:03 PM
-- Design Name: 
-- Module Name: Register - Behavioral
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

entity Reg is
    Port ( CLK : in STD_LOGIC;
           CLR : in STD_LOGIC;
           D_in : in STD_LOGIC_VECTOR (15 downto 0);
           D_out1 : out STD_LOGIC_VECTOR (15 downto 0);
           D_out2 : out STD_LOGIC_VECTOR (15 downto 0));
end entity Reg;

architecture RegArch of Reg is

signal RegData : STD_LOGIC_VECTOR(15 downto 0);

begin  
    process(CLK,CLR)
    begin
            D_out1 <= RegData;
            D_out2 <= RegData; 
        if CLR = '1' then
            RegData <= "0000000000000000";
        elsif CLK'EVENT then
                RegData <= D_in;    
        end if;
    end process;        
end architecture regarch;