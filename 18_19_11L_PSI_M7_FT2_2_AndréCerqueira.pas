Program Pzim ;
Type pessoa = record
     nome:string[50];
     idade:integer;
     data_nachimento:string;
     cc:integer;
end;     
     
Var OP:integer;
    tipo_ficheiro,tipo_ficheiro2:file of pessoa;     
	 	caminho_ficheiro:string;
	 	nome:string;  
		cliente:pessoa;

//------------------------------------------------------------MENU PRINCIPAL-----------------------------------------//		
Procedure menu_principal;
Begin
	
  gotoxy(25,2);
  Writeln('{MENU PRINCIPAL}    FICHEIRO SELECIONADO >[',nome,']<');
  gotoxy(25,5);
  Writeln('1 - Selecionar Ficheiro          ');                  
  gotoxy(25,7);
  Writeln('2 - Criar Ficheiro          ');
  gotoxy(25,9);
	Writeln('3 - Guardar Informação no Ficheiro             ');
	gotoxy(25,11);
	Writeln('4 - Ler Ficheiro           ');
	gotoxy(25,13);
	Writeln('5 - Copia de Segurança          ');
  gotoxy(25,15);
  Writeln('6 - Mover Ficheiro             ');
  gotoxy(25,17);
  Writeln('7 - Eliminar Ficheiro             ');
  gotoxy(25,19);
  Writeln('8 - Alterar Ficheiro             ');
  gotoxy(25,21);
  Writeln('9 - Sair         ');
	
	gotoxy(25,24);
	Write('Escolha uma opção: ');
	Read(OP);                        //Opçao escolhida no menu inicial

End;
  
