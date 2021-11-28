Program Ficha16 ;
Var M,P,V,T:Real;
Begin
  Writeln('Insira a pressão do pneu');
  Read(P);
  Writeln('Insira o volume do pneu');
  Read(V);
  Writeln('Insira a temperatura do pneu');
  Read(T);
  M:=P*V/0.37*(T+460);
  Writeln('A massa do pneu é ', M:7:2);
End.