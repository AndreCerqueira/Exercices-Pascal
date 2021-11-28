Program Pzim ;
type apontador = ^integer;  

Var dados:record
		  nome:string;
		  n1:apontador;
		  n2:apontador;
    end; 
    posicao,fim:apontador;
    tecla:char;
    
Procedure menu_soma;
Begin  
  Writeln('                                                                                     ');
  textcolor(14);                                               
  Writeln('    [Instru��es: usar as setas para escolher as op�oes e ENTER para selecionar!      ');
  textcolor(10); 
  Writeln('                                                                                     ');
  Writeln('                                                                                     ');
  Writeln('                        ������������                               ������������      ');
  Writeln('                      ________________                           ________________    ');
  Writeln('                      �   �  ��  _�  �                           �   �   �  _�  �    ');
  Writeln('                          �  ��  ��                                  �- ��  ��       ');
  Writeln('                          �  ��  ��      [X]  --> SOMA               �- ��  ��       ');
  Writeln('                          �  ��  ��                                  �- ��  ��       ');
  Writeln('                          �  ��  ��                                  �- ��  ��       ');
  Writeln('                          �  ��  ��      [ ]  --> SUBTRA��O          �- ��  ��       ');
  Writeln('                          �  ��  ��                                  �- ��  ��       ');
  Writeln('                          �  ��  ��                                  �- ��  ��       ');
  Writeln('                          �  ��  ��      [ ]  --> MULTIPLICA��O      �- ��  ��       ');
  Writeln('                          �  ��  ��                                  �- ��  ��       ');
  Writeln('                          �  ��  ��                                  �- ��  ��       ');
  Writeln('                          �  ��  ��      [ ]  --> DIVIS�O            �- ��  ��       ');
  Writeln('                          �  ��  ��                                  �- ��  ��       ');
  Writeln('                          �  ��  ��                                  �- ��  ��       ');
  Writeln('                          �  ��  ��      [ ]  --> SAIR               �- ��  ��       ');
  Writeln('                          �  ��  ��                                  �- ��  ��       ');
  Writeln('                         __________                                 ___________      ');
  Writeln('                       ��������������                             ���������������    ');
  Writeln('                                                                                     ');
  
  // [#72 seta cima]  [#80 seta baixo]  [#13 enter]
  
  // OP1 � AS POSI��O DO [X]
  tecla:=readkey;
  case tecla of
    #72: posicao^:=5;
    #80: posicao^:=2;
  end;
  
End;

Procedure menu_sub;
Begin     
  Writeln('                                                                                     ');
  textcolor(14);                                               
  Writeln('    [Instru��es: usar as setas para escolher as op�oes e ENTER para selecionar!      ');
  textcolor(10);                                            
  Writeln('                                                                                     ');
  Writeln('                                                                                     ');
  Writeln('                        ������������                               ������������      ');
  Writeln('                      ________________                           ________________    ');
  Writeln('                      �   �  ��  _�  �                           �   �   �  _�  �    ');
  Writeln('                          �  ��  ��                                  �- ��  ��       ');
  Writeln('                          �  ��  ��      [ ]  --> SOMA               �- ��  ��       ');
  Writeln('                          �  ��  ��                                  �- ��  ��       ');
  Writeln('                          �  ��  ��                                  �- ��  ��       ');
  Writeln('                          �  ��  ��      [X]  --> SUBTRA��O          �- ��  ��       ');
  Writeln('                          �  ��  ��                                  �- ��  ��       ');
  Writeln('                          �  ��  ��                                  �- ��  ��       ');
  Writeln('                          �  ��  ��      [ ]  --> MULTIPLICA��O      �- ��  ��       ');
  Writeln('                          �  ��  ��                                  �- ��  ��       ');
  Writeln('                          �  ��  ��                                  �- ��  ��       ');
  Writeln('                          �  ��  ��      [ ]  --> DIVIS�O            �- ��  ��       ');
  Writeln('                          �  ��  ��                                  �- ��  ��       ');
  Writeln('                          �  ��  ��                                  �- ��  ��       ');
  Writeln('                          �  ��  ��      [ ]  --> SAIR               �- ��  ��       ');
  Writeln('                          �  ��  ��                                  �- ��  ��       ');
  Writeln('                         __________                                 ___________      ');
  Writeln('                       ��������������                             ���������������    ');
  Writeln('                                                                                     ');
  
  // [#72 seta cima]  [#80 seta baixo]  [#13 enter]
  
  // OP1 � AS POSI��O DO [X]
  tecla:=readkey;
  case tecla of
    #72: posicao^:=1;
    #80: posicao^:=3;
  end;
  
End;

