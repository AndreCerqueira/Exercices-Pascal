Program Ficha13 ;
Var temp:integer;
    celcius:Real;
Begin
  Writeln('Insira uma temperatura em graus Fahrenheit');
  Read(temp);
  celcius:= 5/9*(temp-32);
  Writeln('A temperatura em Celcius é ',celcius:2:1);
End.