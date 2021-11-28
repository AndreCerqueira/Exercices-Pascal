Program Ficha210 ;
Var N1,N2,OP:integer;
Begin
   Writeln('Insira dois numeros');
   Read(N1,N2);
   Writeln('Qual operação deseja fazer?');
   Writeln('Insira 1 para soma, 2 para subtração, 3 para multiplicação e 4 para divisão');
   Read(OP); 
   If(OP=1)Then
     Writeln('O resultado é ',N1+N2);
   If(OP=2)Then
     Writeln('O resultado é ',N1-N2);
	 If(OP=3)Then
     Writeln('O resultado é ',N1*N2);  
   If(OP=4)Then
     Begin
       If(N2=0)Then
         Writeln('Impossivel')
       Else
			   Writeln('O resultado é ', N1/N2:3:2);
		 End;	   
End.