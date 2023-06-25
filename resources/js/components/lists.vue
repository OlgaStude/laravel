<template>
    <p>desk #{{ $route.params.id }}</p>
    <p>{{ desk.name }}</p>
    <form @submit.prevent="submit">
        <input placeholder="new name" v-model="formEdit.name">
        <button type="submit">update</button>
    </form>
    <form @submit.prevent="add_list">
        <input placeholder="new list" v-model="list_name">
        <button type="submit">add list</button>
    </form>
    <table>
        <tr v-for="value in lists">
            <td><router-link :to="{path: '/cards/' +  desk.id+'/'+  value.id+'/'+value.name}">{{ value.name }}</router-link></td>
            <td @click.native="delete_list(value.id)"><button v-on:click="$emit('delete_list', value.id)">delete</button></td>
        </tr>
    </table>
</template>

<script>
import axios from 'axios';

export default{
    data(){
        return{
            'desk': [],
            'lists': [],
            formEdit: {
                name: "",
            },
            'list_name': '',
        }
    },
    mounted(){
        axios.get('/api/v1/desks/'+this.$route.params.id).then((response) => {
            this.desk = response.data['data'];
            console.log(this.lists);
        })
        axios.get('/api/v1/lists/'+this.$route.params.id).then((response) => {
            this.lists = response.data['data'];
            console.log(this.lists);
        })
        
    },
    methods: {
        submit(){
            axios.put('/api/v1/desks/'+this.$route.params.id, this.formEdit).then(response => {
                    this.desk.name = this.formEdit.name;
                    console.log(response);
                });
        },
        add_list: function(){
            const list = { name: this.list_name, desks_id: this.$route.params.id };
            console.log(list);
            axios.post("/api/v1/lists", list)
                .then((response) => {
                    axios.get('/api/v1/lists/'+this.$route.params.id).then((response) => {
                        this.lists = response.data['data'];
                        console.log(this.lists);
                    })
                })
            
        },
        delete_list: function(id){
            axios.delete('/api/v1/lists/'+id)
                .then(response => {
                    console.log(response);

                    axios.get('/api/v1/lists/'+this.$route.params.id).then((response) => {
                        this.lists = response.data['data'];
                        console.log(this.lists);
                    })
                });
        },
    },
}

</script>
