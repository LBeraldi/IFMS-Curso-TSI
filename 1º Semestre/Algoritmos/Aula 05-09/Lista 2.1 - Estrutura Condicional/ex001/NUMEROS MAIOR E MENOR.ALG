algoritmo "Numeros maior e menor"
var
  n1,n2,n3,n4,n5 : inteiro

 inicio
  escreval("informe 5 n�meros inteiros")
leia(n1, n2, n3, n4, n5)


  se(n1>n2) e (n1>n3) e (n1>n4) e (n1>n5) ent�o
     escreval("Este � o maior n�mero : ",n1)
  fimse

  se(n2>n1) e (n2>n3) e (n2>n4) e (n1>n5) ent�o
     escreval("Este � o maior n�mero : ",n2)
  fimse

  se(n3>n2) e (n3>n1) e (n3>n4) e (n3>n5) ent�o
     escreval("Este � o maior n�mero : ",n3)
  fimse

  se(n4>n2) e (n4>n3) e (n4>n1) e (n1>n5) ent�o
     escreval("Este � o maior n�mero : ",n4)
  fimse

  se(n5>n2) e (n5>n3) e (n5>n4) e (n5>n1) ent�o
     escreval("Este � o maior n�mero : ",n5)
  fimse
//
//

  se(n1<n2) e (n1<n3) e (n1<n4) e (n1<n5) ent�o
     escreval("Este � o menor n�mero : ",n1)
  fimse

  se(n2<n1) e (n2<n3) e (n2<n4) e (n2<n5) ent�o
     escreval("Este � o menor n�mero : ",n2)
  fimse

  se(n3<n2) e (n3<n1) e (n3<n4) e (n3<n5) ent�o
     escreval("Este � o menor n�mero : ",n3)
  fimse

  se(n4<n2) e (n4<n3) e (n4<n1) e (n4<n5) ent�o
     escreval("Este � o menor n�mero : ",n4)
  fimse

 se(n5<n2) e (n5<n3) e (n5<n1) e (n5<n1) ent�o
     escreval("Este � o menor n�mero : ",n5)
  fimse


  fimalgoritmo