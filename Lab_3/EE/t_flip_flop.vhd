library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity t_flip_flop is
    Port ( T : in STD_LOGIC;
        CLK : in STD_LOGIC;
        Q : out STD_LOGIC);
    
end t_flip_flop;

architecture Behavioral of t_flip_flop is
    signal Q_int : STD_LOGIC := '0';
begin
    process(CLK)
    begin
        
        if rising_edge(CLK) then
            
            if T = '1' then
                
                Q_int <= not Q_int;
            end if;
        end if;
    end process;
    
    Q <= Q_int;

end Behavioral;
