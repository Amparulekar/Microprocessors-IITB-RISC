----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/17/2022 02:59:45 AM
-- Design Name: 
-- Module Name: 111gen - Behavioral
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

entity gen111 is
    Port ( gen : out STD_LOGIC_VECTOR (2 downto 0);
           PCon: in STD_LOGIC);
end gen111;

architecture Behavioral of gen111 is

begin
    process(PCon)
    begin
        if Pcon = '1' then
            gen <= "111";
        end if;
    end process;
end Behavioral;
