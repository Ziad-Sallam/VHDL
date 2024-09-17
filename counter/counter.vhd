library IEEE;
use IEEE.numeric_std.all;
use IEEE.STD_LOGIC_1164.ALL;




entity counter is
    port(
        clk,X : in std_logic;
        output : out std_logic_vector(3 downto 0)
        
    );
end entity counter;

architecture rtl of counter is
    
    signal Q : std_logic_vector(3 downto 0) := "0000";
    signal q0,q1,q2,q3,clk0,clk1,clk2,clk3 : STD_LOGIC;
    
begin
    q0 <= '1';
    q1 <= (X XNOR Q(3)) OR (X AND (Q(2) OR Q(1)));
    q2 <= '1';
    q3 <= (NOT (Q(2) OR Q(1)) AND (X OR Q(3))) OR ((Q(2) AND Q(1)) AND (NOT (X OR Q(3)) ) );
    clk1 <= Q(0) XOR X;
    clk2 <= X XOR Q(1);
    clk3 <= X XOR Q(0);
    clk0 <= clk;
    
    
 
    t0 : entity work.t_flip_flop
    port map (
        T   => '1',
        CLK => clk0,
        en => clk,
        Q   => Q(0)
        
    );
    
    t1 : entity work.t_flip_flop
    port map (
        T   => q1,
        CLK => clk1,
        en => clk,
        Q   => Q(1)
        
    );
    
    t2 : entity work.t_flip_flop
    port map (
        T   => '1',
        CLK => clk2,
        en => clk,
        Q   => Q(2)
        
    );
    
    
    t3 : entity work.t_flip_flop
    port map (
        T   => q3,
        CLK => clk3,
        en => clk,
        Q   => Q(3)
        
    );
    process(X)
    begin
        
        
    end process;
    
    output <= Q;

end architecture rtl;
