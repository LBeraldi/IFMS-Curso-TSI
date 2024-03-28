<template>
    <table>
        <thead>
            <th v-for="item in cabecalho" :key="item">
                {{ item.titulo }}
            </th>
            <th>
               Ação 
            </th>
        </thead>

        <tbody>
            <tr v-for="item in dados" :key="item.id">
                <td v-for="obj in cabecalho" :key="item">
                    {{ item[obj.chave] }}
                </td>
                <td>
                    <button v-on:click="remover(item)">Remover</button>
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
        emits:["onRemover"],
        props:[
            "cabecalho",
            "dados"
        ],
        data(){
            return {

            }
        },
        methods:{
            remover(objParaRemover){
                this.$emit("onRemover", objParaRemover);
            }
            //[TODO] Inserir evento para editar um objeto
        }
    }
</script>

<style scoped>
    table{
        width: 100%;
        border: none;
    }

    table thead{
        background-color: blue;
        color:white
    }

    table thead th{
        padding: 5px;
        text-align: left;
        font-weight: bold;
    }

    table tbody tr:nth-child(even){
        background-color: gainsboro;
    }

    table tbody tr td{
        padding: 5px;
    }
</style>