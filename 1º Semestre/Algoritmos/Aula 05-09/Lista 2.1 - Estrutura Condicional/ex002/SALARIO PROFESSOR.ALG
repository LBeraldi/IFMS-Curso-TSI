algoritmo "Salario Professor"
var
 horas, salario: real
 grau : caractere
 
 inicio
 escreval("Informe a titula��o do professor, sendo Graduado / Mestrado / Doutorado :")
 leia(grau)
 escreval("Informe a quantidade de horas trabalhada por esse professor no m�s :")
 leia(horas)
  escreval("-----------Resultado-----------")
  
 se (grau="graduado") entao
  salario<-horas*12
 escreval("O sal�rio desse professor � de R$", salario)
 fimse

se (grau="mestrado") entao
  salario<-horas*17
 escreval("O sal�rio desse professor � de R$", salario)
 fimse


se (grau="doutorado") entao
  salario<-horas*25
 escreval("O sal�rio desse professor � de R$", salario)
 fimse


fimalgoritmo