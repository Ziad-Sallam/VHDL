library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity full_adder is
    port(
        a,b,cin : in STD_LOGIC;
        s, cout : out STD_LOGIC
    );
end entity full_adder;

architecture rtl of full_adder is
    signal s1,s2,c1,c2 : STD_LOGIC;
begin
    
    
    ha1 : entity work.half_adder
    port map (
        a => a,
        b => b,
        s => s1,
        c => c1
    );
    ha2 : entity work.half_adder
    port map (
        a => s1,
        b => cin,
        s => s,
        c => c2
    );
    cout <= c1 or c2;
    
end architecture rtl;