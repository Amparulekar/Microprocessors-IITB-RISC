----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/16/2022 06:35:24 PM
-- Design Name: 
-- Module Name: Register_File - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Register_File is
    Port ( A1 : in STD_LOGIC_VECTOR (2 downto 0);
           A2 : in STD_LOGIC_VECTOR (2 downto 0);
           A3 : in STD_LOGIC_VECTOR (2 downto 0);
           D1 : out STD_LOGIC_VECTOR (15 downto 0);
           D2 : out STD_LOGIC_VECTOR (15 downto 0);
           D3 : in STD_LOGIC_VECTOR (15 downto 0);
           CLK: in STD_LOGIC);
end Register_File;

architecture Behavioral of Register_File is
        
    
    component Reg is
    Port ( CLK : in STD_LOGIC;
           CLR : in STD_LOGIC;
           D_in : in STD_LOGIC_VECTOR (15 downto 0);
           D_out1 : out STD_LOGIC_VECTOR (15 downto 0);
           D_out2 : out STD_LOGIC_VECTOR (15 downto 0));
    end component Reg;
    
    component DEMUX is
         Port ( DEMUX_SEL_IN : in STD_LOGIC_VECTOR (2 downto 0);
           DEMUX_IN : in STD_LOGIC_vector(15 DOWNTO 0);
           DEMUX_OUT0 : out STD_LOGIC_VECTOR (15 downto 0);
           DEMUX_OUT1 : out STD_LOGIC_VECTOR (15 downto 0);
           DEMUX_OUT2 : out STD_LOGIC_VECTOR (15 downto 0);
           DEMUX_OUT3 : out STD_LOGIC_VECTOR (15 downto 0);
           DEMUX_OUT4 : out STD_LOGIC_VECTOR (15 downto 0);
           DEMUX_OUT5 : out STD_LOGIC_VECTOR (15 downto 0);
           DEMUX_OUT6 : out STD_LOGIC_VECTOR (15 downto 0);
           DEMUX_OUT7 : out STD_LOGIC_VECTOR (15 downto 0));
    end component DEMUX;
    
    component MUX is
       Port ( MUX_SEL_IN : in STD_LOGIC_VECTOR (2 downto 0);
           MUX_IN0 : in STD_LOGIC_VECTOR (15 downto 0);
           MUX_IN1 : in STD_LOGIC_VECTOR (15 downto 0);
           MUX_IN2 : in STD_LOGIC_VECTOR (15 downto 0);
           MUX_IN3 : in STD_LOGIC_VECTOR (15 downto 0);
           MUX_IN4 : in STD_LOGIC_VECTOR (15 downto 0);
           MUX_IN5 : in STD_LOGIC_VECTOR (15 downto 0);
           MUX_IN6 : in STD_LOGIC_VECTOR (15 downto 0);
           MUX_IN7 : in STD_LOGIC_VECTOR (15 downto 0);
           MUX_OUT : out STD_LOGIC_VECTOR(15 downto 0));
    end component MUX;

    signal sigm10, sigm11, sigm12, sigm13, sigm14, sigm15, sigm16, sigm17: STD_LOGIC_VECTOR(15 downto 0);
    signal sigm20, sigm21, sigm22, sigm23, sigm24, sigm25, sigm26, sigm27: STD_LOGIC_VECTOR(15 downto 0);
    signal sigd0, sigd1, sigd2, sigd3, sigd4, sigd5, sigd6, sigd7: STD_LOGIC_VECTOR(15 downto 0);
    
    begin
    
    mux1: MUX port map(A1,sigm10, sigm11, sigm12, sigm13, sigm14, sigm15, sigm16, sigm17, D1);
    mux2: MUX port map(A2,sigm20, sigm21, sigm22, sigm23, sigm24, sigm25, sigm26, sigm27, D2);
    
    demux1: DEMUX port map(A3, D3,sigd0, sigd1, sigd2, sigd3, sigd4, sigd5, sigd6, sigd7);
    
    reg0: REG port map(CLK, '0' , sigd0, sigm10, sigm20); 
    reg1: REG port map(CLK, '0' , sigd1, sigm11, sigm21); 
    reg2: REG port map(CLK, '0' , sigd2, sigm12, sigm22); 
    reg3: REG port map(CLK, '0' , sigd3, sigm13, sigm23); 
    reg4: REG port map(CLK, '0' , sigd4, sigm14, sigm24); 
    reg5: REG port map(CLK, '0' , sigd5, sigm15, sigm25); 
    reg6: REG port map(CLK, '0' , sigd6, sigm16, sigm26); 
    reg7: REG port map(CLK, '0' , sigd7, sigm17, sigm27); 
    
end Behavioral;
