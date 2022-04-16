--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
--Date        : Sun Apr 17 01:09:34 2022
--Host        : NO running 64-bit major release  (build 9200)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    BRAM_PORTA_0_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    BRAM_PORTA_0_clk : in STD_LOGIC;
    BRAM_PORTA_0_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    BRAM_PORTA_0_en : in STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    BRAM_PORTA_0_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    BRAM_PORTA_0_clk : in STD_LOGIC;
    BRAM_PORTA_0_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    BRAM_PORTA_0_en : in STD_LOGIC
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      BRAM_PORTA_0_addr(15 downto 0) => BRAM_PORTA_0_addr(15 downto 0),
      BRAM_PORTA_0_clk => BRAM_PORTA_0_clk,
      BRAM_PORTA_0_dout(15 downto 0) => BRAM_PORTA_0_dout(15 downto 0),
      BRAM_PORTA_0_en => BRAM_PORTA_0_en
    );
end STRUCTURE;
