use lucas_beraldi;

create table pessoas(
	id int primary key,
    nome varchar (50) not null
);

insert into pessoas (id,nome)
values(1,"Thalia");

select * from pessoas

alter table pessoas ADD idade int;

update pessoas set idade = "25"
where id = 1;

alter table pessoas drop idade ;

delete from pessoas
where nome = "Thalia";

drop table pessoas;