<template>
    <!-- single file component -->
  <table>
    <thead>
        <!-- Diretivas : "Dar mais poder para o HTML" -->
        <th v-for="item in cabecalho" key="item">
            {{ item.titulo }}
        </th>
    </thead>

    <tbody>
        <tr v-for="(item,i) in dados" key="item.id">
            <td v-for="obj in cabecalho" :key="obj">
                {{ item[obj.chave] }}
            </td>
        </tr>
    </tbody>
  </table>
</template>

<script>
export default{
    name: "MyTable",
    components:{

    },

    props:[
        "cabecalho",
        "dados"
    ],

    data(){
        return{

        }
    },

    methods:{

    }
}
</script>

<style scoped>
    
</style>
