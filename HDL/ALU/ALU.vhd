library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--use ieee.std_logic_unsigned.all;
--use ieee.numeric_std.all;
use ieee.math_real.all;
--use ieee.numeric_bit_unsigned.all;

entity ALU_1 is
    port(
           ALU_A : in std_logic_vector (15 downto 0);
           ALU_B : in std_logic_vector (15 downto 0);
           ALU_Carry : inout std_logic;
           ALU_Zero : inout std_logic;
           ALU_Select : in std_logic_vector (3 downto 0);
           ALU_Output : out std_logic_vector (15 downto 0)
        );
end entity ALU_1;

architecture ALU_Process of ALU_1 is 
signal ALU_Result:  unsigned(16 downto 0);
begin
    process(ALU_A,ALU_B,ALU_Select)
    begin
        case ALU_Select is
            when "0000" =>
                ALU_Result <= (others => '0');
            when "0001" =>
                ALU_Result <= unsigned(ALU_A) + unsigned(ALU_B); 
               
            when others => 
               ALU_Output <= (others => '0');
        end case;
        ALU_Output <= std_logic_vector(ALU_Result(15 downto 0));
        ALU_Carry <= std_logic(ALU_Result(16));
        
    end process;
end architecture ALU_Process;

