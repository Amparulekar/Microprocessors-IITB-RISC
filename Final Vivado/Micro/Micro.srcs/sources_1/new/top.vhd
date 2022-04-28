----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.04.2022 15:03:08
-- Design Name: 
-- Module Name: top - Behavioral
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

entity top is
--  Port ( );
end top;

architecture Behavioral of top is
component ALU_1 is
    port (
        ALU_A : in std_logic_vector (15 downto 0) := (others => '0');
        ALU_B : in std_logic_vector (15 downto 0) := (others => '0');
        ALU_Carry : in std_logic := '0';
        ALU_Zero : in std_logic := '0';
        ALU_Select : in std_logic_vector (3 downto 0) := (others => '0');
        ALU_Output : out std_logic_vector;
        ALU_COUT : out std_logic;
        ALU_ZOUT : out std_logic
    );
end component;
    component SE_9_16 is
        port(
                in_SE_9_16: in std_logic_vector(8 downto 0);
                out_SE_9_16: out std_logic_vector(15 downto 0)
        );
    end component;
    
    component SE_6_16 is
        port(
                in_SE_6_16: in std_logic_vector(5 downto 0);
                out_SE_6_16: out std_logic_vector(15 downto 0)
        );
    end component;
    component Incrementer_Decrementer is
        port(
            ID_Input : in std_logic_vector(15 downto 0);
            ID_Output: out std_logic_vector(15 downto 0)
        );
    end component;
    component Bit_accessor is
    Port ( seven_in : in STD_LOGIC_VECTOR (7 downto 0);
           six_in : in STD_LOGIC_VECTOR (7 downto 0);
           five_in : in STD_LOGIC_VECTOR (7 downto 0);
           four_in : in STD_LOGIC_VECTOR (7 downto 0);
           three_in : in STD_LOGIC_VECTOR (7 downto 0);
           two_in : in STD_LOGIC_VECTOR (7 downto 0);
           one_in : in STD_LOGIC_VECTOR (7 downto 0);
           zero_in : in STD_LOGIC_VECTOR (7 downto 0);
           seven_out : out STD_LOGIC_VECTOR (7 downto 0);
           six_out : out STD_LOGIC_VECTOR (7 downto 0);
           five_out : out STD_LOGIC_VECTOR (7 downto 0);
           four_out : out STD_LOGIC_VECTOR (7 downto 0);
           three_out : out STD_LOGIC_VECTOR (7 downto 0);
           two_out : out STD_LOGIC_VECTOR (7 downto 0);
           one_out : out STD_LOGIC_VECTOR (7 downto 0);
           zero_out : out STD_LOGIC_VECTOR (7 downto 0));
    end component Bit_accessor;
    component decoder is
    Port ( dec_in : in STD_LOGIC_VECTOR (7 downto 0);
           dec_out : out STD_LOGIC_VECTOR (2 downto 0));
    end component decoder;
    
    component Reg is
        Port ( CLK : in STD_LOGIC;
           CLR : in STD_LOGIC;
           D_in : in STD_LOGIC_VECTOR (15 downto 0);
           D_out1 : out STD_LOGIC_VECTOR (15 downto 0);
           D_out2 : out STD_LOGIC_VECTOR (15 downto 0));
    end component Reg;
    
    component gen111 is
    Port ( gen : out STD_LOGIC_VECTOR (2 downto 0);
           PCon: in STD_LOGIC);
    end component gen111;
    
    component SE_1_16 is
    port(
            in_SE_1_16: in std_logic_vector(0 downto 0);
            out_SE_1_16: out std_logic_vector(15 downto 0)
    );  
    end component SE_1_16;
    
    component mux1to3 is
    Port ( mux3to1out: out STD_LOGIC_VECTOR(15 downto 0);
           mux3to1in1: in STD_lOGIC_VECTOR(15 downto 0);
           mux3to1in2: in STD_LOGIC_VECTOR(15 downto 0);
           mux3to1in3: in STD_LOGIC_VECTOR(15 downto 0);
           mux3to1select: in STD_LOGIC_VECTOR(1 downto 0));
    end component mux1to3;
    
    component mux1to2 is
    Port ( mux2to1out: out STD_LOGIC_VECTOR(15 downto 0);
           mux2to1in1: in STD_lOGIC_VECTOR(15 downto 0);
           mux2to1in2: in STD_LOGIC_VECTOR(15 downto 0);
           mux2to1select: in STD_LOGIC);
    end component mux1to2;
    
    component Register_File is
    Port ( A1 : in STD_LOGIC_VECTOR (2 downto 0);
           A2 : in STD_LOGIC_VECTOR (2 downto 0);
           A3 : in STD_LOGIC_VECTOR (2 downto 0);
           D1 : out STD_LOGIC_VECTOR (15 downto 0);
           D2 : out STD_LOGIC_VECTOR (15 downto 0);
           D3 : in STD_LOGIC_VECTOR (15 downto 0);
           CLK: in STD_LOGIC);
    end component Register_File;
    
    component demux1to3 is
    Port ( Demux3to1in: in STD_LOGIC_VECTOR(15 downto 0);
           Demux3to1out1: out STD_lOGIC_VECTOR(15 downto 0);
           Demux3to1out2: out STD_LOGIC_VECTOR(15 downto 0);
           Demux3to1out3: out STD_LOGIC_VECTOR(15 downto 0);
           Demux3to1select: in STD_LOGIC_VECTOR(1 downto 0));
    end component demux1to3;

    component demux1to2 is
    Port ( Demux2to1in: in STD_LOGIC_VECTOR(15 downto 0);
           Demux2to1out1: out STD_lOGIC_VECTOR(15 downto 0);
           Demux2to1out2: out STD_LOGIC_VECTOR(15 downto 0);
           Demux2to1select: in STD_LOGIC);
    end component demux1to2;
    
    component Shift_seven is
    port(
        SS_Input : in std_logic_vector(15 downto 0);
        SS_Output: out std_logic_vector(15 downto 0)
    );
    end component Shift_seven;
    
    component mux8to1 is
      Port (muxin0: in STD_LOGIC_VECTOR(0 downto 0);
            muxin1: in STD_LOGIC_VECTOR(0 downto 0);
            muxin2: in STD_LOGIC_VECTOR(0 downto 0);
            muxin3: in STD_LOGIC_VECTOR(0 downto 0);
            muxin4: in STD_LOGIC_VECTOR(0 downto 0);
            muxin5: in STD_LOGIC_VECTOR(0 downto 0);
            muxin6: in STD_LOGIC_VECTOR(0 downto 0);
            muxin7: in STD_LOGIC_VECTOR(0 downto 0);
            muxout: out STD_LOGIC_VECTOR(0 downto 0);
            sel: in STD_LOGIC_VECTOR(2 downto 0));
    end component mux8to1;
    
    component demux1to8 is
      Port (demuxout0: out STD_LOGIC_VECTOR(7 downto 0);
            demuxout1: out STD_LOGIC_VECTOR(7 downto 0);
            demuxout2: out STD_LOGIC_VECTOR(7 downto 0);
            demuxout3: out STD_LOGIC_VECTOR(7 downto 0);
            demuxout4: out STD_LOGIC_VECTOR(7 downto 0);
            demuxout5: out STD_LOGIC_VECTOR(7 downto 0);
            demuxout6: out STD_LOGIC_VECTOR(7 downto 0);
            demuxout7: out STD_LOGIC_VECTOR(7 downto 0);
            demuxin: in STD_LOGIC_VECTOR(7 downto 0);
            sel: in STD_LOGIC_VECTOR(2 downto 0));
    end component demux1to8;

    component mux1to6 is
    Port ( mux6to1out: out STD_LOGIC_VECTOR(15 downto 0);
           mux6to1in1: in STD_lOGIC_VECTOR(15 downto 0);
           mux6to1in2: in STD_LOGIC_VECTOR(15 downto 0);
           mux6to1in3: in STD_LOGIC_VECTOR(15 downto 0);
           mux6to1in4: in STD_lOGIC_VECTOR(15 downto 0);
           mux6to1in5: in STD_LOGIC_VECTOR(15 downto 0);
           mux6to1in6: in STD_LOGIC_VECTOR(15 downto 0);
           mux6to1select: in STD_LOGIC_VECTOR(2 downto 0));
    end component mux1to6;
    
     signal ALU_A :  std_logic_vector (15 downto 0) := (others => '0');
     signal ALU_B : std_logic_vector (15 downto 0) := (others => '0');
     signal ALU_Carry :std_logic := '0';
     signal ALU_Zero : std_logic := '0';
     signal ALU_Select :  std_logic_vector (3 downto 0) := (others => '0');
     signal ALU_Output : std_logic_vector(15 downto 0);
     signal ALU_COUT :  std_logic;
     signal ALU_ZOUT : std_logic;
    signal CLK, RST: STD_LOGIC;
    
    signal T1in, T1out, T2out, T3in, T2in, T3out: STD_LOGIC_VECTOR(15 downto 0);    
    
    signal IRin, IRout: STD_LOGIC_VECTOR(15 downto 0);
    
    signal SE916in: STD_LOGIC_VECTOR(8 downto 0);
    signal SE916out: STD_LOGIC_VECTOR(15 downto 0);
    
    signal SE616in: STD_LOGIC_VECTOR(5 downto 0);
    signal SE616out: STD_LOGIC_VECTOR(15 downto 0);
    
    signal SE116in : STD_LOGIC_VECTOR(0 downto 0);
    signal SE116out: STD_LOGIC_VECTOR(15 downto 0);
    
    signal IncIN,IncOut: STD_LOGIC_VECTOR(15 downto 0);
    
    signal ImemA, ImemDin, ImemDout: STD_LOGIC_VECTOR(15 downto 0);
    signal DmemA, DmemDin, DmemDout: STD_LOGIC_VECTOR(15 downto 0);
    
    signal BAin7,BAin6,BAin5,BAin4,BAin3,BAin2,BAin1,BAin0,BAout,BAout7,BAout6,BAout5,BAout4,BAout3,BAout2,BAout1,BAout0: STD_LOGIC_VECTOR(7 downto 0);
    signal Decin: STD_LOGIC_VECTOR(15 downto 0);
    signal Decout: STD_LOGIC_VECTOR(2 downto 0);
    
    signal PCconsig: STD_LOGIC;
    signal r7addr: STD_LOGIC_VECTOR(2 downto 0);
    
    signal Shifterin,shifterout: STD_LOGIC_VECTOR(15 downto 0);
    
    signal RFA1,RFA2,RFA3: STD_LOGIC_VECTOR(2 downto 0);
    signal RFD1,RFD2,RFD3: STD_LOGIC_VECTOR(15 downto 0);
    
    signal T1insel: STD_LOGIC;
    signal T1outsel: STD_LOGIC_VECTOR(1 downto 0);
    signal T2insel: STD_LOGIC_VECTOR(1 downto 0);
    signal T2outsel: STD_LOGIC;
    signal T3outsel: STD_LOGIC;
    signal SE116sel: STD_LOGIC_VECTOR(2 downto 0);
    signal BAsel: STD_LOGIC_VECTOR(2 downto 0);
    
    --signal A,B,C,D: STD_LOGIC;

    signal d3sel: STD_LOGIC_VECTOR(2 downto 0);
    