//---------------------------------------------------SELECIONAR-FICHEIRO------------------------------------//
Procedure selecionar_ficheiro;
Var caminho,linha:string;
Begin
clrscr;

	  Writeln;
	  Writeln('Insira o nome do ficheiro: ');
	  Read(nome);
	  Read(nome);
	  
	  caminho:='18_19_11L_PSI_M7_FT2_2_AndreCerqueira';
		caminho_ficheiro:=Concat('C:\',caminho,'\',nome,'.dat');
		    
	  Assign(tipo_ficheiro, caminho_ficheiro);
	  {$I-} Reset(tipo_ficheiro); {$I+}                                                        
		
		If(ioresult<>0)Then
		Begin
		  Writeln;
			Writeln('Error');
			Readkey;
			exit;
		End;
			                                     
	  Repeat
	  
      Readln(tipo_ficheiro,cliente);
          
		Until(Eof(tipo_ficheiro));
	  
	  close(tipo_ficheiro); 
	  
		Writeln;  
	  Writeln('Ficheiro selecionado...');
	
	Writeln('Clique em qualquer tecla para voltar');
	Readkey;  
  clrscr;
End;

//-----------------------------------------------------------CRIAR-FICHEIRO------------------------------------//
Procedure criar_ficheiro;
Var caminho:string;
    perm,x:integer;
Begin
clrscr;

  Repeat
	  Writeln('Quer alterar o caminho?   [1]- Sim ');
	  Writeln('                          [2]- Não ');
    Read(perm);
    If(perm=1)Then
	  Begin
		  Writeln('Insira o caminho do ficheiro');
		  Read(caminho);
		  Read(caminho);
		  x:=1;
	  End
	  Else
	  Begin
	    If(perm=2)Then
	      caminho:='18_19_11L_PSI_M7_FT2_2_AndreCerqueira'
	    Else
	      clrscr;	    
		End;  

  Until((perm=1)OR(perm=2));
    
  Writeln('Insira o nome do ficheiro');
  If(x<>1)Then
  Read(nome);
  Read(nome);
  x:=0;
  
  caminho_ficheiro:=Concat('C:\',caminho,'\',nome,'.dat');
  Writeln(caminho_ficheiro);
  Assign(tipo_ficheiro, caminho_ficheiro);
  rewrite(tipo_ficheiro); 
  close(tipo_ficheiro);       
  
	Writeln;  
  Writeln('Ficheiro criado');
  Writeln('Clique em qualquer tecla para voltar');
  Readkey;
  clrscr;
End;

//----------------------------------------------ESCREVER-GUARDAR-NO-FICHEIRO------------------------------------//
Procedure guardar_no_ficheiro;
Var caminho:string;
Begin
clrscr;

	  Writeln;
	  Writeln('Insira o nome: ');
	  Read(cliente.nome);
	  Read(cliente.nome);
	                                                     
	  Writeln('Insira a idade: ');
	  Read(cliente.idade);
	  
	  caminho:='18_19_11L_PSI_M7_FT2_2_AndreCerqueira';
	  caminho_ficheiro:=Concat('C:\',caminho,'\',nome,'.dat');
	  
	  Assign(tipo_ficheiro, caminho_ficheiro);
	  Reset(tipo_ficheiro);  
		Seek(tipo_ficheiro,filesize(tipo_ficheiro));
		                                                        //quantas palavras, quantas linhas, caracteres	                                       
	  Write(tipo_ficheiro,cliente);
	  
	  close(tipo_ficheiro);       
	  
		Writeln;  
	  Writeln('Informação inserida no documento...');
	
	Writeln('Clique em qualquer tecla para voltar');
	Readkey;  
  clrscr;
End;

//-------------------------------------------------LER-FICHEIRO------------------------------------//
Procedure ler_ficheiro;
Var caminho,linha:string;
    i,j:integer;
Begin
clrscr;  
	  
	  caminho:='18_19_11L_PSI_M7_FT2_2_AndreCerqueira';
	  caminho_ficheiro:=Concat('C:\',caminho,'\',nome,'.dat');
	  
	  Assign(tipo_ficheiro, caminho_ficheiro);
	  Reset(tipo_ficheiro);                                                          //quantas palavras, quantas linhas, caracteres
		                                       
	  Writeln('Conteudo do ficheiro: '); 
	  Writeln; 
	  
	  while not Eof(tipo_ficheiro) do begin
    
      Readln(tipo_ficheiro,cliente);
      
      Write('Nome: ');      
	    Writeln(cliente.nome);
			  
	    Write('Idade: ');   
	    Writeln(cliente.idade);
				   
      Writeln;
      
    end;   	      
		
		close(tipo_ficheiro);
		   
		Assign(tipo_ficheiro, caminho_ficheiro);
	  Reset(tipo_ficheiro); 
	  
	  Writeln;
	  Writeln;	                                                                                          
	  Writeln('Conteudo do ficheiro na integra: '); 
	  Writeln; 
	  	  
	  Repeat   	      	    
      Readln(tipo_ficheiro,cliente);
      Writeln(linha);     
		Until(Eof(tipo_ficheiro));
		
	  close(tipo_ficheiro);       
	  
	Writeln;
	Writeln;
	Writeln('Clique em qualquer tecla para voltar');
	Readkey;  
  clrscr;
End;

//----------------------------------------------------------COPIA SEGURANÇA-----------------------------------//
Procedure copia_seg;
Var novo_nome,linha,caminho:string;
Begin
clrscr;  
  Assign(tipo_ficheiro,caminho_ficheiro);
  Reset(tipo_ficheiro);
  Writeln('Insira o nome do novo ficheiro: ');
  Read(novo_nome);
  Read(novo_nome);
  
  caminho:='18_19_11L_PSI_M7_FT2_2_AndreCerqueira';
  caminho_ficheiro:=Concat('C:\',caminho,'\',novo_nome,'.dat');
  
  Assign(tipo_ficheiro2,caminho_ficheiro);
  Rewrite(tipo_ficheiro2);
  
  Repeat
  
    Readln(tipo_ficheiro,cliente);
    Write(tipo_ficheiro2,cliente);   
		 
  Until(eof(tipo_ficheiro));
  
  close(tipo_ficheiro);
  close(tipo_ficheiro2);
  
  Writeln('Copia de Segurança criada...');
  Writeln('Clique em qualquer tecla para voltar');
	Readkey;  
  clrscr;
End;

//----------------------------------------------------------ELIMINAR FICHEIRO-----------------------------------//
Procedure del_ficheiro;
Var caminho:string;
Begin
clrscr;
  
  caminho:='18_19_11L_PSI_M7_FT2_2_AndreCerqueira';
  caminho_ficheiro:=Concat('C:\',caminho,'\',nome,'.dat');
	
	Assign(tipo_ficheiro,caminho_ficheiro);
	close(tipo_ficheiro);
		    	  
  erase(tipo_ficheiro);
  
  Writeln('Ficheiro Eliminado...');
  Writeln('Clique em qualquer tecla para voltar');
  nome:='';
	Readkey;  
  clrscr;
End;

//----------------------------------------------------------MOVER FICHEIRO-----------------------------------//
Procedure mover_ficheiro;
Var novo_nome,linha,caminho:string;
Begin
clrscr;
 
  Assign(tipo_ficheiro,caminho_ficheiro);
  Reset(tipo_ficheiro);
  
  Writeln('Insira o nome para onde mover: ');
  Read(novo_nome);
  Read(novo_nome);
  
  caminho:='18_19_11L_PSI_M7_FT2_2_AndreCerqueira';
  caminho_ficheiro:=Concat('C:\',caminho,'\',novo_nome,'.dat');
  
  Assign(tipo_ficheiro2,caminho_ficheiro);
  Rewrite(tipo_ficheiro2);
  
  Repeat
  
    Readln(tipo_ficheiro,cliente);
    Write(tipo_ficheiro2,cliente);   
		 
  Until(eof(tipo_ficheiro));
  
  close(tipo_ficheiro);
  close(tipo_ficheiro2);
  
  erase(tipo_ficheiro);
  
  
  Writeln('Ficheiro Movido...');
  Writeln('Clique em qualquer tecla para voltar');
	Readkey;  
  clrscr;
End;

//---------------------------------------------------------ALTERAR--------------------------------------------
Procedure alterar_conteudo;
Var nomeAlt,temp_nome,caminho:string;     
Begin
clrscr;
   caminho:='18_19_11L_PSI_M7_FT2_2_AndreCerqueira';
   caminho_ficheiro:=Concat('C:\',caminho,'\',nome,'.dat');
  
   Assign(tipo_ficheiro,caminho_ficheiro);
   Reset(tipo_ficheiro);
  
	 Readln(nomeAlt);
	 Readln(nomeAlt);
	 
	 While not eof(tipo_ficheiro) do
	 Begin
		 Read(tipo_ficheiro,cliente);
		 
		 With cliente do
		 Begin
		   If(nome=nomeAlt)Then
		   Begin
		     Writeln(' Dados atuais do cliente ');
		     Writeln(' nome:',cliente.nome,' idade: ',cliente.idade);
		                                     
		     Writeln(' Alterar dados: ');
		     Write(' Novo nome: ');
		     Readln(cliente.nome);
		     Write('Nova idade: ');
				 Readln(cliente.idade);
				  
		     seek(tipo_ficheiro,filepos(tipo_ficheiro)-1);
		     Write(tipo_ficheiro,cliente);
		     close(tipo_ficheiro);
		     exit;
		   End;   
		 end;
	 End;
End;

//----------------------------------------------------INICIO PROGRAMA----------------------------------------------
Begin
  
  Repeat
    menu_principal;
    
    If(OP=1)Then
    selecionar_ficheiro;
    
    If(OP=2)Then
    criar_ficheiro;
    
    If(OP=3)Then
    guardar_no_ficheiro;
    
    If(OP=4)Then
    ler_ficheiro;
    
    If(OP=5)Then
    copia_seg;
    
    If(OP=6)Then
    mover_ficheiro;
    
    If(OP=7)Then
    del_ficheiro;
    
    If(OP=8)Then
    alterar_conteudo;
    
    If(OP<>9)Then
    OP:=0;
    
	  clrscr;
	Until(OP=9);

End.












