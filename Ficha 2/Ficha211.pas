Program Ficha211 ;
Var N,A,P:CHAR;
Begin
  Writeln('Insira um numero');
  Read(N);
  P:=PRED(N);
  A:=SUCC(N);
  Writeln('O predecessor desse numero � ',P);
  Writeln('O sucessor desse numero � ',A);
End.