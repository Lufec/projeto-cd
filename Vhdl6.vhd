entity mux is
	port (a,b,c,d,e: in bit;
	      s: in bit_vector(2 downto 0);
			cout: out bit);
end mux;

architecture key of mux is
begin -- dado os códigos explicados na main, só segui o padrao que fizemos no lab pra 5 entradas e 1 saida
	cout<=(not s(2)and ((not s(1) and ((not s(0)and a)or (s(0)and b)))or(s(1)and not s(0)and c))) or (s(2)and ((not s(1)and not s(0) and d)or (s(1)and s(0)and e)));
end key;
