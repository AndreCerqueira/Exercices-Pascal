Program Ficha15 ;
Var N1,Pol:Real;
Begin
  Writeln('Insira uma medida em milimetros');
	Read(N1);
	Pol:=N1*25.4;
	Writeln('A medida em polgadas � ',Pol:4:2);       
End.