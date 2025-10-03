----------------------------------------------------------------------------------
-- Company: 
-- Engineer: DELIN Matthieu 
-- 
-- Create Date: 10/01/2025 05:25:38 PM
-- Design Name: 
-- Module Name: uart_to_bram_0 - Behavioral
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

entity adaptator_0 is
    Port ( 
    -- Input 
        data_in : in std_logic_vector(7 downto 0);
        data_valid : in std_logic ;
        addr : in std_logic_vector (7 downto 0);
        
   -- Output 
        addr_32 : out std_logic_vector(31 downto 0);
        dina_32 : out std_logic_vector(31 downto 0);
        wea_32: out std_logic_vector(3 downto 0)
);
end adaptator_0;

architecture Behavioral of adaptator_0 is

begin
    -- 0 paddign with the data at the weak bit 
    dina_32 <= (31 downto 8 => '0') & data_in; --place our 1 byte vector inside our 4 byte vector 
    
    --send te writable information
    wea_32 <= "0001" when data_valid='1' else "0000";
    
    -- Adapt address as well
    addr_32 <= (31 downto 8 => '0') & addr;

end Behavioral;