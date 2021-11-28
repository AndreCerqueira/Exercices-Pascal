Program Ficha111 ;
Var kb,byt,bit:integer;
Begin
  Writeln('Insira uma medida em Kb');
  Read(Kb);
  byt:=Kb*1024;
  bit:=byt*8;
  Writeln('O resultado em bits é ',bit);
End.