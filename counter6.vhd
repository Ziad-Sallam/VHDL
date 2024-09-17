library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity counter6 is
    port(
        clock: in STD_LOGIC;
        outbits: out UNSIGNED(5 downto 0)
    );
end entity counter6;

architecture rtl of counter6 is
    
    COMPONENT counter2 IS
        port (
            clock  : in STD_LOGIC;
            enable : in STD_LOGIC;
            cout   : out STD_LOGIC;
            q1     : out STD_LOGIC;
            q0     : out STD_LOGIC
        );
    end component counter2;
    signal c1, c2, c3: STD_LOGIC;
begin
    
    cntr1: counter2 port map(clock, '1', c1,outbits(1), outbits(0));
    cntr2: counter2 port map(c1, '1', c2,outbits(3), outbits(2));
    cntr3: counter2 port map(c2, '1', c3,outbits(5), outbits(4));

end architecture rtl;