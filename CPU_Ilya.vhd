library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
entity CPU_Ilya is
	port(
		A, B, C : in std_logic_vector(7 downto 0);
		RES_addAandB : out std_logic_vector(7 downto 0);
		RES_addBandC : out std_logic_vector(7 downto 0);
		RES_ABmoreBC :out std_logic;
		RES_Div: out std_logic_vector(7 downto 0)
		);
	end entity;
architecture behaviour of CPU_Ilya is
	begin
	process(A, B, C) is
			variable ABint: integer range 0 to 256;
			variable BCint: integer range 0 to 256;
			variable resIntDiv: integer range 0 to 256;
		begin
		BCint := to_integer(signed(B+C));
		RES_addAandB <= A + B;
		RES_addBandC <= B + C;
		if((A+B) > (B+C)) then
				RES_ABmoreBC  <= '1';
		else 
				RES_ABmoreBC  <= '0';
		end if;
		ABint := to_integer(signed(A+B));
		
		resIntDiv := ABint/BCint;
		--resIntDiv := 2;
		--выход RES_Div показывает, во сколько раз (А+В) > (В+С)
		RES_Div <= std_logic_vector(to_signed(resIntDiv, RES_Div'length));
	end process;
end architecture;