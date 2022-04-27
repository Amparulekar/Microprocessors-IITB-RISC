library ieee;
use ieee.std_logic_1164.all;

entity se_9_16_tb is
end entity;

architecture test of se_9_16_tb is
    component SE_9_16 is
        port(
            in_SE_9_16 : in std_logic_vector(8 downto 0);
            out_SE_9_16: out std_logic_vector(15 downto 0)
    );
    end component;

    signal in_SE_9_16: std_logic_vector(8 downto 0);
    signal out_SE_9_16: std_logic_vector(15 downto 0);

begin
    SE2 : se_9_16 port map (in_SE_9_16 => in_SE_9_16, out_SE_9_16 => out_SE_9_16);
    process
    begin
        in_SE_9_16 <= "001010100";
        wait for 10 ns;
        in_SE_9_16 <= "010101010";
        wait for 10 ns;
        
        assert false report "end";
        wait;
    end process;
end architecture test;

