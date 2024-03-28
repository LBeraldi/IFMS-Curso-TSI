use lucas_beraldi;

create table pet_shop (
	id int not null auto_increment,
    raca varchar(200),
    nome_pet varchar(200),
    nome_dono varchar(200),
    telefone varchar (20)
    );
 
 
insert into pet_shop(id, raca, nome_pet, nome_dono, telefone)values
(12, "Vira lata", "Magrelona", "Ricardo", "(67) 98180-0722"),
(11, "Pinscher", "Belinha", "Ricardo", "(67) 98180-0722"),
(8, "Pastor Alemão", "Fiona", "Silas", "(63) 99882-0010"); 
    
    
select * from pet_shop
where telefone= "(67) 98180-0722";

update pet_shop set telefone = "190"
where id = 12;

update pet_shop set raca = "pitbul"
where raca="vira lata";

select upper (pet_shop) from pet_shop;
select nome.pet from pet_shop;

update pet_shop set nome_pet = upper(nome_pet);

delete from pet_shop
where telefone= "(67) 98180-0722";

alter table pet_shop add telefone_fixo int;

alter table pet_shop drop raca ;

alter table pet_shop change telefone telefone_celular varchar(20);

alter table pet_shop change telefone_celular telefone_celular varchar (30);
alter table pet_shop change telefone_fixo telefone_fixo varchar (30);

