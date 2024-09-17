library IEEE;
use IEEE.std_logic_1164.all;

entity HA is
    port(
        A,B : in STD_LOGIC ;
        S , C : out STD_LOGIC
    );
end entity HA;

architecture half_adder of HA is -- Data flow architecture
begin

    S <= A xor B ;
    C <= A and B ;

end half_adder;