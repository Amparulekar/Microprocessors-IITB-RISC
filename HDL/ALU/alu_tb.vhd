library ieee;
use ieee.std_logic_1164.all;

entity alu_tb is
end entity;
architecture test of alu_tb is
	component ALU_1
		port (
			ALU_A : in std_logic_vector (15 downto 0) := (others =>'0');
			ALU_B : in std_logic_vector (15 downto 0) := (others =>'0');
			ALU_Carry : inout std_logic := '0';
			ALU_Zero : inout std_logic := '0';
			ALU_Select : in std_logic_vector (3 downto 0):=(others =>'0');
			ALU_Output : out std_logic_vector (15 downto 0 ):=(others =>'0')
		);
	end component;

	signal ALU_A, ALU_B, ALU_Output : std_logic_vector(15 downto 0);
	signal ALU_Carry, ALU_Zero : std_logic;
	signal ALU_Select : std_logic_vector(3 downto 0);
begin
	ALU1 : ALU_1 port map(ALU_A => ALU_A, ALU_B => ALU_B, ALU_Carry => ALU_Carry, ALU_Zero => ALU_Zero, ALU_Select => ALU_Select, ALU_Output => ALU_Output);

	process
	begin
		ALU_A <= "1000000000000001";
		ALU_B <= "1000000000000001";
		ALU_Carry <= '0';
		ALU_Zero <= '0';
		ALU_Select <= "0001";
		wait for 10 ns;
		ALU_A <= "0000000000000001";
		ALU_B <= "0000000000000011";
		ALU_Select <= "0010";
		wait for 10 ns;
		ALU_A <= "0000000000000001";
		ALU_B <= "0000000000000001";
		-- ALU_Carry <= '0';
		-- ALU_Zero <= '0';
		ALU_Select <= "0010";
		wait for 10 ns;
		ALU_A <= "0000000000000001";
		ALU_B <= "0000000000000001";
		-- ALU_Carry <= '1';
		-- ALU_Zero <= '0';
		ALU_Select <= "0010";
		wait for 10 ns;
		ALU_A <= "0000000000000001";
		ALU_B <= "0000000000000001";
		ALU_Carry <= '0';
		ALU_Zero <= '0';
		ALU_Select <= "0100";
		wait for 10 ns;
		ALU_A <= "0000000000000001";
		ALU_B <= "0000000000000001";
		ALU_Carry <= '0';
		ALU_Zero <= '0';
		ALU_Select <= "1000";
		wait for 10 ns;
		ALU_A <= "0000000000000001";
		ALU_B <= "0000000000000001";
		ALU_Carry <= '0';
		ALU_Zero <= '1';
		ALU_Select <= "1000";
		wait for 10 ns;
		ALU_A <= "0000000000000001";
		ALU_B <= "0000000000000001";
		ALU_Carry <= '0';
		ALU_Zero <= '0';
		ALU_Select <= "1001";
		wait for 10 ns;
		assert false report "End";
		wait;

	end process;
end architecture test;