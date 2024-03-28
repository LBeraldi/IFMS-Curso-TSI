use lucas_beraldi;

create table TBUsuario(
	id int,
    nome varchar(45),
    login varchar(45),
    senha varchar(45),
    admin boolean,
    primary key(id)
);

create table TBPessoa (
	id int,
    nome varchar(45),
    nascimento datetime,
    rg char(10),
    cpf char(14),
    sexo char(1),
    primary key(id)
);

create table TBEspecialidade(
	id int,
    descricao varchar(45),
    primary key(id)
);

create table TBEspecialidade_Medico(
	idpessoa int,
    idespecialidade int,
    crm char(6),
    primary key(crm),
    foreign key(idpessoa) references TBPessoa(id),
    foreign key(idespecialidade) references TBEspecialidade(id)
);

create table TBPais(
	id int,
    sigla varchar(3),
    primary key(id)
);

create table TBEstado(
	id int,
    nome varchar(75),
    uf char(3),
	idpais int,
    primary key(id),
    foreign key(idpais) references TBPais(id)
);

create table TBCidade(
	id int,
    nome varchar(75),
    iduf int,
    primary key(id),
    foreign key(iduf) references TBEstado(id)
);

create table TBEndereco(
	id int,
    numero char(10),
    rua varchar(100),
    bairro varchar(50),
    idpessoa int,
    idcidade int,
    primary key(id),
    foreign key(idpessoa) references TBPessoa (id),
    foreign key(idcidade) references TBCidade(id)
);

create table contato(
	id int,
    telefone varchar(15),
    email varchar(50),
    idpessoa int,
    primary key(id),
    foreign key(idpessoa) references TBPessoa(id)
);

create table convenio(
	id int,
    descricao varchar(45),
    empresa varchar(45),
    desconto double,
    primary key(id)
);

create table TBConsulta(
	idconsulta int,
    dataconsulta datetime,
    horaconsulta time,
    preconsulta double,
    idconvenio int,
    idmedico int,
    idpaciente int,
    primary key(idconsulta),
    foreign key(idconvenio) references convenio(id),
    foreign key(idmedico) references TBPessoa(id),
    foreign key(idpaciente) references TBPessoa(id)
);







