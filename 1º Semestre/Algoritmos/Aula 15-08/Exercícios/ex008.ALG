Algoritmo "semnome"
Var
vc_doente: caractere

r: logico
Inicio
// vc doente significa que fiquei doente
// n�o vc d: vai me dar um resultado l�gico sendo Verdadeiro ou Falso
// segundo a tabela da verdade n�o A, onde o resultado sera o contr�rio
// o valor digitado.

   escreval("Voc� pegou COVID-19? (s/n)")
   leia(vc_doente)
   
   r <- nao (vc_doente="s")
   
   escreval("O resultado sobre voc� ficar felz � : ", r)
Fimalgoritmo