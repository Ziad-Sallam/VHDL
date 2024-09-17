library IEEE;
use IEEE.std_logic_1164.all;

entity FA is
    port(
        A,B,Cin : in std_logic ;
        S,Cout : out STD_LOGIC
    );
end entity FA;

architecture full_adder of FA is
    
component HA
    port(A,B : in STD_LOGIC ; S,C : out STD_LOGIC);
end component ;
    
signal HA1_out , HA2_carry , HA1_carry : STD_LOGIC ;

begin
    HA1 : HA port map(A,B,HA1_out , HA1_carry) ;
    HA2 : HA port map(HA1_out , Cin , S , HA2_carry) ;
    
    Cout <= HA1_carry or HA2_carry ;
end full_adder;