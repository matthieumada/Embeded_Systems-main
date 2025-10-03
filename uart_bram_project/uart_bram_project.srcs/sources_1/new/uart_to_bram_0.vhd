----------------------------------------------------------------------------------
-- Company: 
-- Engineer: DELIN  Matthieu 
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
use IEEE.NUMERIC_STD.ALL;

entity uart_to_bram_0 is
    Port ( 
        clk        : in std_logic;
        rst        : in std_logic;
        uart_rxd   : in std_logic;
        data_out   : out std_logic_vector(7 downto 0);
        data_valid : out std_logic;
        addr       : out std_logic_vector(7 downto 0)
    );
end uart_to_bram_0;

architecture Behavioral of uart_to_bram_0 is
    signal data_reg : unsigned(7 downto 0) := (others => '0');
    signal addr_reg : unsigned(7 downto 0) := (others => '0');
begin
    process(clk,rst)
    begin
        if rst = '1' then
            data_reg   <= (others => '0');
            addr_reg   <= (others => '0');
            data_valid <= '0';
        elsif rising_edge(clk) then
            -- Écriture de test avec valeurs incrémentées
            data_reg   <= data_reg + 1;
            addr_reg   <= addr_reg + 1;
            data_valid <= '1';
        end if;
    end process;

    -- Assignation des sorties
    data_out <= std_logic_vector(data_reg);
    addr     <= std_logic_vector(addr_reg);
    
end Behavioral;
