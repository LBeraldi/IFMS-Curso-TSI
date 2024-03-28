use lucas_beraldi;

create table filmes(
	titulo
    resumo
    duracao
    ano_lancamento
    data_estreia time
    produtora
    elenco
    genero
    classificacao
);

use treinamento;
select * from veiculo, veiculo_condutor,condutor where marca = "BMW" and fk_veiculo = placa and fk_condutor = cpf ;