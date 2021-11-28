Program Ficha19 ;
Var H,Min,Seg,temp1,temp2,temp3:integer;
Begin
  Writeln('Insira as horas');
  Read(H);
  Writeln('Insira os minutos');
  Read(Min);
  Writeln('Insira os segundos');
  Read(Seg);
  temp1:=H*3600;
	temp2:=Min*60;
	temp3:=temp1+temp2+Seg;
	Writeln('O tempo total em segundos é ',temp3); 
End.