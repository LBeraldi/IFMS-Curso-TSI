Algoritmo "Lista de codigos"
Var
codigo : real
Inicio
escreval("Escreva o número do código do seu produto")
  leia (codigo)
    
    se (codigo = 0) e (codigo > 15) entao
     escreval ("Código Inválido")
    fimse
    
    se (codigo >= 1) e (codigo < 2.3) entao
     escreval("Seu produto está classificado como alimento não-perecível")
    fimse

    se (codigo >= 2.3) e (codigo <= 4) entao
     escreval("Seu produto está classificado como alimento perecível")
    fimse
    
    Se (codigo >= 5) e (codigo <= 6) entao
     escreval ("Seu produto está classificado como Vestuário")
    fimse
    
    Se (codigo = 7) entao
     escreval("Seu produto está classificado como Higiene Pessoal")
    fimse

    se (codigo >= 8) e (codigo <= 15) entao
     escreval ("Seu produto está classificado como itens de limpesa e utensílios domésticos")
    fimse
    

     
Fimalgoritmo