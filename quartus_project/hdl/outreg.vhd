library IEEE;
use IEEE.std_logic_1164.all;

entity outreg is
port(
  ld:      in std_logic;
  clk:     in std_logic;
  clr:     in std_logic;
  d_in:    in std_logic_vector(7 downto 0);
  d_out:   out std_logic_vector(7 downto 0));
end outreg;

architecture description of outreg is

signal regval: std_logic_vector(7 downto 0) := "00000000";

begin

  d_out <= regval;
  
  process (clk, ld, clr) is
  begin
  	if rising_edge(clk) then
   	if ld = '1' then
      	regval <= d_in;
      end if;  
    end if;
    if clr = '1' then
      regval <= "00000000";
    end if;
  end process;
   	

end description;