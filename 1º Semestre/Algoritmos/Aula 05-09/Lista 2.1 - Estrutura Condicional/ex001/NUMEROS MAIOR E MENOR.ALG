algoritmo "Numeros maior e menor"
var
  n1,n2,n3,n4,n5 : inteiro

 inicio
  escreval("informe 5 números inteiros")
leia(n1, n2, n3, n4, n5)


  se(n1>n2) e (n1>n3) e (n1>n4) e (n1>n5) então
     escreval("Este é o maior número : ",n1)
  fimse

  se(n2>n1) e (n2>n3) e (n2>n4) e (n1>n5) então
     escreval("Este é o maior número : ",n2)
  fimse

  se(n3>n2) e (n3>n1) e (n3>n4) e (n3>n5) então
     escreval("Este é o maior número : ",n3)
  fimse

  se(n4>n2) e (n4>n3) e (n4>n1) e (n1>n5) então
     escreval("Este é o maior número : ",n4)
  fimse

  se(n5>n2) e (n5>n3) e (n5>n4) e (n5>n1) então
     escreval("Este é o maior número : ",n5)
  fimse
//
//

  se(n1<n2) e (n1<n3) e (n1<n4) e (n1<n5) então
     escreval("Este é o menor número : ",n1)
  fimse

  se(n2<n1) e (n2<n3) e (n2<n4) e (n2<n5) então
     escreval("Este é o menor número : ",n2)
  fimse

  se(n3<n2) e (n3<n1) e (n3<n4) e (n3<n5) então
     escreval("Este é o menor número : ",n3)
  fimse

  se(n4<n2) e (n4<n3) e (n4<n1) e (n4<n5) então
     escreval("Este é o menor número : ",n4)
  fimse

 se(n5<n2) e (n5<n3) e (n5<n1) e (n5<n1) então
     escreval("Este é o menor número : ",n5)
  fimse


  fimalgoritmo