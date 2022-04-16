library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;


entity Incrementer_Decrementer is
    port(
        ID_Input : in std_logic_vector(15 downto 0);
        ID_Output: out std_logic_vector(15 downto 0)
    );
end entity Incrementer_Decrementer;

architecture ID_Process of Incrementer_Decrementer is
signal ID_Midway : unsigned(15 downto 0);
begin
    process(ID_Input)
    begin
        ID_Midway <= unsigned(ID_Input)+1;
        ID_Output <= std_logic_vector(ID_Midway);
    end process;
end architecture ID_Process;




