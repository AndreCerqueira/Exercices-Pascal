Program Ficha25 ;
Var N1,N2,med:real;
Begin
	Writeln('Insira duas notas');
	Read(N1,N2);
	med:=(N1+N2)/2;
	If(med>=9.5)Then
	  Writeln('O aluno foi aprovado com m�dia de ',med:2:1)
	Else  
	  Writeln('O aluno foi reprovado com m�dia de ',med:2:1);
End.