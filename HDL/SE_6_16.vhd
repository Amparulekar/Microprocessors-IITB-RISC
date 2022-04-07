library ieee;
use ieee.std_logic_1164.all;
entity SE_6_16 is
    port(
            in_SE_6_16: in std_logic_vector(5 downto 0);
            out_SE_6_16: out std_logic_vector(15 downto 0)
    );
end entity SE_6_16;

architecture padder of SE_6_16 is
begin
    out_SE_6_16 (15 downto 6)<= "0000000000";
    out_SE_6_16 (5 downto 0) <= in_SE_6_16;
end architecture padder;
