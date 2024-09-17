library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity half_adder is
    port(
        a,b : in STD_LOGIC;
        s,c : out STD_LOGIC
        
    );
end entity half_adder;

architecture rtl of half_adder is
    
begin
    
    c <= a AND b;
    s <= a XOR b;
    
    
end architecture rtl;