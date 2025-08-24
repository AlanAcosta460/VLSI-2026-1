library IEEE;
use IEEE.std_logic_1164.ALL;

entity p3 is 
	port (A, B, C : in std_logic;
		   Y1, Y2  : out std_logic);
end p3;

architecture design_style of p3 is
begin
	Y1 <= (not A and not B and not C) 
          or (not A and not B and C) 
          or (not A and B and C) 
          or (A and not B and C);
	Y2 <= (A or not B or C) 
          and (not A or B or C) 
          and (not A or not B or C) 
          and (not A or not B or not C);
end design_style; 
