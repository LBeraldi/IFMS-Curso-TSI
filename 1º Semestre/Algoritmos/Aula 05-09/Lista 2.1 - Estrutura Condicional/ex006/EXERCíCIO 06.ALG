algoritmo "Exercício 06"
var
n, f:real

inicio
 escreval("informe sua nota")
  leia(n)
 escreval("informe sua frequência")
  leia(f)

  se f < 75 entao
   escreval("reprovado")
  fimse

  se( f >= 75) e (n<3) entao
   escreval("reprovado")
  fimse

  se (f >= 75) e (n>=3) e (n<7) entao
   escreval("exame")
  fimse

  se (f >= 75) e (n>=7)  entao
   escreval("aprovado")
  fimse
  
  fimalgoritmo