use lucas_beraldi;

create table cliente(
	id int,
    nome varchar(100),
    rg varchar(30),
    titulo_eleitoral varchar(20),
    primary key(id)
);

create table cliente_telefone(
	fk_cliente int,
    fk_telefone_ddd int,
    fk_telefone_telefone int,
    primary key(fk_cliente,fk_telefone_ddd,fk_telefone_telefone),
    foreign key(fk_cliente) references cliente(id),
    foreign key(fk_telefone_ddd,fk_telefone_telefone) references telefone(ddd,telefone)
);

create table telefone(
	telefone int,
    ddd int,
    primary key(ddd,telefone)
);

insert into cliente (id, nome, rg, titulo_eleitoral) values (1, "bosa", 123, 321);
insert into cliente (id, nome, rg, titulo_eleitoral) values (2, "beraldi", 456, 654);
insert into cliente (id, nome, rg, titulo_eleitoral) values (3, "pato", 789, 987);

insert into telefone (telefone, ddd) values (147, 555);
insert into telefone (telefone, ddd) values (258, 555);
insert into telefone (telefone, ddd) values (369, 555);

insert into cliente_telefone (fk_cliente,fk_telefone_ddd,fk_telefone_telefone) values (1, 555, 147);
insert into cliente_telefone (fk_cliente,fk_telefone_ddd,fk_telefone_telefone) values (2, 555, 258);
insert into cliente_telefone (fk_cliente,fk_telefone_ddd,fk_telefone_telefone) values (3, 555, 369);


select * from (telefone);
select * from (cliente);
select * from (cliente_telefone);

delete from cliente_telefone where fk_cliente = 3 ;
delete from cliente where id = 3;

drop table cliente;












