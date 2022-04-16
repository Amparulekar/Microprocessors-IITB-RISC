library ieee;
use ieee.std_logic_1164.all;

entity se_6_16_tb is
end entity;

architecture test of se_6_16_tb is 
    component SE_6_16 is 
     port(
               in_SE_6_16: in std_logic_vector(5 downto 0);
               out_SE_6_16: out std_logic_vector(15 downto 0)
       );
    end component;

    signal in_SE_6_16: std_logic_vector(5 downto 0);
    signal out_SE_6_16: std_logic_vector(15 downto 0);
begin
    SE1 : se_6_16 port map (in_SE_6_16=>in_SE_6_16, out_SE_6_16=>out_SE_6_16);
    process
    begin
      in_SE_6_16 <= "000100";
      wait for 10 ns;
      in_SE_6_16 <= "100001";
      wait for 10 ns;

      assert false report "End";
      wait;
  end process;
end architecture test;
