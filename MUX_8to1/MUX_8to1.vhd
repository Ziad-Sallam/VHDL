library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity MUX_8to1 is
    port(
        I0 , I1 , I2 , I3 , I4 , I5 , I6 , I7 : in std_logic ;
        S : in std_logic_vector(2 downto 0) ; --adress
        Z : out std_logic
    );
end entity MUX_8to1;

architecture rtl of MUX_8to1 is
    --signal Z : std_logic := '0';
begin
    process(I0 , I1 , I2 , I3 , I4 , I5 , I6 , I7 , S)
    begin
        case S is
            when "000" =>
                Z <= I0 ;
            when "001" =>
                Z <= I1 ;
            when "010" =>
                Z <= I2 ;
            when "011" =>
                Z <= I3 ;
            when "100" =>
                Z <= I4 ;
            when "101" =>
                Z <= I5 ;
            when "110" =>
                Z <= I6 ;
            when "111" =>
                Z <= I7 ;
            when others =>
                null ;
        end case ;
        --output <= Z ;
    end process ;
end rtl;