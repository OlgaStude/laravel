<template>
    <p>list #{{$route.params.list_id}}</p>
    <p>{{list_name}}</p>
    <form @submit.prevent="submit">
        <input placeholder="new name" v-model="formEdit.name">
        <button type="submit">update</button>
    </form>
    <form @submit.prevent="add_card">
        <input placeholder="new card" v-model="card_name">
        <button type="submit">add card</button>
    </form>
    <table>
        <tr v-for="value in cards">
            <td><router-link :to="{path: '/tasks/' +  $route.params.list_id+'/'+  value.id+'/'+value.name}">{{ value.name }}</router-link></td>
            <td @click.native="delete_card(value.id)"><button v-on:click="$emit('delete_card', value.id)">delete</button></td>
        </tr>
    </table>
</template>

<script>
import axios from 'axios';

export default{
    data(){
        return{
            list_name: this.$route.params.list_name,
            cards: [],
            card_name: '',
            formEdit: {
                name: "",
                desks_id: this.$route.params.desk_id
            },
        }
    },
    mounted(){
        axios.get('/api/v1/cards/'+this.$route.params.list_id).then((response) => {
            this.cards = response.data['data'];
            console.log(this.cards);
        })
        
    },
    methods: {
        submit(){
            axios.put('/api/v1/lists/'+this.$route.params.list_id, this.formEdit).then(response => {
                this.list_name = response.data['data'].name;
                    console.log(response);
                });
        },
        add_card: function(){
            const card = { name: this.card_name, list_id: this.$route.params.list_id };
            console.log(card);
            axios.post("/api/v1/cards", card)
                .then((response) => {
                    axios.get('/api/v1/cards/'+this.$route.params.list_id).then((response) => {
                        this.cards = response.data['data'];
                        console.log(this.cards);
                    })
                })
            
        },
        delete_card: function(id){
            axios.delete('/api/v1/cards/'+id)
                .then(response => {
                    console.log(response);

                    axios.get('/api/v1/cards/'+this.$route.params.list_id).then((response) => {
                        this.cards = response.data['data'];
                        console.log(this.cards);
                    })
                });
        },
    },
}

</script>