begin
    ALU : ALU_1 port map(ALU_A=>ALU_A, ALU_B=>ALU_B, ALU_CArry=>ALU_Carry, ALU_zero=>ALU_zero, ALU_select=>ALU_select, alu_output=>alu_output, alu_cout=>alu_cout, alu_zout=>alu_zout);

    T1: Reg port map(CLK=>CLK, CLR=>RST, D_in=>T1in, D_out1=>T1out,D_out2=> T1out);
    T2: Reg port map(CLK=>CLK, CLR=>RST, D_in=>T2in, D_out1=>T2out, D_out2=>T2out);
    T3: Reg port map(CLK=>CLK, CLR=>RST, D_in=>ALU_output, D_out1=>T3out, D_out2=>T3out);
    
    IR: Reg port map(CLK=>CLK, CLR=>RST, D_in=>IRin, D_out1=>IRout, D_out2=>IRout);
    
    SE916: SE_9_16 port map(in_se_9_16=>SE916in, out_se_9_16=>SE916out);
    SE616: SE_6_16 port map(in_se_6_16=>SE616in, out_se_6_16=>SE616out);
    SE116: SE_1_16 port map(in_se_1_16=>SE116in, out_se_1_16=>SE116out);
    
    Inc: Incrementer_Decrementer port map(ID_input=>INCin, ID_Output=>INCout);
    BA: Bit_accessor port map(seven_in=>BAin7,six_in=>BAin6,five_in=>BAin5,four_in=>BAin4,three_in=>BAin3,two_in=>BAin2,one_in=>BAin1,zero_in=>BAin0,seven_out=>BAout7,six_out=>BAout6,five_out=>BAout5,four_out=>BAout4,three_out=>BAout3,two_out=>BAout2,one_out=>BAout1,zero_out=>BAout0);
    Dec: decoder port map(BAout, Decout);
    PCcon: gen111 port map(gen=>R7Addr, Pcon=>PCconsig);
    SS: Shift_SEven port map(ss_input=>Shifterin,ss_output=>shifterout);

    RF: Register_File port map(A1=>RFA1,A2=>RFA2,A3=>RFA3,D1=>RFD1,D2=>RFD2,D3=>RFD3,CLK=>CLK);
    muxT1: mux1to2 port map(mux2to1out=>T1in,mux2to1in1=>RFD3,mux2to1in2=>SE916out,mux2to1select=>T1insel);
    
    muxT2: mux1to3 port map(mux3to1out=>T2in, mux3to1in1=>RFD2, mux3to1in2=>SE116out, mux3to1in3=>SE616out, mux3to1select=>T2insel);
    muxSE116: mux8to1 port map(muxin0=>IRout(0 downto 0),muxin1=>IRout(1 downto 1),muxin2=>IRout(2 downto 2),muxin3=>IRout(3 downto 3),muxin4=>IRout(4 downto 4),muxin5=>IRout(5 downto 5),muxin6=>IRout(6 downto 6),muxin7=>IRout(7 downto 7),muxout=>SE116in,sel=>SE116sel);
    
    demuxBA: demux1to8 port map(demuxout0=>BAin0,demuxout1=>BAin1,demuxout2=>BAin2,demuxout3=>BAin3,demuxout4=>BAin4,demuxout5=>BAin5,demuxout6=>BAin6,demuxout7=>BAin7, demuxin=>IRout(7 downto 0), sel=>BAsel);
    
