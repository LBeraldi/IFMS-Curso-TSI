Algoritmo "Porcentagem Precos"
Var
 preco, desconto : real
 pagamento : caractere
Inicio
 escreval("Informe o valor do produto comprado !!")
 leia (preco)
 escreval("Escreva a forma de pagamento : Dinheiro = d / Cartao de credito a vista = cc / Cartao de credito parcelado = ccp")
 leia (pagamento)
 
  se (pagamento = "d") entao
   desconto <- (preco * 0.1)
   preco <- (preco - desconto)
   escreval("O preço final do seu produto é de :", preco)
  fimse
  
  se (pagamento = "cc") entao
   desconto <- (preco * 0.05)
   preco <- (preco - desconto)
   escreval("O preço final do seu produto é de :", preco)
  fimse
  
  se (pagamento = "ccp") entao
   desconto <- (preco * 0.05)
   preco <- (preco + desconto)
   escreval("O preço final do seu produto é de :", preco)
  fimse
Fimalgoritmo