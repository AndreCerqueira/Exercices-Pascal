Program Ficha26 ;
Var N,raiz:real;
Begin
	Writeln('Insira um numero');
	Read(N);
	If(N<0)Then
	  Writeln('Impossivel')
	Else
		Begin  
	    raiz:= SQRT(N);
      Writeln('O resultado da raiz é ',raiz:3:2);
		End;	 
End.