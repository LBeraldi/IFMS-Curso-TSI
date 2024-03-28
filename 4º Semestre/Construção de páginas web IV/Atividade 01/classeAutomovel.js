class Automovel {
    constructor(modelo, marca, ano) {
        this.marca = marca;
        this.modelo = modelo;
        this.ano = ano;
    }

    imprimirDados() {
        console.log(`Marca: ${this.marca}`);
        console.log(`Modelo: ${this.modelo}`);
        console.log(`Ano: ${this.ano}`);
    }
}

const meuAutomovel = new Automovel('Chevrolet', 'Marea', 2013);
meuAutomovel.imprimirDados();
