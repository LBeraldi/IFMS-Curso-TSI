 use lucas_beraldi;
 
 create table computador(
         id int,
         memoria_ram int,
         cpu varchar(30),
         so varchar(10),
         marca varchar(10),
         preco double,
         data_fabricacao date
 
 );
 
 insert into computador (id,memoria_ram,cpu,so,marca,preco,data_fabricacao)
 value (101510,16,"intel core i5","Linux","Dell",4550.50,"2023/03/01");
 
 select * from computador ;
 
 
 create table funcionario(
     id int not null primary key auto_increment,
     nome varchar(10) not null,
     cpf int not null unique,
     data_nascimento date not null,
     celular int unique,
     cargo varchar(30),
     hora_nasc time
     
 
 );
  
 insert into funcionario (nome,cpf,data_nascimento,celular,cargo,hora_nasc)
 value ("Pedro",10,"2002-08-01",23,"programador","05:10:30");
 
  select * from funcionario ;
 
 
 create table filme(
      id int not null primary key auto_increment,
      titulo varchar(30) not null,
      produtora varchar(20),
      diretor varchar(30),
      classificacao int not null,
      data_hora_estreia datetime not null,
      sinopse varchar(50)  # usa-se "text"
 );
 
 insert into filme (titulo,produtora,diretor,classificacao,data_hora_estreia,sinopse)
  value ("Vingadores","marvel","Nao sei",12,"2019-05-20 13:40:30","Luta e briga");
 
 select * from filme;
 

create table categoria(
     id int not null primary key auto_increment,
     categoria varchar(20) not null,
     permitido_menor_idade boolean not null

);

 insert into categoria(categoria,permitido_menor_idade)
   value("ação",false);

select * from categoria;

create table cliente(
     id int not null primary key auto_increment,
     nome varchar(10),
     email varchar(40),
     cpf varchar(11) not null unique,
     numero_cartao varchar(25) not null unique,
     codigo_seguranca varchar(5) not null unique

);

insert into cliente(nome,email,cpf,numero_cartao,codigo_seguranca)
value ("Lucas","lucas.beraldiso@gmail.com","12345678920","120","10");

select * from cliente;



 