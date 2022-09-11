library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity Counter is
    generic(clockFrequencyHz : natural);
    Port 
    ( 
        rst, clk : in std_logic;
        result: out std_logic_vector(0 to 3)
    );
end entity;

architecture count_arch of Counter is
    -- signal nextValue: std_logic_vector(0 to 3) := "1111";
    -- signal nextValue: unsigned := 0;
    signal nextValue: integer := 0;

begin
    result <= std_logic_vector(to_unsigned(nextValue, 4));

    counting: process(rst, clk)
    begin
        
        if (rst = '1') then 
            nextValue <= 0;
        elsif (clk'event and clk = '1') then 
            nextValue <= (nextValue + 1);
            
            if (nextValue = 15) then
                nextValue <= 0;
            end if;

        end if;


    end process counting;


end count_arch;