library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity CounterTB is
end entity;

architecture count_arch_test of CounterTB is
    signal rst: std_logic := '0';
    signal clk: std_logic := '1';

    constant clockFrequencyHz : integer := 500;
    constant clockPeriod: time := 1000 ms / clockFrequencyHz;
    
begin

    i_Counter : entity work.Counter(count_arch)
    generic map(clockFrequencyHz => clockFrequencyHz)
    port map (
        clk => clk,
        rst => rst
    );

    clk <= not clk after clockPeriod / 2;

end;