--    d3sel(0) <= (not(A) and B and C) or (B and C and D) or ( not(a) and b and c and (not(d))) or (a and (not(b)) and c and (not(d)));
--    d3sel(1) <= (not(a) and b and (not(c)) and (not(d))) or (not(a) and (not(b)) and c and d) or (a and b and c and d);
--    d3sel(2) <= b and c and (not(d));
    muxRFD3: mux1to6 port map(mux6to1out=>RFD3, mux6to1in1=>DmemDOut, mux6to1in2=>Shifterout, mux6to1in3=>Incout, mux6to1in4=>T3out, mux6to1in5=>T1out, mux6to1in6=>"0000000000000000", mux6to1select=>d3sel);
    
    --RFA1<= (((b and (not(c)) and (not(d))) or ( a and (not(c)) and ( not(d))) or (a and (not(b)) and (not(c)) and d) or (a and b and c and d)) and IRout) or (((b and (not(c)) and d) or (a and (not(c)) and d) or((not(a))and(not(b))and(not(d))andc))and R7addr) or ((a and (not(b)) and c and d)and Decout); 
    
    ALU_Carry <= IRout(1);
    ALU_Zero <= IRout(0);
    ALU_B<=T2out;
    ALU_A<=T1out;
    
    SE616in <=  IRout(5 downto 0);
    SE916in <= IRout (8 downto 0);
    IRin <= ImemDout;
    
       
    
end Behavioral;
