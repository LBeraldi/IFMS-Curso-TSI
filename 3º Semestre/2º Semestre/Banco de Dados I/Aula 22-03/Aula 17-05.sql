use lucas_beraldi;

create table consumidor(
	cpf varchar(24),
    nome varchar(100),
    primary key(cpf)
);

create table onibus(
	id int,
    preco int,
    fk_consumidor varchar(25),
    primary key(id),
    foreign key(fk_consumindor) references consumidor(id)   
);


create table jogador (
	id int,
    nome varchar(100) not null,
    primary key(id)
);

create table equipe (
	id int,
    descricao varchar(100) not null,
    fk_jogador int not null,
    primary key(id),
    foreign key(fk_jogador) references jogador (id)
);

create table esposo (
	id int,
    nome varchar(100),
    primary key(id)
);

create table esposa (
	id int,
    nome varchar(100),
    fk_esposo int,
    primary key(id),
    foreign key(fk_esposo) references esposo (id)
);






