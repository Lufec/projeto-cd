entity display is
	port(y: in bit_vector(3 downto 0);
	     ld: in bit;
	     dsp: out bit_vector (6 downto 0));
end display;

architecture mostrar of display is
begin  
   --0 a 6 -> a,b,c,d,e,f,g        Esse salseiro todo foram as funcoes que achei por logica booleana (talvez existam mais simples) 
	--ld é o prototipo de ligar desligar, será substituido pelo ctrl
	dsp(0)<=ld and not((not y(3) and not y(1) and(y(2) xor y(0))) or (y(3) and y(0) and(y(2) xor y(1))));    
	dsp(1)<=ld and not((not y(3) and y(2) and (y(1) xor y(0))) or (y(3) and((y(1) and y(0)) or (y(2) and(not y(0) or y(1))))));
	dsp(2)<=ld and not((y(1) and not y(0) and (y(3) xnor y(2))) or (y(3) and y(2) and (y(1) xnor y(0))));
	dsp(3)<=ld and not((not y(3) and not y(1) and (y(2) xor y(0))) or (y(1) and ((y(3) and not y(2) and not y(0)) or (y(2) and y(0)))));
	dsp(4)<=ld and not((not y(2) and not y(1) and  y(0))or (not y(3) and y(1) and y(0))or (not y(3) and y(2) and not y(1)));
	dsp(5)<=ld and not((not y(3) and not y(2) and (y(0) or y(1)))or (y(2) and y(0) and(y(3) xor y(1))));
	dsp(6)<=ld and not((not y(1) and not y(0) and(y(3) xnor y(2)))or (not y(3) and y(0) and (y(2) xnor y(1))));
end mostrar;
