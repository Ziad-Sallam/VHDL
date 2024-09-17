library IEEE;
use IEEE.std_logic_1164.all;
-- X + Y = Sum
entity Adder_5bit is
    port(
        X,Y : in std_logic_vector (4 downto 0) ;
        Sum : out std_logic_vector (5 downto 0)
    );
end entity Adder_5bit;

architecture final_adder of Adder_5bit is
    
component FA
    port(A , B , Cin : in STD_LOGIC ; S , Cout : out STD_LOGIC) ;
end component ;

signal C1 , C2 , C3 , C4 : std_logic ;
signal Z : std_logic_vector(5 downto 0) ;

begin
    
    FA1 : FA port map (X(0) , Y(0) , '0' , Z(0) , C1) ;
    FA2 : FA port map (X(1) , Y(1) , C1 , Z(1) , C2) ;
    FA3 : FA port map (X(2) , Y(2) , C2 , Z(2) , C3) ;
    FA4 : FA port map (X(3) , Y(3) , C3 , Z(3) , C4) ;
    FA5 : FA port map (X(4) , Y(4) , C4 , Z(4) , Z(5)) ;
    
    Sum(0) <= Z(0) ;
    Sum(1) <= Z(1) ;
    Sum(2) <= Z(2) ;
    Sum(3) <= Z(3) ;
    Sum(4) <= Z(4) ;
    Sum(5) <= Z(5) ;

end final_adder ;