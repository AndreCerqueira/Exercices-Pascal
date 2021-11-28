Program Ficha23 ;
Var N1,N2:integer;
		total:real;
Begin
	Writeln('Insira dois numeros');
	Read(N1,N2);
	If(N2=0)Then
	  Writeln('Impossivel')
	Else
	  Begin
	    total:=N1/N2;
	    Writeln('O total é ',total:3:1);
	  End;  
End.