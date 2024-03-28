Algoritmo "Menu"
Var
 codigo, produto : caractere
 valor : real
Inicio
  escreval("--------------MENU--------------")
  escreval("[1] - X-tudo .........: R$ 20,00")
  escreval("[2] - Egg-Bacon  .....: R$ 15,00")
  escreval("[3] - X-salada .......: R$ 13,00")
  escreval("[4] - Misto quente ...: R$ 10,00")
  escreval("Opção:")
  leia(codigo)
  
  escolha(codigo)
   caso "1"
     produto <- "X-tudo"
     valor <- 20.00
     escreval("Produto selecionado: ", produto)
     escreval("Total a pagar: ", valor)
   
   caso "2"
     produto <- "Egg-Bacon"
     valor <- 15.00
     escreval("Produto selecionado: ", produto)
     escreval("Total a pagar: ", valor)
   
   caso "3"
     produto <- "X-Salada"
     valor <- 13.00
     escreval("Produto selecionado: ", produto)
     escreval("Total a pagar: ", valor)
   
   caso "4"
     produto <- "Misto quente"
     valor <- 10.00
     escreval("Produto selecionado: ", produto)
     escreval("Total a pagar: ", valor)
   
   outrocaso
   escreval("codigo invalido")

  fimescolha
   
Fimalgoritmo