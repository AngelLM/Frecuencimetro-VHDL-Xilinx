----------------------------------------------------------------------------------
-- Project Name: Frecuency Counter 
-- Target Devices: Spartan 3
-- Engineers: Ángel Larrañaga Muro
-- 			 Nicolás Jurado Jiménez
-- 			 Gonzalo Matarrubia Gonzalez
-- License: All files included in this proyect are licensed under a Creative Commons Attribution-ShareAlike 4.0 International License 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
entity Divisor is
Port ( 
			entrada_clk : in  STD_LOGIC;
			activacion: in STD_LOGIC;
			entrada : in std_logic_vector (31 downto 0);
			salida: out std_logic_vector (31 downto 0);
			reset_cont: out std_logic);
 
end Divisor;
 
architecture Behavioral of Divisor is
signal sal: std_logic_vector (31 downto 0);
signal res: std_logic;
begin
    
	process(activacion, entrada_clk)
		begin
		res<='0';
			if activacion='1' then  
				sal<=entrada;
			end if;
		
     if activacion='0' then  
--		res<='1';
--     else
	        res<='0';
     end if; 
	end process;
	salida<=sal;
	Reset_cont<=res;
end Behavioral;
