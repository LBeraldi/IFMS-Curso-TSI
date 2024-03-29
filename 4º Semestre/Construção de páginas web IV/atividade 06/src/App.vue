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
      if(this.cliente.id === ""){
        this.cliente.id = this.contador++;
        this.clientes.push(this.cliente);
        this.cliente = new Cliente();
      }else{
        for(let i = 0; i < this.clientes.length; i++){
          if(this.clientes[i].id === this.cliente.id){
            this.clientes[i].nome = this.cliente.nome;
            this.clientes[i].email = this.cliente.email;
            this.clientes[i].telefone = this.cliente.telefone;
            this.cliente = new Cliente();
            return;
          }
        }
      }
    },
    removerCliente(objParaRemover){
      alert(objParaRemover.id);
      for(let i in this.clientes){
        if(this.clientes[i].id === objParaRemover.id){
          this.clientes.splice(i,1);
          break;
        }
      }
    },
    editarCliente(objParaEditar){
      this.cliente = new Cliente();
      this.cliente.id = objParaEditar.id;
      this.cliente.nome = objParaEditar.nome;
      this.cliente.email = objParaEditar.email;
      this.cliente.telefone = objParaEditar.telefone;
    },
    cancelarEdicao(){
      this.cliente = new Cliente();
    }
  }
}
</script>

<template>
    <h1>Home</h1>
<!--  <button>Novo cliente</button>-->
    <my-form :campos="campos" 
              :objeto="cliente"
              @onCancelar="cancelarEdicao"   
              @onSalvar="addCliente">
    </my-form>
    <my-table :cabecalho="cabecalho" 
              :dados="clientes" 
              :showEditar="true"
              :showRemover="true"
              @onEditar="editarCliente"
              @onRemover="removerCliente">
    </my-table>
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
    background-color: yellow;
  }
</style>
