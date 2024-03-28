Algoritmo "semnome"
Var
gms: caractere
ga: caractere
r: logico
Inicio
// GMS significa que ganhei na mega-sena
// GA significa que ganhei um aumento
// GA ou GMS : vai me dar um resultado lógico sendo Verdadeiro ou Falso
// segundo a tabela da verdade A OU B.

   escreval("Você ganhou na mega-sena? (s/n)")
   leia(gms)
   
   escreval("Você ganhou um aumento? (s/n)")
   leia(ga)
   
   r <- (gms="s") ou (ga="s")
   
   escreval("O resultado sobre você ficar felz é : ", r)
Fimalgoritmo