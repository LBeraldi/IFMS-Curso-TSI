Algoritmo "semnome"
Var
i, aprovado, reprovado:inteiro
media, nota1, nota2, nota3, maior, menor:real
aluno:caracter
Inicio
 para i de 1 ate 10 faca
  Escreval("Informe o seu nome")
  leia(aluno)
  Escreval("Informe as suas 3 notas")
  leia(nota1,nota2,nota3)

  media <- (nota1+nota2+nota3)/3
  
  se (i=1) entao
   maior <- maior+media
   menor <- menor+media
  fimse
  
  se maior<media entao
   maior <- media
  fimse
  
  se menor>media entao
   menor <- media
  fimse
  
  se (media>=7) entao
    aprovado <- aprovado+1
  senao
    reprovado <- reprovado+1
  fimse

  Escreval(aluno," a sua média é: ",media)
 fimpara

 Escreval("A maior média: ",maior)
 Escreval("A menor média: ",menor)
 Escreval("Total de Aprovados: ",aprovado)
 Escreval("Total de Reprovados: ",reprovado)

Fimalgoritmo