algoritmo "Salario Professor"
var
 horas, salario: real
 grau : caractere
 
 inicio
 escreval("Informe a titulação do professor, sendo Graduado / Mestrado / Doutorado :")
 leia(grau)
 escreval("Informe a quantidade de horas trabalhada por esse professor no mês :")
 leia(horas)
  escreval("-----------Resultado-----------")
  
 se (grau="graduado") entao
  salario<-horas*12
 escreval("O salário desse professor é de R$", salario)
 fimse

se (grau="mestrado") entao
  salario<-horas*17
 escreval("O salário desse professor é de R$", salario)
 fimse


se (grau="doutorado") entao
  salario<-horas*25
 escreval("O salário desse professor é de R$", salario)
 fimse


fimalgoritmo