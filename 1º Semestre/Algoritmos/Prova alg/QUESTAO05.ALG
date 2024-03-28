Algoritmo "Questao05"
Var
mat: vetor[1..3, 1..3] de inteiro
i, j, c: inteiro

Inicio
 para i de 1 ate 3 faca
  para j de 1 ate 3 faca
   leia (mat[i, j])
   se (mat[i, j] mod 2 <> 0 ) entao
    c <- c+1
   fimse
  fimpara
 fimpara
 escreval("Existem",c," Numero(s) impares na matriz")
Fimalgoritmo