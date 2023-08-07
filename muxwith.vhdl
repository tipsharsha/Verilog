LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
ENTITY mux IS
  PORT (i0, i1, i2, i3, a, b: IN std_logic;
        q : OUT std_logic);
END mux;
Architecture 41MUX of MUX is
BEGIN
  with (a&b) select
  q <= I0 when "00",
    I1 when "01",
    I2 when "10",
    I3 when "11",
    '0' when others;
END 41MUX;