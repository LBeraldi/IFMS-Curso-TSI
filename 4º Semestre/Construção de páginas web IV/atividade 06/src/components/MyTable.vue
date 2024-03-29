<template>
    <table>
        <thead>
            <th v-for="item in cabecalho" :key="item">
                {{ item.titulo }}
            </th>
            <th v-if="showEditar || showRemover">
               Ação
            </th>
        </thead>

        <tbody>
            <tr v-for="item in dados" :key="item.id">
                <td v-for="obj in cabecalho" :key="item">
                    {{ item[obj.chave] }}
                </td>
                <td v-if="showEditar || showRemover">
                    <button class="remover" v-show="showRemover" v-on:click="remover(item)">Remover</button>
                    <button class="editar" v-if="showEditar" v-on:click="editar(item)">Editar</button>
                </td>
            </tr>
        </tbody>
    </table>
</template>

<script>
    // Single File Component
    export default{
        name:"MyTable",
        components:{

        },
        emits:["onRemover", "onEditar"],
        props:[
            "cabecalho",
            "dados",
            "showRemover",
            "showEditar"
        ],
        data(){
            return {

            }
        },
        methods:{
            remover(objParaRemover){
                this.$emit("onRemover", objParaRemover);
            },
            editar(objParaEditar){
                this.$emit("onEditar", objParaEditar);
            }
        }
    }
</script>

<style scoped>
    .editar{
      background-color: darkolivegreen;
      color: #f2f2f2;
    }
    .remover{
      margin-right: 1rem;
      background-color: indianred;
      color: #f2f2f2;
    }

    table{
        width: 100%;
        border: none;
    }

    table thead{
        background-color: #2c3e50;
        color:white
    }

    table thead th{
        padding: 1rem;
        text-align: left;
        font-weight: bold;
    }

    table tbody tr:nth-child(even){
        background-color: gainsboro;
    }

    table tbody tr td{
        padding: 1rem;
    }
</style>