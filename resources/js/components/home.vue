<template>
    <p>home</p>
    <table>
        <tr v-for="value in desks">
            <td><router-link :to="{path: '/lists/' +  value.id}">{{ value.name }}</router-link></td>
            <td @click.native="delete_desk(value.id)"><button v-on:click="$emit('delete_desk', value.id)">delete</button></td>
        </tr>
    </table>
    <form @submit.prevent="add_desk">
        <input placeholder="new desk" v-model="desk_name">
        <button type="submit">add desk</button>
    </form>
</template>

<script>
import axios from 'axios';

export default{
    data(){
        return{
            'desks': {},
            'desk_name': ''
        }
    },
    mounted(){
        axios.get('api/v1/desks').then((response) => {
            this.desks = response.data['data'];
            console.log(this.desks);
        })
    },
    methods: {
        delete_desk: function(id){
            axios.delete('/api/v1/desks/'+id)
                .then(response => {
                    console.log(response);

                    axios.get('api/v1/desks').then((response) => {
                        this.desks = response.data['data'];
                        console.log(this.desks);
                    })
                });
        },
        add_desk: function(){
            const desk = { name: this.desk_name };
            console.log(desk);
            axios.post("api/v1/desks", desk)
                .then((response) => {
                    axios.get('api/v1/desks').then((response) => {
                        this.desks = response.data['data'];
                        console.log(this.desks);
                    })
                })
            
        }
    },
}

</script>
