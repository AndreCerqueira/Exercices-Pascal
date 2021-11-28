Program Ficha28 ;
Var N1,N2,N3:integer;
Begin
	Writeln('Insira três numeros');
	Read(N1,N2,N3);
	If(N2<N1) AND (N3<N1)Then
	  Writeln('O maior numero é ',N1)
	Else
	  Begin
		  If(N1<N2) AND (N3<N2)Then
		    Writeln('O maior numero é ',N2)
		  Else
			  Writeln('O maior numero é ',N3);
		End;  
End.		