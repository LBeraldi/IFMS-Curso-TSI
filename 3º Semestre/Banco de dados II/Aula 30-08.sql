use treinamento;
/*01*/
select count(*) from estudante e, refeicoes r where e.id = 10 and r.fk_estudante = e.id;
/*02*/
select count(*) from estudante e, refeicoes r where e.curso = "Pesca" and r.fk_estudante = e.id;
/*03*/
select count(*) from estudante e, refeicoes r where r.valor > 14  and e.id = r.fk_estudante;
/*04*/
select sum(r.valor) from estudante e, refeicoes r where e.curso = "Pesca" and e.periodo = 1 and e.id = r.fk_estudante ;
/*05*/
select sum(r.valor) from estudante e, refeicoes r where ((e.curso = "Pesca" and e.periodo = 1) or (e.curso = "Quimica" and e.periodo = 5)) and e.id = r.fk_estudante ;
/*06*/
select * from estudante e, refeicoes r where date (r.dt_refeicao) = "2018-10-04" and r.fk_estudante = e.id; 
/*07*/


select * from estudante;

select * from refeicoes;