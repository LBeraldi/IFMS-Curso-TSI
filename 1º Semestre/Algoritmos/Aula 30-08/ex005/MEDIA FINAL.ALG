Algoritmo "Media Final"
Var
  media : real
Inicio
leia(media)

se (media >= 6) entao
 escreval("Aprovado")
fimse

se (media >= 4) e (media < 6) entao
 escreval("Recuperação")
fimse

se(media < 4) entao
 escreval("Reprovado")
fimse
Fimalgoritmo