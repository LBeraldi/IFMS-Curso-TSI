Use lucas_beraldi;

create table passageiro (
	cpf varchar(15) unique,
    nome varchar(100) not null,
    primary key(cpf)
);

create table passagem (
	localizador varchar(100) not null unique,
    dt_hr_partida timestamp not null,
    origem varchar(100) not null,
    destino varchar(100) not null,
    fk_passageiro varchar(15) unique,
    primary key(localizador),
    foreign key(fk_passageiro) references passageiro(cpf)
);

insert into passageiro (cpf, nome)
values
(1, "Kaio"),
(2, "Paula");

insert into passagem (localizador, dt_hr_partida, origem, destino, fk_passageiro)
values
("jja1", "2023-10-03 10:00:00", "Campo Grande", "Sao Paulo", 1),
("kya2", "2024-01-11 15:10:00", "Rio de Janeiro", "Maiami", 2);

drop table passageiro;

select * from passageiro;

select * from passagem;
