Program Ficha27 ;
Var N1,N2,N3:integer;
Begin
	Writeln('Insira três numeros');
	Read(N1,N2,N3);
	If(N1>N2)Then
		Begin
		  If(N1>N3)Then
		    Writeln('O maior numero é ',N1)
		  Else
			  Writeln('O maior numero é ',N3);
		End   
	Else
		Begin
			If(N2>N3)Then
			  Writeln('O maior numero é ',N2)
			Else  
		    Writeln('O maior numero é ',N3);
		End;		  
End.