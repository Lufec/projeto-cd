entity inversor is
	port(a: in bit;
		  cout: out bit);		

end inversor;

architecture inverter of inversor is
begin
	cout<= not a; --inversao
end inverter;