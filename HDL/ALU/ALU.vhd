library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--use ieee.std_logic_unsigned.all;
--use ieee.numeric_std.all;
--use ieee.math_real.all;
--use ieee.numeric_bit_unsigned.all;

entity ALU_1 is
    port (
        ALU_A : in std_logic_vector (15 downto 0);
        ALU_B : in std_logic_vector (15 downto 0);
        ALU_Carry : inout std_logic := '0';
        ALU_Zero : inout std_logic := '0';
        ALU_Select : in std_logic_vector (3 downto 0);
        ALU_Output : out std_logic_vector (15 downto 0)
    );
end entity ALU_1;

architecture ALU_Process of ALU_1 is
    signal ALU_Result : unsigned(16 downto 0);
begin
    process (ALU_A, ALU_B, ALU_Select)
    begin
        ALU_Result(16) <= ALU_Carry;
        case ALU_Select is
            when "0000" => --nothing
                ALU_Result <= (others => '0');
            when "0001" => --add
                ALU_Result <= unsigned('0' & ALU_A) + unsigned('0' & ALU_B);
            when "0010" => --adc
                if (ALU_Carry = '1') then
                    ALU_Result <= unsigned('0' & ALU_A) + unsigned('0' & ALU_B);
                end if;
            when "0011" => --adz
                if (ALU_Zero = '1') then
                    ALU_Result <= unsigned('0' & ALU_A) + unsigned('0' & ALU_B);
                end if;
            when "0100" => --adl
                ALU_Result <= unsigned('0' & ALU_A) + shift_left(unsigned('0' & ALU_B), 1);
            when "0101" => --adi
                ALU_Result <= unsigned('0' & ALU_A) + unsigned('0' & ALU_B);
            when "0110" => --ndu
                ALU_Result(15 downto 0) <= not(unsigned(ALU_A) and unsigned(ALU_B));
            when "0111" => --ndc
                if (ALU_Carry = '1') then
                    ALU_Result(15 downto 0) <= not(unsigned(ALU_A) and unsigned(ALU_B));
                end if;
            when "1000" => --ndz
                if (ALU_Zero = '1') then
                    ALU_Result(15 downto 0) <= not(unsigned(ALU_A) and unsigned(ALU_B));
                end if;
            when "1001" => -- sub? for beq
                ALU_Result <= unsigned('0' & ALU_A) - unsigned('0' & ALU_B);
            when "1010" => --add w/o carry for lw/sw
                ALU_Result(15 downto 0) <= unsigned(ALU_A) + unsigned(ALU_B);
            when others =>
                ALU_Output <= (others => '0');
        end case;
        ALU_Output <= std_logic_vector(ALU_Result(15 downto 0));
        if (ALU_Result = "0000000000000000") then
            ALU_Zero <= '1';
        else
            ALU_Zero <= '0';
        end if;
        ALU_Carry <= std_logic(ALU_Result(16));

    end process;
end architecture ALU_Process;

