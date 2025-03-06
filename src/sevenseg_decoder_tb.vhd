----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/05/2025 02:51:54 PM
-- Design Name: 
-- Module Name: sevenseg_decoder_tb - Behavioral
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

entity sevenseg_decoder_tb is

end sevenseg_decoder_tb;


architecture Behavioral of sevenseg_decoder_tb is
   component sevenseg_decoder is
    Port ( i_Hex : in STD_LOGIC_VECTOR (3 downto 0);
           o_seg_n : in STD_LOGIC_VECTOR (6 downto 0));      
   end component sevenseg_decoder;
   
   	signal w_num     : std_logic_vector(15 downto 0) := b"0000"; -- the numbers being added
	signal w_Cout : std_logic_vector(127 downto 0) := b"0000000";

begin

	sevenseg_decoder_uut : sevenseg_decoder port map (
	   i_Hex  => w_num(15 downto 0),
	   o_seg_n => w_Cout(127 downto 0)
	);
	
	test_process : process 
	begin
	
	   -- Test all zeros input
	   w_num <= b"0000"; wait for 10 ns;
	       assert (w_Cout = b"0111111") report "Zero display" severity failure;
	   w_num <= "0001"; wait for 10 ns;
	       assert (w_Cout = "0000110") report "One display" severity failure;
	   w_num <= "0010"; wait for 10 ns;
	       assert (w_Cout = "1011011") report "Two display" severity failure;
	   w_num <= "0011"; wait for 10 ns;
	       assert (w_Cout = "1001111") report "Three display" severity failure;
	   w_num <= "0100"; wait for 10 ns;
	       assert (w_Cout = "1100110") report "Four display" severity failure;
	   w_num <= "0101"; wait for 10 ns;
	       assert (w_Cout = "1101101") report "Five display" severity failure;
	   w_num <= "0110"; wait for 10 ns;
	       assert (w_Cout = "1111101") report "Six display" severity failure;
	   w_num <= "0111"; wait for 10 ns;
	       assert (w_Cout = "0000111") report "Seven display" severity failure;
	   w_num <= "1000"; wait for 10 ns;
	       assert (w_Cout = "1111111") report "Eight display" severity failure;
	   w_num <= "1001"; wait for 10 ns;
	       assert (w_Cout = "1100111") report "Nine display" severity failure;
	   w_num <= "1010"; wait for 10 ns;
	       assert (w_Cout = "1110111") report "Ten display" severity failure;
	   w_num <= "1011"; wait for 10 ns;
	       assert (w_Cout = "1111100") report "Eleven display" severity failure;
	   w_num <= "1100"; wait for 10 ns;
	       assert (w_Cout = "1011000") report "Twelve display" severity failure;
	   w_num <= "1101"; wait for 10 ns;
	       assert (w_Cout = "1011110") report "Thirteen display" severity failure;
	   w_num <= "1110"; wait for 10 ns;
	       assert (w_Cout = "1111001") report "Fourteen display" severity failure;
	   w_num <= "1111"; wait for 10 ns;
	       assert (w_Cout = "1110001") report "Fifteen display" severity failure;
-- Need "0000000" for other cases?
	       
		wait; -- wait forever
	end process;	
	
	

end Behavioral;
