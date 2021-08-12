----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.08.2021 11:29:26
-- Design Name: 
-- Module Name: VGA - Behavioral
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


library IEEE;-- ceci est une bibliothèque
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity VGA is
Port ( 
    R,G,B :         out std_logic_vector (3 downto 0);
    Hsync,Vsync:    out std_logic;
    clk,reset:      in  std_logic
);
end VGA;

architecture Behavioral of VGA is
    constant TS_H : integer := 799; -- 799 nombre de pixels par ligne
    constant TDISP_H : integer := 639;  --  639   Horizontal Display (640)
	constant TFP_H : integer := 20;         --   16   Right border (front porch)
	constant TPW_H : integer := 96;       --   96   Sync pulse (Retrace)
	constant TBP_H : integer := 48;        --   48   Left boarder (back porch)
	
	constant TS_V: integer := 520; -- 520 nombre de pixels par colonne
	constant TDISP_V : integer := 479;   --  479   Vertical Display (480)
	constant TFP_V : integer := 5;       	 --   10   Right border (front porch)
	constant TPW_V : integer := 2;				 --    2   Sync pulse (Refresh)
	constant TBP_V : integer := 29;       --   29   Left boarder (back porch)
begin


end Behavioral;
