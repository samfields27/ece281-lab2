----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/25/2025 03:50:34 PM
-- Design Name: 
-- Module Name: sevenseg_decoder - Behavioral
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

entity sevenseg_decoder is
    Port ( i_Hex : in STD_LOGIC_VECTOR (3 downto 0);
           o_seg_n : in STD_LOGIC_VECTOR (6 downto 0));
end sevenseg_decoder;

architecture Behavioral of sevenseg_decoder is

begin
with i_Hex select
o_seg_n <=  "0111111" when "0000",
        "0000110" when "0001"
        "1011011" when "0010"
        "0000000" when "0000"
        "0000000" when "0000"
        "0000000" when "0000"
        "0000000" when "0000"
        "0000000" when "0000"
        "0000000" when "0000"
        "0000000" when "0000"
        "0000000" when "0000"
        "0000000" when "0000"
        "0000000" when "0000"
        "0000000" when "0000"
        "0000000" when "0000"
        "0000000" when "0000"
        "0000000" when others;

end Behavioral;
