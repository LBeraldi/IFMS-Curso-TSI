Algoritmo "Nome dos filmes"
Var
fum, fdois, ftres :caractere
anou, anod, anot : inteiro
Inicio
escreval("Digite o nome de um filme, e a data do seu lançamento")
leia(fum, anou)
escreval("Digite o nome e a data do lançamento de outro filme")
leia(fdois, anod)
escreval("Digite o nome e a data de lançamento de mais um filme")
leia(ftres, anot)

se ((anou) > (anod) e (anot)) entao
 escreval("O filme ",fum,"foi lanãdo no ano " ,anou, "sendo mais recente que os filmes " ,fdois, " e " ,ftres)
   fimse
se ((anod) > (anou) e (anot)) entao
 escreval("O filme " ,fdois, "foi lançado no ano " ,anod, "sendo mais recente que os filmes " ,fum, " e " ,ftres)
 fimse

se ((anot) > (anod) e (anou)) entao
 escreval("O filme " ,ftres, " foi lançado no ano " ,anot, " sendo mais recente que os filmes " ,fum, " e " ,fdois)

 fimse

Fimalgoritmo