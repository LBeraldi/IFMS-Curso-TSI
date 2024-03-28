<script>
import MyTable from './components/MyTable.vue';
import cliente from '../src/models/Cliente.js';
import MyForm from './components/MyForm.vue';

export default{
  components:{
    MyTable,
    MyForm
},

  data(){
    return{
      campo:[
        {titulo:"nome"},
        {titulo:"email"},
        {titulo:"telefone"}
      ],
      // contador: 5,
      // cliente:{
      //   id:"",
      //   nome:"",
      //   email:"",
      //   telefone:""
      // },
      // cabecalho:[
      //   {titulo:"ID", chave:"id"},
      //   {titulo:"Nome", chave:"nome"},
      //   {titulo:"E-mail", chave:"email"}
      // ],
      // clientes:[
      //   {id:1, nome:"joao", email:"Joao@gmail.com"},
      //   {id:2, nome:"Pedro", email:"Pedro@gmail.com"},
      //   {id:3, nome:"Maria", email:"Maria@gmail.com"},
      //   {id:4, nome:"Thiago", email:"Thigo@gmail.com"}
      // ],

      // cabecalhoLivros:[
      //   {titulo:"Titulo", chave:"titulo"},
      //   {titulo:"Autor", chave:"autor"}
      // ],
      // livro:[
      //   {titulo:"Arte da guerra", autor:"Lucas"},
      //   {titulo:"Codigo limpo", autor:"Desconhecido"}
      // ]
    }
  },
  methods:{
    addForm(){

    },
    addCliente(){
      this.cliente.id = this.contador++;
      this.clientes.push(this.cliente);
      this.cliente = new Cliente();
    }
  }

}
</script>

<template>
<div class="main">
    <MyForm :campos="campo"></MyForm>
    
    <button @:click="addCliente">Salvar</button>
    <MyTable :cabecalho="cabecalho" :dados="clientes">
  
    </MyTable>
  
    <MyTable :cabecalho="cabecalhoLivros" :dados="livro">
    </MyTable>
</div>

</template>

<style>
.main{
  display: flex;
  flex-direction: column;
  align-items: center;
  }
</style>
