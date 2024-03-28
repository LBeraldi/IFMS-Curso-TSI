Algoritmo "Questao02"
Var
q, cod, tot: inteiro

Inicio
escreval("Digite o codigo do produto:")
 leia(cod)
 escreval("Digite a quantidade: ")
 leia(q)
 se cod = 12 entao
  tot <- (q*12)
  escreval("Iten pedido : Suco de limao, quantidade pedida ",q," Valor total do pedido : R$",tot)
 fimse
 se cod = 27 entao
  tot <- (q*25)
  escreval("Iten pedido : X-tudo: Hamburguer, calabresa e ovo, quantidade pedida ",q," Valor total do pedido : R$",tot)
 fimse
 se cod = 44 entao
  tot <- (q*20)
  escreval("Iten pedido : X-Salada: hamburguer e alface, quantidade pedida ",q," Valor total do pedido : R$",tot)
 fimse
 se cod = 68 entao
  tot <- (q*30)
  escreval("Iten pedido : Podrão, quantidade pedida ",q," Valor total do pedido : R$",tot)
 fimse

Fimalgoritmo