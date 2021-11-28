Program animais_registo ;
Type animais = record
  nome:string;
  idade:integer;
  prox:^animais;
end;

Var inicio:^animais;
OP:integer;

{-------------------------------------------------------------MENU PRINCIPAL------------------------------------------------}
Procedure menu_principal;
Begin
  gotoxy(25,2);
  Writeln('Menu Principal         ');
  gotoxy(25,5);
  Writeln('1 - Inserir no Inicio           ');
  gotoxy(25,7);
  Writeln('2 - Inserir no Fim           ');
  gotoxy(25,9);
  Writeln('3 - Inserir de Forma Ordenada      ');
  gotoxy(25,11);
  Writeln('4 - Lista           ');
  gotoxy(25,13);
  Writeln('5 - Remover no Inicio        ');
  gotoxy(25,15);
  Writeln('6 - Remover no Fim             ');
  gotoxy(25,17);
  Writeln('7 - Procurar             ');
  gotoxy(25,19);
  Writeln('8 - Alterar             ');
  gotoxy(25,21);
  Writeln('9 - Imprimir Lista        ');
  gotoxy(25,23);
  Writeln('10 - Sair        ');
  
  gotoxy(25,26);
  Write('Escolha uma opção: ');
  Read(OP);
  
End;

{-----------------------------------------------------------INSERIR NO INICIO---------------------------------------------------}
Procedure inserir_inicio;
Var temp:^animais;
Begin
  clrscr;
  New(temp);
  
  gotoxy(25,2);
  Writeln('       [INSERIR NO INICIO]          ');
  gotoxy(25,5);
  Write('  Insira o nome: ');
  Read(temp^.nome);
  Read(temp^.nome);
  
  gotoxy(25,7);
  Write('  Insira a idade: ');
  Read(temp^.idade);
  
  temp^.prox:=inicio;
  inicio:=temp;
  
  gotoxy(1,14);
  Write('Novo dado inserido na lista');
  gotoxy(1,15);
  Write('Pressione qualquer tecla para voltar: ');
  Readkey;
End;

{---------------------------------------------------------------LISTA--------------------------------------------------}
Procedure lista;
Var temp:^animais;
i:integer;
Begin
  clrscr;
  
  temp:=inicio;
  
  If(temp=nil)Then
  Begin
    gotoxy(30,2);
    Writeln('[Lista Vazia]');
  End
  Else
  Begin
    
    gotoxy(30,2);
    Writeln('          [LISTA]');
    
    Repeat
      
      gotoxy(30,4+i);
      Writeln('--------------------------');
      gotoxy(30,5+i);
      Writeln('O nome é: [',temp^.nome,']');
      gotoxy(30,6+i);
      Writeln('A idade é: [',temp^.idade,']');
      gotoxy(30,7+i);
      Writeln('--------------------------');
      
      temp:=temp^.prox;
      i:=i+4;
      
    Until(temp=nil);
    
  End;
  
  Readkey;
End;

{---------------------------------------------------------------------REMOVER INICIO-----------------------------------------------------------------}
Procedure remover_inicio;
Var temp:^animais;
Begin
  clrscr;
  
  temp:=inicio;
  
  If(temp=nil)Then
  Begin
    gotoxy(30,2);
    Writeln('[SEM DADOS PARA REMOVER, LISTA VAZIA]');
  End
  Else
  Begin
    
    gotoxy(30,2);
    Writeln('[FORAM REMOVIDOS NO INICIO OS SEGUINTES DADOS:]');
    
    gotoxy(30,4);
    Writeln('--------------------------');
    gotoxy(30,5);
    Writeln('O nome é: [',temp^.nome,']');
    gotoxy(30,6);
    Writeln('A idade é: [',temp^.idade,']');
    gotoxy(30,7);
    Writeln('--------------------------');
    
    inicio:=nil;
    
    inicio:=temp^.prox;
  End;
  
  Readkey;
End;

