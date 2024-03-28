<template>
    <div v-for="c in campos" :key="c">
        <label>{{ c.label }}</label>
        <input v-model="objeto[c.chave]"/>
    </div>
    <button v-on:click="acaoBotaoSalvar">Salvar</button>
</template>

<script>
    export default{
        emits:["onSalvar"],
        props:["campos","objeto"],
        methods:{
            acaoBotaoSalvar(){
                this.$emit("onSalvar","Evento Disparado");
            }
        }
    }
</script>

<style>

</style>