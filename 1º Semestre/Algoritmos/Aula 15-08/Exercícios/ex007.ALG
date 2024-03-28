Algoritmo "semnome"
Var
vc_doente: caractere
ma_doente: caractere
r: logico
Inicio
// vc doente significa que fiquei doente
// mae doente significa que minha mae ficou doente
// vc d ou ma d : vai me dar um resultado lógico sendo Verdadeiro ou Falso
// segundo a tabela da verdade A E B.

   escreval("Você ficou doente? (s/n)")
   leia(vc_doente)
   
   escreval("Sua mãe ficou doente? (s/n)")
   leia(ma_doente)
   
   r <- (vc_doente="n") e (ma_doente="n")
   
   escreval("O resultado sobre você ficar felz é : ", r)
Fimalgoritmo