{---------------------------------------------------------------------REMOVER FIM-----------------------------------------------------------------}
Procedure remover_fim;
Var temp:^animais;
controlo:boolean;
Begin
  clrscr;
  
  temp:=inicio;
  
  If(temp=nil)Then
  Begin
    gotoxy(30,2);
    Writeln('[SEM DADOS PARA REMOVER, LISTA VAZIA]');
  End
  Else
  Begin
    
    gotoxy(30,2);
    Writeln('[FORAM REMOVIDOS NO FIM OS SEGUINTES DADOS:]');
    
    Repeat
      gotoxy(30,4);
      Writeln('--------------------------');
      gotoxy(30,5);
      Writeln('O nome é: [',temp^.nome,']');
      gotoxy(30,6);
      Writeln('A idade é: [',temp^.idade,']');
      gotoxy(30,7);
      Writeln('--------------------------');
      
      temp:=temp^.prox;
    Until(temp=nil);
    temp:=inicio;
    
    If(temp=nil)then
    controlo:=False
    else
    If(temp^.prox=nil)Then
    Begin
      temp:=nil;
      controlo:=True;
    End
    else
    Begin      
      Repeat
        temp:=temp^.prox;
        temp^.prox:=nil;
        controlo:=True;
      Until(temp^.prox^.prox=nil);      
    End;
    
    Readkey;
  End;
End;
 
{---------------------------------------------------------------------PROCURAR-----------------------------------------------------------------}
Procedure procurar;
Var temp:^animais;
nome_procurar:string;
controlo:boolean;
Begin
  clrscr;
  temp:=inicio;
  controlo:=true;
  
  Writeln;
  gotoxy(30,2);
  Write('Digite o nome a ser PROCURADO: ');
  Read(nome_procurar);
  Read(nome_procurar);
  
  clrscr;
  
  while(temp<>nil) and controlo do
  Begin
    If(temp^.nome=nome_procurar)Then
    controlo:=false
    else
    temp:=temp^.prox;
  end;
  
  Writeln('  ');
  If(controlo=false)Then
  Begin
    gotoxy(30,2);
    Writeln('O nome [',temp^.nome,'] foi ENCONTRADO na lista!');
    gotoxy(30,4);
    Writeln('--------------------------');
    gotoxy(30,5);
    Writeln('O nome é: [',temp^.nome,']');
    gotoxy(30,6);
    Writeln('A idade é: [',temp^.idade,']');
    gotoxy(30,7);
    Writeln('--------------------------');
  End
  else
  Begin
    gotoxy(30,2);
    Writeln('O nome [',nome_procurar,'] não foi encontrado na lista!');
  End;
  
  Readkey;
  
End;

{---------------------------------------------------------------------ALTERAR-----------------------------------------------------------------}
Procedure alterar;
Var temp:^animais;
nome_procurar:string;
controlo:boolean;
Begin
  clrscr;
  temp:=inicio;
  controlo:=true;
  
  Writeln;
  gotoxy(30,2);
  Write('Digite o nome a ser ALTERADO: ');
  Read(nome_procurar);
  Read(nome_procurar);
  
  clrscr;
  
  while(temp<>nil) and controlo do
  Begin
    If(temp^.nome=nome_procurar)Then
    Begin
      controlo:=false;
      
      gotoxy(30,2);
      Write('[ALTERAR]');
      
      gotoxy(30,5);
      Write('Insira o nome: ');
      Read(temp^.nome);
      
      gotoxy(30,6);
      Write('Insira a idade: ');
      Read(temp^.idade);
      
    End
    else
    temp:=temp^.prox;
  end;
  
  clrscr;
  
  If(controlo=false)Then
  Begin
    gotoxy(30,2);
    Writeln('O nome [',temp^.nome,'] foi INSERIDO na lista!');
    gotoxy(30,4);
    Writeln('--------------------------');
    gotoxy(30,5);
    Writeln('O nome é: [',temp^.nome,']');
    gotoxy(30,6);
    Writeln('A idade é: [',temp^.idade,']');
    gotoxy(30,7);
    Writeln('--------------------------');
  End
  else
  Begin
    gotoxy(30,2);
    Writeln('O nome [',nome_procurar,'] não foi encontrado na lista!');
  End;
  
  Readkey;
  
End;

{---------------------------------------------------------------------INICIO DO PROGRAMA-----------------------------------------------------------------}
Begin
  inicio:=nil;
  
  Repeat
    
    menu_principal;
    
    If(OP=1)Then
    Begin
      inserir_inicio;
      OP:=0;
    End;
    
    If(OP=4)Then
    Begin
      lista;
      OP:=0;
    End;
    
    If(OP=5)Then
    Begin
      remover_inicio;
      OP:=0;
    End;
    
    If(OP=6)Then
    Begin
      remover_fim;
      OP:=0;
    End;
    
    If(OP=7)Then
    Begin
      procurar;
      OP:=0;
    End;
    
    If(OP=8)Then
    Begin
      alterar;
      OP:=0;
    End;
    
    clrscr;
  Until(OP=10);
  
  Dispose(inicio);
  inicio:=nil;
  
End.









