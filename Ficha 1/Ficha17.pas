Program Ficha17 ;
Var comp,larg,area:real;
Begin
  Writeln('Insira o comprimento');
  Read(comp);
  Writeln('Insira a largura');
  Read(larg);
  area:=comp*larg;
  Writeln('A area � ',area:3:1);
End.