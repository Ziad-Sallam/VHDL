library ieee;
use ieee.std_logic_1164.all;

entity RibbleAdder is

    port(
        A0, A1, A2, A3, B0, B1, B2, B3, cntrl: in std_logic;
        c0, c1, c2, c3, carry: out std_logic
    );

end entity;

architecture RibbleAdderArch of RibbleAdder is

    signal s1, s2, s3, s4, g1, g2, g3: std_logic;

begin

    s1 <= B0 XOR cntrl;
    s2 <= B1 XOR cntrl;
    s3 <= B2 XOR cntrl;
    s4 <= B3 XOR cntrl;

    fa1 : entity work.full_adder
    port map (
        a => A0,
        b => s1,
        cin => cntrl,
        s => c0,
        cout =>g1
    );
    fa2 : entity work.full_adder
    port map (
        a =>A1,
        b =>s2,
        cin =>g1,
        s =>c1,
        cout =>g2
    );
    fa3 : entity work.full_adder
    port map (
        a =>A2,
        b =>s3,
        cin =>g2,
        s =>c2,
        cout =>g3
    );
    fa4 : entity work.full_adder
    port map (
        a =>A3,
        b =>s4,
        cin =>g3,
        s =>c3,
        cout =>carry
    );
    
    
end RibbleAdderArch;