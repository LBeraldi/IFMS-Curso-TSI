Algoritmo "Lista de codigos"
Var
codigo : real
Inicio
escreval("Escreva o n�mero do c�digo do seu produto")
  leia (codigo)
    
    se (codigo = 0) e (codigo > 15) entao
     escreval ("C�digo Inv�lido")
    fimse
    
    se (codigo >= 1) e (codigo < 2.3) entao
     escreval("Seu produto est� classificado como alimento n�o-perec�vel")
    fimse

    se (codigo >= 2.3) e (codigo <= 4) entao
     escreval("Seu produto est� classificado como alimento perec�vel")
    fimse
    
    Se (codigo >= 5) e (codigo <= 6) entao
     escreval ("Seu produto est� classificado como Vestu�rio")
    fimse
    
    Se (codigo = 7) entao
     escreval("Seu produto est� classificado como Higiene Pessoal")
    fimse

    se (codigo >= 8) e (codigo <= 15) entao
     escreval ("Seu produto est� classificado como itens de limpesa e utens�lios dom�sticos")
    fimse
    

     
Fimalgoritmo