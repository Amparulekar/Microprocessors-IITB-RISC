library ieee;
use ieee.std_logic_1164.all;
entity SE_1_16 is
    port(
            in_SE_1_16: in std_logic_vector(0 downto 0);
            out_SE_1_16: out std_logic_vector(15 downto 0)
    );
end entity SE_1_16;

architecture padder of SE_1_16 is
begin
    out_SE_1_16 (15 downto 1)<= "000000000000000";
    out_SE_1_16 (0 downto 0) <= in_SE_1_16;
end architecture padder;
