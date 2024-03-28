use lucas_beraldi;

create table veiculos (
	placa varchar(10) not null,
    dt_fabricante date not null default '1990-10-20',
    valor double,
    marca varchar(15) not null,
    modelo varchar(15) not null,
    status_novo_usado varchar(15) not null,
    dt_hr_venda timestamp
);

select * from veiculos where valor<40000;

 insert into veiculos (placa, dt_fabricante, valor, marca, modelo, status_novo_usado, dt_hr_venda)
 value ("hta5338", "1990-10-10", 40.000, "Fiat", "Uno", "Usado", "2019-08-21 13:20");
 insert into veiculos (placa, dt_fabricante, valor, marca, modelo, status_novo_usado)
 value ("hop2134", "2023-05-10", 80.000, "chrevolet", "onix", "novo");
 insert into veiculos (placa, valor, marca, modelo, status_novo_usado, dt_hr_venda)
 value ("qjk4021", 50.000, "Fiat", "argo", "Usado", "2019-08-21 13:20");
 
 select * from veiculos;
 
 alter table veiculos add ano_do_veiculo varchar(15);
 
 select * from veiculos
 where dt_fabricante > "2021-01-20";
 
 alter table veiculos drop dt_hr_venda;
 
 update veiculos set valor = 72.88126
 where placa = "qjk4021";
 
 delete from veiculos
 where placa = "hta5338";
 
 alter table veiculos change status_novo_usado estado_novo_usado boolean;