Algoritmo "semnome"
Var
vc_doente: caractere

r: logico
Inicio
// vc doente significa que fiquei doente
// não vc d: vai me dar um resultado lógico sendo Verdadeiro ou Falso
// segundo a tabela da verdade não A, onde o resultado sera o contrário
// o valor digitado.

   escreval("Você pegou COVID-19? (s/n)")
   leia(vc_doente)
   
   r <- nao (vc_doente="s")
   
   escreval("O resultado sobre você ficar felz é : ", r)
Fimalgoritmo