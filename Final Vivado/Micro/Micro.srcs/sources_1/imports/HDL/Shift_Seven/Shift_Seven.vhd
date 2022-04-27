library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;


entity Shift_seven is
    port(
        SS_Input : in std_logic_vector(15 downto 0);
        SS_Output: out std_logic_vector(15 downto 0)
    );
end entity Shift_seven;

architecture SS_Process of Shift_seven is
begin
    process(SS_Input)
    begin
        SS_Output(15 downto 7) <= SS_Input(8 downto 0);
        SS_Output(6 downto 0) <= "0000000";		  
    end process;
end architecture SS_Process;
