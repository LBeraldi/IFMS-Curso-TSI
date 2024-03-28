<script>
import MyForm from './components/MyForm.vue';
import MyTable from './components/MyTable.vue';
import Cliente from './models/Cliente';

export default{
  components:{
    MyTable,
    MyForm
  },
  data(){
    return{
      contador: 4,
      cliente: new Cliente(),
      campos:[
        {label:"Nome", chave:"nome"},
        {label:"E-mail", chave:"email"},
        {label:"Telefone", chave:"telefone"}
      ],
      cabecalho: [
        {titulo:"ID", chave:"id"},
        {titulo:"Nome", chave:"nome"},
        {titulo:"E-mail", chave:"email"},
        {titulo:"Telefone", chave:"telefone"}
      ],
      clientes:[
        {id:1, nome:"João", email:"joao@gmail.com", telefone:"5646"},
        {id:2, nome:"Maria", email:"maria@gmail.com", telefone:"2245"},
        {id:3, nome:"Caio", email:"caio@gmail.com", telefone:"4524"}
      ]
    }
  },
  methods:{
    addCliente(msg){
      //[TODO] Alterar para poder atualizar um cliente
      alert(msg);
      this.cliente.id = this.contador++;
      this.clientes.push(this.cliente);
      this.cliente = new Cliente();
    },
    removerCliente(objParaRemover){
      alert(objParaRemover.id);
      for(let i in this.clientes){
        if(this.clientes[i].id === objParaRemover.id){
          this.clientes.splice(i,1);
          break;
        }
      }
    }
  }
}
</script>

<template>
    <h1>Home</h1>
    <my-form :campos="campos" :objeto="cliente" @onSalvar="addCliente"></my-form>
    <my-table :cabecalho="cabecalho" :dados="clientes" @onRemover="removerCliente"></my-table>
</template>

<style scoped>
  label{
    display: block;
    margin: 2px;
  }

  input{
    display: block;
    margin: 2px;
  }

  button{
    display: block;
    margin: 2px;
  }
</style>
