Program Ficha210 ;
Var N1,N2,OP:integer;
Begin
   Writeln('Insira dois numeros');
   Read(N1,N2);
   Writeln('Qual opera��o deseja fazer?');
   Writeln('Insira 1 para soma, 2 para subtra��o, 3 para multiplica��o e 4 para divis�o');
   Read(OP); 
   If(OP=1)Then
     Writeln('O resultado � ',N1+N2);
   If(OP=2)Then
     Writeln('O resultado � ',N1-N2);
	 If(OP=3)Then
     Writeln('O resultado � ',N1*N2);  
   If(OP=4)Then
     Begin
       If(N2=0)Then
         Writeln('Impossivel')
       Else
			   Writeln('O resultado � ', N1/N2:3:2);
		 End;	   
End.