Program Ficha28 ;
Var N1,N2,N3:integer;
Begin
	Writeln('Insira tr�s numeros');
	Read(N1,N2,N3);
	If(N2<N1) AND (N3<N1)Then
	  Writeln('O maior numero � ',N1)
	Else
	  Begin
		  If(N1<N2) AND (N3<N2)Then
		    Writeln('O maior numero � ',N2)
		  Else
			  Writeln('O maior numero � ',N3);
		End;  
End.		