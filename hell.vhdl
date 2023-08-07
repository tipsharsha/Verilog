library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity BCD is
	Port (
		A: in std_logic;
		B: in std_logic;
		C: in std_logic;
		D: in std_logic;
		S0: out std_logic;
		S1: out std_logic;
		S2: out std_logic;
		S3: out std_logic
		);
end BCD;

architecture behavioral of BCD is
begin
	S0<=((B and D) or (B and C) or (A))
	S1<=((B and not(C) and not(D)) or (not(B) and D) or (not(B) and C))
	S2<=((C and not(D)) or (not(C) and D))
	S3<=((D))
end behavioral;
