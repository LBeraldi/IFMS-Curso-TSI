 use lucas_beraldi;

create table evento(
  data_show date,
  horario_inicio time,
  horario_termino time,
  preco_ingresso double,
  nome_evento varchar(50),
  descricao_evento text,
  menor_idade boolean,
  quantidade_ingresso int,
  data_termino timestamp

);




create table produto(
codigo int primary key auto_increment,
descrição varchar(50)
);

insert into produto (codigo,descrição)
values(1,"arroz"),(2,"Feijão"),(3,"macarrão");

insert into produto (descrição)
values("sal");

insert into produto (codigo,descrição)
values(5,"sal");

select * from produto;




create table pessoa(
 cpf int not null,
 nome varchar(20),
 data_nascimento date
);

insert into pessoa (cpf,nome,data_nascimento)
values(10,"maria","2021-02-20");

select*from pessoa;






