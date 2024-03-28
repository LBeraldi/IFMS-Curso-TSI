<template>
    <!-- single file component -->

    <form action="#" method="post">
        <fieldset v-for="campo in campos">
            <label >{{ campo.titulo }}</label>
            <input/>
        </fieldset>
    </form>
</template>

<script>
export default{
    name: "MyForm",
    components:{

    },

    props:[
        "campos",
        "tipos"
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
