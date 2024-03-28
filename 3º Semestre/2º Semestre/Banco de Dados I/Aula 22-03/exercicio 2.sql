use lucas_beraldi;

create table tipomidia(
	cod_tipomidia char(3),
    descricao varchar(40),
    primary key(cod_tipomidia)
);

create table categoria(
	cod_categoria char(3),
    descricao varchar(40),
    primary key(cod_categoria)
);

create table titulo(
	cod_titulo int,
    nome_titulo varchar(40),
    ano_producao double,
    cod_categoria char(3),
    primary key(cod_titulo),
    foreign key(cod_categoria) references categoria(cod_categoria)
);

create table copias(
	cod_copias smallint(6),
    cod_tipomidia char(3),
    cod_titulo int,
    status_ char(11),
    primary key(cod_copias)
);









