Program Ficha14 ;
Var N1,N2,soma:integer;
		med:Real;
Begin
  Writeln('Insira dois n�meros');
  Read(N1,N2);
  soma:=N1+N2;
  med:=soma/2;
  Write('A m�dia � ',med:2:1);
End.