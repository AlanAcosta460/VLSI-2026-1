library IEEE;
use IEEE.std_logic_1164.ALL;

entity p4 is 
	port (A, B, C, D : in std_logic;
		   Y1, Y2     : out std_logic);
end p4;

architecture design_style of p4 is
begin
	Y1 <= (not A and not B and not C and not D) 
          or (not A and not B and C and not D) 
          or (not A and B and not C and not D) 
          or (not A and B and C and not D) 
          or (A and not B and not C and not D) 
          or (A and not B and not C and D) 
          or (A and not B and C and not D) 
          or (A and not B and C and D) 
          or (A and B and C and not D);
	Y2 <= (A or B or C or not D) 
          and (A or B or not C or not D) 
          and (A or not B or C or not D) 
          and (A or not B or not C or not D) 
          and (not A or not B or C or D) 
          and (not A or not B or C or not D) 
          and (not A or not B or not C or not D);
end design_style; 
