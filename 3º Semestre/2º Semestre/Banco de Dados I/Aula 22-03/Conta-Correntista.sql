use lucas_beraldi;

create table correntista(
	cpf varchar(15)  unique,
    nome varchar(100) not null,
	primary key(cpf)
);

create table conta (
	agencia int not null,
    conta double not null unique,
    saldo double,
    fk_correntista varchar(15) unique,
    primary key(agencia, conta),
    foreign key(fk_correntista) references correntista(cpf)
);

insert into correntista (cpf, nome)
values
(1, "Joao"),
(2, "Pedro");

insert into conta (agencia, conta, saldo, fk_correntista)
values
(1450, 250382, null, 1),
(0914, 084210, 1250, 2);

drop table correntista;

select * from correntista;
select * from conta;





