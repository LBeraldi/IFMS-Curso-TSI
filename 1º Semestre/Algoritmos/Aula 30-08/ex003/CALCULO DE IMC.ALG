Algoritmo "Calculo de IMC"
Var
peso, alturad, altura, resultado, imc: real
 nome : caractere
Inicio
escreval("Vamos fazer o calculo do seu imc !?")
escreval("Digite seu nome, peso e altura !!")

leia(nome, peso, altura)

 se (altura >= 100) entao
    alturad <- (altura/100)
    imc <- (peso/alturad^2)
   senao
    imc <- (peso/altura^2)
 fimse
  escreval(alturad)
 escreval("---------------------------RESULTADO---------------------------")
 
escreval("")
escreval("Paciente : ", nome)
escreval("Resultado de Imc :", imc)
escreval("")

 se (imc < 20) entao
  escreval("Você esta abaixo do peso.")
 fimse
  
 se (imc > 20) e (imc < 25) entao
  escreval("Parabéns!! Seu peso esta normal.")
 fimse
 
 se (imc > 25) e (imc < 30) entao
  escreval("Você esta acima do peso.")
 fimse

 se (imc > 30) e (imc < 40) entao
  escreval("Seu quadro é de Obeso.")
 fimse
 
 se (imc > 40) entao
  escreval("Seu quadro é de Obesidade Mórbida")
 fimse
 
 
Fimalgoritmo