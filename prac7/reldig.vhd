library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity reldig is
	port( disp1, disp2: out std_logic_vector(6 downto 0);
			disp3, disp4: out std_logic_vector(6 downto 0);
			disp5, disp6: out std_logic_vector(6 downto 0);
			clk : in std_logic;
			reset : in std_logic);
end reldig;

architecture behavioral of reldig is
begin
	process(clk,reset)
		variable retraso : integer range 0 to 50000001;
		variable counter : integer range 0 to 10;
		variable vis : integer range 0 to 50000000;
		variable us : integer range 0 to 9;
		variable ds : integer range 0 to 5;
		variable um : integer range 0 to 9;
		variable dm : integer range 0 to 5;
		variable uh : integer range 0 to 9;
		variable dh : integer range 0 to 2;
		variable tempus : integer range 0 to 9;
		variable tempds : integer range 0 to 9;
		variable tempum : integer range 0 to 9;
		variable tempdm : integer range 0 to 9;
		variable tempuh : integer range 0 to 9;
		variable tempdh : integer range 0 to 9;
	begin
		if(clk ='1' and clk'event) then
			if (reset ='0')then
				counter :=9;
				us :=9;
				ds :=5;
				um :=9;
				dm :=5;
				uh :=3;
				dh :=2;
			end if;
			vis := vis + 1;

			if (retraso<50000000)then
				retraso := retraso + 1;
			else
				counter := counter + 1;
				retraso := 0;
			end if;

			if (counter>9)then
				ds := ds + 1;
				counter := 0;
				if (ds>5)then
					ds := 0;
					um := um + 1;
					if (um>9)then
						um := 0;
						dm := dm + 1;
						if (dm>5)then
							dm := 0;
							uh := uh + 1;
							if (uh>9)then
								uh := 0;
								dh := dh + 1;
							end if;
						end if;
					end if;
				end if;
			else
				us := counter;
			end if;
			
			if (dh=2 and uh=4)then
				uh := 0;
				dh := 0;
			end if;

			if (vis<250000)then
				tempds := ds;
				tempus := us;
				tempum := um;
				tempdm := dm;
				tempuh := uh;
				tempdh := dh;
			end if;

			if (vis>500000)then
				vis := 0;
			end if;

			case tempus is
				when 0 => disp1 <= "1000000"; --0
				when 1 => disp1 <= "1111001"; --1
				when 2 => disp1 <= "0100100"; --2
				when 3 => disp1 <= "0110000"; --3
				when 4 => disp1 <= "0011001"; --4
				when 5 => disp1 <= "0010010"; --5
				when 6 => disp1 <= "0000010"; --6
				when 7 => disp1 <= "1111000"; --7
				when 8 => disp1 <= "0000000"; --8
				when 9 => disp1 <= "0010000"; --9
				when others => null;
			end case;
			case tempds is
				when 0 => disp2 <= "1000000"; --0
				when 1 => disp2 <= "1111001"; --1
				when 2 => disp2 <= "0100100"; --2
				when 3 => disp2 <= "0110000"; --3
				when 4 => disp2 <= "0011001"; --4
				when 5 => disp2 <= "0010010"; --5
				when 6 => disp2 <= "0000010"; --6
				when 7 => disp2 <= "1111000"; --7
				when 8 => disp2 <= "0000000"; --8
				when 9 => disp2 <= "0010000"; --9
				when others => null;
			end case;
			case tempum is
				when 0 => disp3 <= "1000000"; --0
				when 1 => disp3 <= "1111001"; --1
				when 2 => disp3 <= "0100100"; --2
				when 3 => disp3 <= "0110000"; --3
				when 4 => disp3 <= "0011001"; --4
				when 5 => disp3 <= "0010010"; --5
				when 6 => disp3 <= "0000010"; --6
				when 7 => disp3 <= "1111000"; --7
				when 8 => disp3 <= "0000000"; --8
				when 9 => disp3 <= "0010000"; --9
				when others => null;
			end case;
			case tempdm is
				when 0 => disp4 <= "1000000"; --0
				when 1 => disp4 <= "1111001"; --1
				when 2 => disp4 <= "0100100"; --2
				when 3 => disp4 <= "0110000"; --3
				when 4 => disp4 <= "0011001"; --4
				when 5 => disp4 <= "0010010"; --5
				when 6 => disp4 <= "0000010"; --6
				when 7 => disp4 <= "1111000"; --7
				when 8 => disp4 <= "0000000"; --8
				when 9 => disp4 <= "0010000"; --9
				when others => null;
			end case;
			case tempuh is
				when 0 => disp5 <= "1000000"; --0
				when 1 => disp5 <= "1111001"; --1
				when 2 => disp5 <= "0100100"; --2
				when 3 => disp5 <= "0110000"; --3
				when 4 => disp5 <= "0011001"; --4
				when 5 => disp5 <= "0010010"; --5
				when 6 => disp5 <= "0000010"; --6
				when 7 => disp5 <= "1111000"; --7
				when 8 => disp5 <= "0000000"; --8
				when 9 => disp5 <= "0010000"; --9
				when others => null;
			end case;
			case tempdh is
				when 0 => disp6 <= "1000000"; --0
				when 1 => disp6 <= "1111001"; --1
				when 2 => disp6 <= "0100100"; --2
				when 3 => disp6 <= "0110000"; --3
				when 4 => disp6 <= "0011001"; --4
				when 5 => disp6 <= "0010010"; --5
				when 6 => disp6 <= "0000010"; --6
				when 7 => disp6 <= "1111000"; --7
				when 8 => disp6 <= "0000000"; --8
				when 9 => disp6 <= "0010000"; --9
				when others => null;
			end case;
		end if;
	end process;
end behavioral;