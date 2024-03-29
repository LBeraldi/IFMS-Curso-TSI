<template>
  <div>
    <div class="entrada" v-for="c in campos" :key="c">
        <label>{{ c.label }}</label>
        <input v-model="objeto[c.chave]"/>
    </div>
    <button class="btn green" v-on:click="acaoBotaoSalvar">Salvar</button>
    <button class="btn red" v-on:click="acaoBotaoCancelar">Cancelar</button>
  </div>
</template>

<script>
    export default{
        emits:["onSalvar","onCancelar"],
        props:["campos","objeto"],
        methods:{
            acaoBotaoSalvar(){
                this.$emit("onSalvar","Evento Disparado");
            },
            acaoBotaoCancelar(){
                this.$emit("onCancelar");    
            }
        }
    }
</script>

<style>
  .entrada{
    display: flex;
    flex-direction: column;
    max-width: 20vw;
  }

  .entrada + button{
    background-color: darkolivegreen;
    margin: 1rem 0 1rem;
    margin-right: 1rem;
    color: #f2f2f2;
  }

  .entrada + button + button{
    background-color: indianred;
    color: #f2f2f2;
  }

  button{
    cursor: pointer;
    padding: .5rem;
    border-radius: 3px;
    transition: all .1s;
  }

  button:hover{
    transform: scale(1.05);
  }
</style>