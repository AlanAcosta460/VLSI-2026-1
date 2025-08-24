library IEEE;
use IEEE.std_logic_1164.ALL;

entity p2 is 
	port (A, B, C : in std_logic;
		   Y1, Y2  : out std_logic);
end p2;

architecture design_style of p2 is
begin
	Y1 <= (not A and not B and C) 
          or (not A and B and not C) 
          or (A and not B and not C) 
          or (A and B and not C);
	Y2 <= (A or B or C) 
          and (A or not B or not C) 
          and (not A or B or not C) 
          and (not A or not B or not C);
end design_style; 
