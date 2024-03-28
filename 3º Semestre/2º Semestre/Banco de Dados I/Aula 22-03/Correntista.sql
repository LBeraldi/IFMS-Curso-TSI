use lucas_beraldi;

create table correntista (
	id int not null,
    nome varchar(40) not null,
    celular varchar(25),
    telefone varchar(25),
    primary key(id)
);


create table conta (
	id int not null,
    agencia int not null,
    conta int not null,
    saldo double not null,
    primary key(agencia, conta),
    foreign key(id) references correntista(id)
);

create table veiculo (
	id int not null,
    placa varchar(20),
    ano int not null,
    dm double not null,
    dc double not null,
    primary key(placa),
    foreign key(id) references correntista (id)
);

insert into correntista (id, nome, celular, telefone)
values (8, "luciano hulk", "(67)9925-8324", "(67)9832-0067");

insert into conta (id, agencia, conta, saldo)
values (8, 1105, 6532, 101.00);

delete from correntista where id = '8';

delete from conta where id = '8';

select * from correntista,conta;

drop table veiculo;