Procedure menu_mult;
Begin    
Writeln('                                                                                     ');
  textcolor(14);                                               
  Writeln('    [Instru��es: usar as setas para escolher as op�oes e ENTER para selecionar!      ');
  textcolor(10);                                            
  Writeln('                                                                                     ');
  Writeln('                                                                                     ');
  Writeln('                        ������������                               ������������      ');
  Writeln('                      ________________                           ________________    ');
  Writeln('                      �   �  ��  _�  �                           �   �   �  _�  �    ');
  Writeln('                          �  ��  ��                                  �- ��  ��       ');
  Writeln('                          �  ��  ��      [ ]  --> SOMA               �- ��  ��       ');
  Writeln('                          �  ��  ��                                  �- ��  ��       ');
  Writeln('                          �  ��  ��                                  �- ��  ��       ');
  Writeln('                          �  ��  ��      [ ]  --> SUBTRA��O          �- ��  ��       ');
  Writeln('                          �  ��  ��                                  �- ��  ��       ');
  Writeln('                          �  ��  ��                                  �- ��  ��       ');
  Writeln('                          �  ��  ��      [X]  --> MULTIPLICA��O      �- ��  ��       ');
  Writeln('                          �  ��  ��                                  �- ��  ��       ');
  Writeln('                          �  ��  ��                                  �- ��  ��       ');
  Writeln('                          �  ��  ��      [ ]  --> DIVIS�O            �- ��  ��       ');
  Writeln('                          �  ��  ��                                  �- ��  ��       ');
  Writeln('                          �  ��  ��                                  �- ��  ��       ');
  Writeln('                          �  ��  ��      [ ]  --> SAIR               �- ��  ��       ');
  Writeln('                          �  ��  ��                                  �- ��  ��       ');
  Writeln('                         __________                                 ___________      ');
  Writeln('                       ��������������                             ���������������    ');
  Writeln('                                                                                     ');
  
  // [#72 seta cima]  [#80 seta baixo]  [#13 enter]
  
  // OP1 � AS POSI��O DO [X]
  tecla:=readkey;
  case tecla of
    #72: posicao^:=2;
    #80: posicao^:=4;
  end;
  
End;

Procedure menu_divi;
Begin       
Writeln('                                                                                     ');
  textcolor(14);                                               
  Writeln('    [Instru��es: usar as setas para escolher as op�oes e ENTER para selecionar!      ');
  textcolor(10);                                       
  Writeln('                                                                                     ');
  Writeln('                                                                                     ');
  Writeln('                        ������������                               ������������      ');
  Writeln('                      ________________                           ________________    ');
  Writeln('                      �   �  ��  _�  �                           �   �   �  _�  �    ');
  Writeln('                          �  ��  ��                                  �- ��  ��       ');
  Writeln('                          �  ��  ��      [ ]  --> SOMA               �- ��  ��       ');
  Writeln('                          �  ��  ��                                  �- ��  ��       ');
  Writeln('                          �  ��  ��                                  �- ��  ��       ');
  Writeln('                          �  ��  ��      [ ]  --> SUBTRA��O          �- ��  ��       ');
  Writeln('                          �  ��  ��                                  �- ��  ��       ');
  Writeln('                          �  ��  ��                                  �- ��  ��       ');
  Writeln('                          �  ��  ��      [ ]  --> MULTIPLICA��O      �- ��  ��       ');
  Writeln('                          �  ��  ��                                  �- ��  ��       ');
  Writeln('                          �  ��  ��                                  �- ��  ��       ');
  Writeln('                          �  ��  ��      [X]  --> DIVIS�O            �- ��  ��       ');
  Writeln('                          �  ��  ��                                  �- ��  ��       ');
  Writeln('                          �  ��  ��                                  �- ��  ��       ');
  Writeln('                          �  ��  ��      [ ]  --> SAIR               �- ��  ��       ');
  Writeln('                          �  ��  ��                                  �- ��  ��       ');
  Writeln('                         __________                                 ___________      ');
  Writeln('                       ��������������                             ���������������    ');
  Writeln('                                                                                     ');
  
  // [#72 seta cima]  [#80 seta baixo]  [#13 enter]
  
  // OP1 � AS POSI��O DO [X]
  tecla:=readkey;
  case tecla of
    #72: posicao^:=3;
    #80: posicao^:=5;
  end;
  
End;

