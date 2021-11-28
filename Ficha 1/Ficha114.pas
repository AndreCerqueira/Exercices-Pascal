Program Ficha114 ;
Var raparigas,rapazes:real;
		alunos,rap,rpz:integer;
Begin
  Writeln('Insira o numero total de alunos');
  Read(alunos);
  Repeat
    Writeln('Insira o numero de raparigas');
    Read(rap);
  Until(rap <= alunos);
  rpz:=alunos-rap;
  raparigas:=(rap*100)/alunos;
  rapazes:=(rpz*100)/alunos;
  Writeln('A percentagem de raparigas é ',raparigas:3:0,'%');
  Writeln('A percentagem de rapazes é ',rapazes:3:0,'%');
End.