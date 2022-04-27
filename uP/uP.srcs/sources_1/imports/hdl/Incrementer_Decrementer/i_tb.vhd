library ieee;
use ieee.std_logic_1164.all;

entity i_tb is 
end entity;


architecture test of i_tb is
    component Incrementer_Decrementer
    port(
        ID_Input : in std_logic_vector(15 downto 0);
        ID_Output: out std_logic_vector(15 downto 0)
    );
    end component;

    signal ID_Input, ID_Output : std_logic_vector(15 downto 0);
begin
    ID1 : Incrementer_Decrementer port map (ID_Input => ID_Input, ID_Output => ID_Output);

    process
    begin
        ID_Input <= "0000000000000001";
        wait for 10 ns;
        ID_Input <= "0000000000000011";
        wait for 10 ns;
        ID_Input <= "0100111111111000";
        wait for 10 ns;
        ID_Input <= "0000000000000110";
        wait for 10 ns;
        ID_Input <= "0001010001001000";
        wait for 10 ns;




        assert false report "End";
        wait;
        
        

    end process;


end architecture test;
