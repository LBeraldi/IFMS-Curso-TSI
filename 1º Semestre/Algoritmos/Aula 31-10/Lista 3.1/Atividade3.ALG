Algoritmo "semnome"
Var
i:inteiro
media,nota1,nota2,nota3:real
aluno:caracter
maior, menor:real
Inicio
 para i de 1 ate 10 faca
  Escreval("Informe o seu nome :")
  leia(aluno)
  Escreval("Informe as suas 3 notas")
  leia(nota1,nota2,nota3)

  media <- (nota1+nota2+nota3)/3
  
  se (i=1) entao
   maior <- (maior+media)
   menor <- (menor+media)
  fimse
  
  se (maior < media) entao
   maior <- media
  fimse
  
  se (menor > media) entao
   menor <- media
  fimse

  Escreval(aluno," a sua média é: ",media)
 fimpara

 Escreval("A maior média: ",maior)
 Escreval("A menor média: ",menor)

Fimalgoritmo