Procedure menu_sair;
Begin     
Writeln('                                                                                     ');
  textcolor(14);                                               
  Writeln('    [Instru��es: usar as setas para escolher as op�oes e ENTER para selecionar!      ');
  textcolor(10);                                      
  Writeln('                                                                                     ');
  Writeln('                                                                                     ');
  Writeln('                        ������������                               ������������      ');
  Writeln('                      ________________                           ________________    ');
  Writeln('                      �   �  ��  _�  �                           �   �   �  _�  �    ');
  Writeln('                          �  ��  ��                                  �- ��  ��       ');
  Writeln('                          �  ��  ��      [ ]  --> SOMA               �- ��  ��       ');
  Writeln('                          �  ��  ��                                  �- ��  ��       ');
  Writeln('                          �  ��  ��                                  �- ��  ��       ');
  Writeln('                          �  ��  ��      [ ]  --> SUBTRA��O          �- ��  ��       ');
  Writeln('                          �  ��  ��                                  �- ��  ��       ');
  Writeln('                          �  ��  ��                                  �- ��  ��       ');
  Writeln('                          �  ��  ��      [ ]  --> MULTIPLICA��O      �- ��  ��       ');
  Writeln('                          �  ��  ��                                  �- ��  ��       ');
  Writeln('                          �  ��  ��                                  �- ��  ��       ');
  Writeln('                          �  ��  ��      [ ]  --> DIVIS�O            �- ��  ��       ');
  Writeln('                          �  ��  ��                                  �- ��  ��       ');
  Writeln('                          �  ��  ��                                  �- ��  ��       ');
  Writeln('                          �  ��  ��      [X]  --> SAIR               �- ��  ��       ');
  Writeln('                          �  ��  ��                                  �- ��  ��       ');
  Writeln('                         __________                                 ___________      ');
  Writeln('                       ��������������                             ���������������    ');
  Writeln('                                                                                     ');
  
  // [#72 seta cima]  [#80 seta baixo]  [#13 enter]
  
  // OP1 � AS POSI��O DO [X]
  tecla:=readkey;
  case tecla of
    #72: posicao^:=4;
    #80: posicao^:=1;
  end;
  
End;
	  
	  // -----------------------FUNCTIONS----------------------
	  
Function soma(num1,num2:integer):integer;
Begin
   soma:=num1+num2;        
End;

Function sub(num1,num2:integer):integer;
Begin
   sub:=num1-num2;        
End;

Function mult(num1,num2:integer):integer;
Begin
   mult:=num1*num2;        
End;

Function divi(num1,num2:integer):real;
Begin
   divi:=num1/num2;        
End;

     // -------------------FIM-FUNCTIONS----------------------

Begin
	New(dados.n1); New(dados.n2); New(fim); New(posicao);
  
  posicao^:=1;
  
  Write('Insira o seu nome: ');
  Read(dados.nome);
  
  Writeln; 
  Writeln('Bem-Vindo, ',dados.nome);
  Writeln;
  Writeln('Clique em qualquer tecla para CONTINUAR...');
  Readkey;
  clrscr;
  
  Repeat
    If(posicao^=1)Then
    Begin
      menu_soma;
      clrscr;
      
      If(tecla=#13)Then
      Begin
        clrscr;
        gotoxy(10,1);
        Writeln('[SOMA]');
        Writeln;
        Writeln;
        Writeln('[Insira dois numeros:]');
        Read(dados.n1^); Read(dados.n2^);
        
        Writeln('A soma � ',soma(dados.n1^,dados.n2^));
        Writeln('Pressione qualquer tecla para sair...');
        Readkey;
        
      End;
      
      clrscr;
    End;
    
    If(posicao^=2)Then
    Begin
      menu_sub;
      clrscr;
      
      If(tecla=#13)Then
      Begin
        clrscr;
        gotoxy(10,1);
        Writeln('[SUBTRA��O]');
        Writeln;
        Writeln;
        Writeln('[Insira dois numeros:]');
        Read(dados.n1^); Read(dados.n2^);
        
        Writeln('A subtra��o � ',sub(dados.n1^,dados.n2^):2:0);
        Writeln('Pressione qualquer tecla para sair...');
        Readkey;
        
      End;
      
      clrscr;
    End;
    
    If(posicao^=3)Then
    Begin
      menu_mult;
      clrscr;
      
      If(tecla=#13)Then
      Begin
        clrscr;
        gotoxy(10,1);
        Writeln('[MULTIPLICA��O]');
        Writeln;
        Writeln;
        Writeln('[Insira dois numeros:]');
        Read(dados.n1^); Read(dados.n2^);
        
        Writeln('A multiplica��o � ',mult(dados.n1^,dados.n2^):2:0);
        Writeln('Pressione qualquer tecla para sair...');
        Readkey;
        
      End;
      
      clrscr;
    End;
    
    If(posicao^=4)Then
    Begin
      menu_divi;
      clrscr;
      
      If(tecla=#13)Then
      Begin
        clrscr;
        gotoxy(10,1);
        Writeln('[DIVIS�O]');
        Writeln;
        Writeln;
        Writeln('[Insira dois numeros:]');
        Read(dados.n1^); Read(dados.n2^);
        
        if(dados.n2^<>0)then
        Begin
          Writeln('A divis�o � ',divi(dados.n1^,dados.n2^):2:2);
        End  
        else
				  Writeln('O segundo numero n�o pode ser 0');
        
        Writeln('Pressione qualquer tecla para sair...');
        Readkey;
        
      End;
      
      clrscr;
    End;
    
    If(posicao^=5)Then
    Begin
      menu_sair;
      clrscr;
      
      If(tecla=#13)Then
      Begin
        clrscr;
        fim^:=1;
      End;
      
      clrscr;
    End;
  
  Until(fim^=1)
  
End.

