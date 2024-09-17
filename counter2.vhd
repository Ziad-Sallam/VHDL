library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity counter2 is
    port(
        clock, enable: in STD_LOGIC;
        cout, q1, q0: out STD_LOGIC
    );
end entity counter2;

architecture rtl of counter2 is
    signal temp : UNSIGNED(1 downto 0) := "00";
begin
    process(clock, enable)
    begin
        
        if (enable = '1') then
            if (falling_edge(clock)) then
                temp <= temp + 1;
            end if;
        end if;
    end process;
    q1 <= temp(1);
    q0 <= temp(0);
    cout <= temp(1) and temp(0) and enable;
end architecture rtl;

