LIBRARY ieee;
use IEEE.std_logic_1164.all;

entity CPU_test is
end CPU_test;

architecture behavior of CPU_test is
	
	component CPU_Ilya
		port(
		A, B, C : in std_logic_vector(7 downto 0);
		RES_addAandB : out std_logic_vector(7 downto 0);
		RES_addBandC : out std_logic_vector(7 downto 0);
		RES_ABmoreBC :out std_logic;
		RES_Div: out std_logic_vector (7 downto 0)
		); 
	end component;
	signal A, B, C :  std_logic_vector(7 downto 0);
	signal RES_addAandB :  std_logic_vector(7 downto 0);
	signal RES_addBandC :  std_logic_vector(7 downto 0);
	signal RES_ABmoreBC : std_logic;
	signal RES_Div:  std_logic_vector (7 downto 0);
	
	begin
		p1 : entity work.CPU_Ilya port map (A(0) => A(0),A(1) => A(1), A(2) => A(2), A(3) => A(3), A(4) => A(4), A(5) => A(5),A(6) => A(6), A(7) => A(7), B(0) => B(0),B(1) => B(1), B(2) => B(2), B(3) => B(3), B(4) => B(4), B(5) => B(5),B(6) => B(6), B(7) => B(7), C(0) => C(0),C(1) => C(1), C(2) => C(2), C(3) => C(3), C(4) => C(4), C(5) => C(5),C(6) => C(6), C(7) => C(7), RES_addAandB(0) => RES_addAandB(0),RES_addAandB(1) => RES_addAandB(1), RES_addAandB(2) => RES_addAandB(2), RES_addAandB(3) => RES_addAandB(3), RES_addAandB(4) => RES_addAandB(4), RES_addAandB(5) => RES_addAandB(5),RES_addAandB(6) => RES_addAandB(6), RES_addAandB(7) => RES_addAandB(7), RES_addBandC(0) => RES_addBandC(0),RES_addBandC(1) => RES_addBandC(1), RES_addBandC(2) => RES_addBandC(2), RES_addBandC(3) => RES_addBandC(3), RES_addBandC(4) => RES_addBandC(4), RES_addBandC(5) => RES_addBandC(5),RES_addBandC(6) => RES_addBandC(6), RES_addBandC(7) => RES_addBandC(7), RES_ABmoreBC => RES_ABmoreBC, RES_Div(0) => RES_Div(0),RES_Div(1) => RES_Div(1), RES_Div(2) => RES_Div(2), RES_Div(3) => RES_Div(3), RES_Div(4) => RES_Div(4), RES_Div(5) => RES_Div(5),RES_Div(6) => RES_Div(6), RES_Div(7) => RES_Div(7));
	process
		begin
			A(0) <= '0';
			A(1) <= '0';
			A(2) <= '1';
			A(3) <= '0';
			A(4) <= '0';
			A(5) <= '0';
			A(6) <= '0';
			A(7) <= '0';
			
			B(0) <= '0';
			B(1) <= '1';
			B(2) <= '0';
			B(3) <= '0';
			B(4) <= '0';
			B(5) <= '0';
			B(6) <= '0';
			B(7) <= '0';
			
			C(0) <= '1';
			C(1) <= '0';
			C(2) <= '0';
			C(3) <= '0';
			C(4) <= '0';
			C(5) <= '0';
			C(6) <= '0';
			C(7) <= '0';
			
			wait for 50 ns;
			
			A(0) <= '0';
			A(1) <= '0';
			A(2) <= '0';
			A(3) <= '0';
			A(4) <= '1';
			A(5) <= '0';
			A(6) <= '0';
			A(7) <= '0';
			
			B(0) <= '0';
			B(1) <= '0';
			B(2) <= '0';
			B(3) <= '0';
			B(4) <= '0';
			B(5) <= '0';
			B(6) <= '0';
			B(7) <= '0';
			
			C(0) <= '1';
			C(1) <= '0';
			C(2) <= '0';
			C(3) <= '0';
			C(4) <= '0';
			C(5) <= '1';
			C(6) <= '0';
			C(7) <= '0';
			
			wait for 50 ns;
			end process;
end behavior;