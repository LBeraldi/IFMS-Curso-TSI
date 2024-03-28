Algoritmo "Atividade 01"
Var
i, f, m:inteiro
sexo:caracter
peso, maior, menor, pesoF:real
Inicio
  para i de 1 ate 15 faca
   escreval("Informe seu sexo e o peso")
   leia(sexo)
   leia(peso)

    se (sexo = "M") entao
     m <- m+1
    fimse

    se (sexo = "F") entao
     f <- f+1
     pesoF <- pesoF+peso
    fimse

    se (i=1) entao
     maior <- peso
    fimse
    
    se (i=1) entao
     menor <- peso
    fimse
    
    se maior<peso entao
     maior <- peso
    fimse

    se menor>peso entao
     menor <- peso
    fimse
  fimpara

m <- (m/15)
f <- (f/15)
pesof <- (pesof/f)
Escreval("O percentual de alunos do sexo masculino: ",m)
Escreval("O percentual de alunos do sexo feminino: ",f)
Escreval(maior, "É o maior peso da sala ")
Escreval(menor, "É o menor peso da sala ")
Escreval("A média do peso das alunas mulheres: ",pesof)

Fimalgoritmo