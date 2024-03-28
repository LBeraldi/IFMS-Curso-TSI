use lucas_beraldi;

create table a(
 id int primary key,
 nome varchar(100) not null
);

create table b(
 chave int primary key,
 nome varchar(100) not null
);

create table ab(
 fk_a int,
 fk_b int,
 foreign key(fk_a) references a(id),
 foreign key(fk_b) references b(chave)
);


create table h(
 pk INT,
 PRIMARY KEY(pk),
 fk_k INT UNIQUE,
 FOREIGN KEY (fk_k) REFERENCES k(identificador)
);

create table k(
 identificador INT,
 PRIMARY KEY(identificador)
);



create table j(
 chave int primary key unique
);

create table l(
 pk int not null primary key,
 foreign key(pk) references j(chave)
);


CREATE TABLE z (
    id INT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    fk_chefia INT,
    FOREIGN KEY (fk_chefia) REFERENCES z (id)
);

-----------------------------------

create table p (
	id INT,
    PRIMARY KEY (id)
);

Create table r (
	id INT,
    PRIMARY KEY (id),
    fk_p INT not null unique,
    FOREIGN KEY (fk_p) REFERENCES p(id)
);


CREATE TABLE o (
	id INT,
    PRIMARY KEY(id),
    fk_u INT NOT NULL,
    FOREIGN KEY (fk_u) REFERENCES u (id)
);

CREATE TABLE u (
	id INT,
    primary key(id)
);


CREATE TABLE q (
	id INT PRIMARY KEY
);

CREATE TABLE w (
	id INT PRIMARY KEY
);

CREATE TABLE q_w(
	fk_q INT,
    fk_w INT NOT NULL,
    FOREIGN KEY (fk_q) REFERENCES q (id),
    FOREIGN KEY (fk_w) REFERENCES w (id)
);








