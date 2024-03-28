use lucas_beraldi;

create table funcionario (
	id int not null,
    nome varchar(100) not null,
    rg varchar(25) not null,
    primary key(id)
);

create table cargo (
	id int not null,
    nome varchar(100) not null,
    bonificacao double not null,
    fk_funcionario int unique not null,
    primary key (id),
    foreign key (fk_funcionario) references funcionario(id)
);

insert into funcionario(id, nome, rg)
values
(25,"Luciano Hulk","4025"),
(2,"Claudia Leite","7892"),
(4,"Joe Biden","1104"),
(16,"Donald Trump","2002");

insert into cargo (fk_funcionario, id, nome, bonificacao)
values
(16, 1, "Presidente", 1000),
(25, 2, "Diretor Geral", 700);

insert into cargo (fk_funcionario, id, nome, bonificacao)
values
(null, 3, "Diretor Exrcultivo", 500),
(null, 4, "Secretaria", 200);

insert into cargo (fk_funcionario, id, nome, bonificacao)
values
(null, 3, "Diretor Exrcultivo", 500),
(null, 4, "Secretaria", 200);

drop table cargo;
drop table funcionario;

select * from funcionario;
select * from cargo;