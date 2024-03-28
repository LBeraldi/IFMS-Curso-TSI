use lucas_beraldi;

create table musica (
	id int(11),
    compositor varchar(100),
    categoria varchar(100),
    duracao time,
    cantor varchar(100),
    participacao varchar(100),
    album varchar(100)
);

insert into musica (id, compositor, categoria, duracao, cantor, album) values
(1, "Claudio Noam", "Sertanejo", "00:03:11", "Joao Bosco e Vinicius", "Indescritivel"),
(2, "Roberto Carlos", "MPB", "00:04:32", "Roberto Carlos", "Esse cara sou eu"),
(3, "Jorge", "Sertanejo", "00:02:47", "Jorge e Matheus", "Os anjos cantam");

select * from musica;

alter table musica add ano date;

delete from musica where compositor = "Roberto Carlos";

drop table musica;