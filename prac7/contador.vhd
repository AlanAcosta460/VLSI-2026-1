library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity contador is
	port( display: out std_logic_vector(6 downto 0);
			display1: out std_logic_vector(6 downto 0);
			clk : in std_logic;
			reset : in std_logic);
end contador;

architecture behavioral of contador is
begin
	process(clk,reset)
		variable delay : integer range 0 to 50000001;
		variable counter : integer range 0 to 10;
		variable visualizacion : integer range 0 to 50000000;
		variable decenas : integer range 0 to 10;
		variable unidades : integer range 0 to 9;
		variable temporal : integer range 0 to 9;
		variable temporal1 : integer range 0 to 9;
	begin
		if(clk ='1' and clk'event) then
			if (reset ='0')then
				counter :=0;
				decenas :=0;
				unidades :=0;
			end if;

			visualizacion := visualizacion + 1;
			if (delay<50000000)then
				delay:=delay + 1;
			else
				counter := counter + 1;
				delay := 0;
			end if;

			if (counter>9)then
				decenas := decenas + 1;
				counter := 0;
			else
				unidades := counter;
			end if;
			
			if(decenas>9)then
				decenas := 0;
			end if;

			if (visualizacion<250000)then
				temporal1 := decenas;
				temporal := unidades;
			end if;

			if (visualizacion>500000)then
				visualizacion := 0;
			end if;
			
			case temporal is
				when 0 => display <= "1000000"; --0
				when 1 => display <= "1111001"; --1
				when 2 => display <= "0100100"; --2
				when 3 => display <= "0110000"; --3
				when 4 => display <= "0011001"; --4
				when 5 => display <= "0010010"; --5
				when 6 => display <= "0000010"; --6
				when 7 => display <= "1111000"; --7
				when 8 => display <= "0000000"; --8
				when 9 => display <= "0010000"; --9
				when others => null;
			end case;

			case temporal1 is
				when 0 => display1 <= "1000000"; --0
				when 1 => display1 <= "1111001"; --1
				when 2 => display1 <= "0100100"; --2
				when 3 => display1 <= "0110000"; --3
				when 4 => display1 <= "0011001"; --4
				when 5 => display1 <= "0010010"; --5
				when 6 => display1 <= "0000010"; --6
				when 7 => display1 <= "1111000"; --7
				when 8 => display1 <= "0000000"; --8
				when 9 => display1 <= "0010000"; --9
				when others => null;
			end case;
		end if;
	end process;
end behavioral;