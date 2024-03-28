use lucas_beraldi;

create table voo(
	id int(11),
    codigo_voo int(11),
    valor double,
    data_partida date,
    partida_hora time,
    origem varchar(50),
    destino varchar(50),
    chegada_data date,
    chegada_hora time,
    assento int(11),
    bagagem23kg tinyint(1)
    );
    
    insert into voo (id, codigo_voo, valor, data_partida, partida_hora, origem, destino, chegada_data, chegada_hora, assento, bagagem23kg)
    values (1, 1, 500, "2023-04-12", "13:22:30", "Campo grande", "Natal", "2023-04-13", "06:30:00", 11, 1 ),
    (2, 2, 500, "2023-04-12", "22:10:00", "São Paulo", "Campo grande", "2023-04-13", "08:30:00", 05, 0 ),
    (3, 3, 500, "2023-04-14", "09:30:00", "Natal", "Campo grande", "2023-04-15", "13:30:00", 08, 1 );
    
    select * from voo;
    
    alter table voo drop id;
    
    select * from voo
    where valor > 1.500 and origem = "Campo grande" and destino = "Natal" and data_partida = "2023-04-12";
    
    update voo set destino = "Cuiaba" where data_partida = "2023-04-12" and destino = "Campo Grande";
    
    drop table voo;