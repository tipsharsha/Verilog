LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
ENTITY mux IS
  PORT (i0, i1, i2, i3, a, b: IN std_logic;
        q : OUT std_logic);
END mux;
Architecture 41MUX of MUX is
BEGIN
  q <= i0 WHEN a = '0' AND b = '0' ELSE
       i1 WHEN a = '1' AND b = '0' ELSE
       i2 WHEN a = '0' AND b = '1' ELSE
       i3 WHEN a = '1' AND b = '1' ELSE
       '0';
END 41MUX;