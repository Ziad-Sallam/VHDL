library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity EE is
    port(
        CLK : in std_logic;
        X : in std_logic;
        Z : out std_logic
    );
end entity EE;

architecture rtl of EE is
    signal Q : std_logic_vector(0 to 1) := "00";
    signal t0_in : std_logic;
    
begin
    t0_in <= NOT X ;
    
    t0 : entity work.t_flip_flop
    port map (
        T   => t0_in,
        CLK => CLK ,
        Q   => Q(0)
        
    );
    
    t1 : entity work.t_flip_flop
    port map (
        T   => '1',
        CLK => CLK,
        Q   => Q(1)
    );
    

    Z <= NOT Q(0) OR Q(1) ;
end architecture rtl;