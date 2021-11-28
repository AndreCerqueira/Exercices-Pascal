Program ficha29 ;
Var N1,N2,N3:integer;
Begin
  Writeln('Insira os 3 lados do triângulo');
  Read(N1,N2,N3);
  If(N1+N2>=N3)Then
    Begin
      If(N1=N2) AND (N1=N3)Then
        Writeln('O triangulo é equilatero')
      Else
			  Begin
			    If(N1=N2) OR (N2=N3)Then
			      Writeln('O triangulo é isosceles')
			    Else
					  Writeln('O triangulo é escaleno');
				End;
		End
	Else
		 Writeln('O triangulo é invalido');			  					  
End.