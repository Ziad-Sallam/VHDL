  
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all; 


ENTITY EE_tb IS
END EE_tb;

ARCHITECTURE BEHAVIORAL OF EE_tb IS

  SIGNAL finished : STD_LOGIC:= '0';
  CONSTANT period_time : TIME := 83333 ps;
  SIGNAL CLK : std_logic ;
  SIGNAL X : std_logic ;
  SIGNAL Z : std_logic ;
  COMPONENT EE IS
  
  PORT (
    CLK : in std_logic;
            X : in std_logic;
            Z : out std_logic
    
  );
  END COMPONENT;
  
BEGIN
  Sim_finished : PROCESS 
    
  BEGIN
    wait for 100000 us;
    finished <= '1';
    wait;
  END PROCESS;
  EE1 : EE  PORT MAP (
    CLK => CLK,
    X => X,
    Z => Z
  );
  Sim_CLK : PROCESS 
    
  BEGIN
    WHILE finished /= '1' LOOP
      CLK <= '0';
      wait for 10 ms;
      CLK <= '1';
      wait for 10 ms;
    END LOOP;
  
    wait;
  END PROCESS;
  Sim_X : PROCESS
  BEGIN
    WHILE finished /= '1' LOOP
      X <= '0';
      wait for 20 ms;
      X <= '1';
      wait for 5 ms;
      X <= '1';
      wait for 7 ms;
    END LOOP;
  
    wait;
  END PROCESS;
  
END BEHAVIORAL;