Program Ficha115 ;
Var comp,larg,altura,parede1,parede2,caixas:integer;
		total:real;
Begin
  Writeln('Insira o comprimento da cozinha');
  Read(comp);
  Writeln('Insira a largura da cozinha');
  Read(larg);
  Writeln('Insira a altura da cozinha');
  Read(altura);
  parede1:=larg*altura;
  parede2:=comp*altura;
  caixas:=(parede1*2)+(parede2*2);
  total:=caixas/1.5;
  Writeln('A quantidade de caixas necessárias é ',total:4:2);
End.