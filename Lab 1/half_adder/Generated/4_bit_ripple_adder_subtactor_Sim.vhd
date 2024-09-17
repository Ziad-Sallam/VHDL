  
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all; 


ENTITY RibbleAdder_tb IS
END RibbleAdder_tb;

ARCHITECTURE BEHAVIORAL OF RibbleAdder_tb IS

  SIGNAL finished : STD_LOGIC:= '0';
  CONSTANT period_time : TIME := 83333 ps;
  SIGNAL A0 : std_logic ;
  SIGNAL A1 : std_logic ;
  SIGNAL A2 : std_logic ;
  SIGNAL A3 : std_logic ;
  SIGNAL B0 : std_logic ;
  SIGNAL B1 : std_logic ;
  SIGNAL B2 : std_logic ;
  SIGNAL B3 : std_logic ;
  SIGNAL cntrl : std_logic ;
  SIGNAL c0 : std_logic ;
  SIGNAL c1 : std_logic ;
  SIGNAL c2 : std_logic ;
  SIGNAL c3 : std_logic ;
  SIGNAL carry : std_logic ;
  COMPONENT RibbleAdder IS
  
  PORT (
    A0, A1, A2, A3, B0, B1, B2, B3, cntrl: in std_logic;
            c0, c1, c2, c3, carry: out std_logic
    
  );
  END COMPONENT;
  
BEGIN
  Sim_finished : PROCESS 
    
  BEGIN
    wait for 100000 us;
    finished <= '1';
    wait;
  END PROCESS;
  RibbleAdder1 : RibbleAdder  PORT MAP (
    A0 => A0,
    A1 => A1,
    A2 => A2,
    A3 => A3,
    B0 => B0,
    B1 => B1,
    B2 => B2,
    B3 => B3,
    cntrl => cntrl,
    c0 => c0,
    c1 => c1,
    c2 => c2,
    c3 => c3,
    carry => carry
  );
  Sim_A0 : PROCESS 
    
  BEGIN
    WHILE finished /= '1' LOOP
      wait;
    END LOOP;
  
    wait;
  END PROCESS;
  Sim_A1 : PROCESS 
    
  BEGIN
    WHILE finished /= '1' LOOP
      wait;
    END LOOP;
  
    wait;
  END PROCESS;
  Sim_A2 : PROCESS 
    
  BEGIN
    WHILE finished /= '1' LOOP
      wait;
    END LOOP;
  
    wait;
  END PROCESS;
  Sim_A3 : PROCESS 
    
  BEGIN
    WHILE finished /= '1' LOOP
      wait;
    END LOOP;
  
    wait;
  END PROCESS;
  Sim_B0 : PROCESS 
    
  BEGIN
    WHILE finished /= '1' LOOP
      wait;
    END LOOP;
  
    wait;
  END PROCESS;
  Sim_B1 : PROCESS 
    
  BEGIN
    WHILE finished /= '1' LOOP
      wait;
    END LOOP;
  
    wait;
  END PROCESS;
  Sim_B2 : PROCESS 
    
  BEGIN
    WHILE finished /= '1' LOOP
      wait;
    END LOOP;
  
    wait;
  END PROCESS;
  Sim_B3 : PROCESS 
    
  BEGIN
    WHILE finished /= '1' LOOP
      wait;
    END LOOP;
  
    wait;
  END PROCESS;
  Sim_cntrl : PROCESS
  BEGIN
    WHILE finished /= '1' LOOP
      wait;
    END LOOP;
  
    wait;
  END PROCESS;
  
END BEHAVIORAL;