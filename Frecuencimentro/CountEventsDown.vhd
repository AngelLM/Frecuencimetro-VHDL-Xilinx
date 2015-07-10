----------------------------------------------------------------------------------
-- Project Name: Frecuency Counter 
-- Target Devices: Spartan 3
-- Engineers: Ángel Larrañaga Muro
-- 			 Nicolás Jurado Jiménez
-- 			 Gonzalo Matarrubia Gonzalez
-- License: All files included in this proyect are licensed under a Creative Commons Attribution-ShareAlike 4.0 International License 
----------------------------------------------------------------------------------
--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity CountEventsDown is
    Port ( 
	 entrada_clk : in  STD_LOGIC;
	 reset : in  STD_LOGIC;
	 reset_cont: out STD_LOGIC;
	 salida : out STD_LOGIC
	 );
	 
end CountEventsDown;

architecture Behavioral of CountEventsDown is
	constant cantidad: positive:=1001;
		signal temporal: STD_LOGIC;
		signal counter: positive:=cantidad;
		signal res: STD_LOGIC;
begin process(entrada_clk)
	begin
			if reset='1' then
			counter <= cantidad;
			elsif rising_edge(entrada_clk) then
			counter <= counter-1;
			end if;
			
			if counter=1 then
				temporal<='1';
			elsif counter=0 then
				temporal<='0';
				res<='1';
				counter <= cantidad;
			else
				temporal<='0';
				res<='0';
		end if;
	end process;
	
salida<=temporal;
reset_cont<=res;
end Behavioral;