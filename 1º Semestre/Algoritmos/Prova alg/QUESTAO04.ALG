Algoritmo "Questao04"
Var
vet: vetor[1..10] de caractere
i, q, c: inteiro

Inicio
 para i de 1 ate 10 faca
   leia (vet[i])
   se (vet[i] = "a" ) entao
    c <- c+1
   fimse
   se (vet[i] = "b" ) entao
    c <- c+1
   fimse
 fimpara
 escreval("As letras A e B foram lidas",c," vezes")
Fimalgoritmo