Algoritmo "semnome"
Var
vc_doente: caractere
ma_doente: caractere
r: logico
Inicio
// vc doente significa que fiquei doente
// mae doente significa que minha mae ficou doente
// vc d ou ma d : vai me dar um resultado l�gico sendo Verdadeiro ou Falso
// segundo a tabela da verdade A E B.

   escreval("Voc� ficou doente? (s/n)")
   leia(vc_doente)
   
   escreval("Sua m�e ficou doente? (s/n)")
   leia(ma_doente)
   
   r <- (vc_doente="n") e (ma_doente="n")
   
   escreval("O resultado sobre voc� ficar felz � : ", r)
Fimalgoritmo