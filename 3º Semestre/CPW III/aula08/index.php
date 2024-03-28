<?php

class Pessoa{
	private $nome;
	private $idade;

	public function __construct($parNome)
	{
		$this->nome = $parNome;
	}

	public function mostrarNome()
	{
		return $this->nome;
	}

	public function falar(){
		echo "falou";

	}
	
	public function calculaIdade($dataAtual, $dataNascimento)
	{
		$this->idade = $dataAtual - $dataNascimento;
		return $this->idade;	
	}
}

class Veiculo{
	private $modelo;
	protected $cor;
	private $ano;

	public function alteraCor($corNova){
		$this->cor = $corNova;
	}

	public function mostraCor()
	{
		return $this->cor;	
	}
}


class Carro extends Veiculo{	
	private $conversivel;
	
	public function alteraConversivel($parConv){
		$this->conversivel = $parConv;
		return $this->conversivel;
	}

	public function mostraCor()
	{
	return "a cor do carro é" . $this->cor;	
	}
}

class Moto extends Veiculo{
	private $capacete;

	public function alteraCapacete($parCapac){
		$this->capacete = $parCapac;
		return $this->capacete;
	}
}

$var1 = new Carro();
$var2 = new Moto();

$var1->alteraCor("Vermelho");
$var2->alteraCor("Azul");

echo "Cor do Carro: " . $var1->mostraCor();
echo "<br>";
echo "Cor da Moto: " . $var2->mostraCor();
echo "<br>";
echo $var1->alteraConversivel("Carro Conversivel");
echo "<br>";
echo $var2->alteraCapacete("Capacete Azul");




