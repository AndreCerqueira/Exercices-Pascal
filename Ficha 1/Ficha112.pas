Program Ficha112 ;
Var euro,total:real;
Begin
  Writeln('Insira uma quantidade em euros');
  Read(euro);
  total:=euro*(1+0.23);
  Writeln('O preço com iva é ',total:4:2);
End.