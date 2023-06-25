<template>
    <p>Card #{{$route.params.card_id}}</p>
    <p>{{ card_name }}</p>
    <form @submit.prevent="submit">
        <input placeholder="new name" v-model="formEdit.name">
        <button type="submit">update</button>
    </form>
    <form @submit.prevent="add_task">
        <input placeholder="new card" v-model="task_name">
        <button type="submit">add task</button>
    </form>
    <table>
        <tr v-for="value in tasks">
            <td>{{ value.name }}</td>
            <td @click.native="delete_task(value.id)"><button v-on:click="$emit('delete_task', value.id)">delete</button></td>
        </tr>
    </table>
</template>

<script>
import axios from 'axios';

export default{
    data(){
        return{
            card_name: this.$route.params.card_name,
            formEdit: {
                name: "",
                list_id: this.$route.params.list_id
            },
            tasks: [],
            task_name: '',
        }
    },
    mounted(){
        axios.get('/api/v1/tasks/'+this.$route.params.card_id).then((response) => {
            this.tasks = response.data['data'];
            console.log(this.tasks);
        })
        
    },
    methods: {
        submit(){
            axios.put('/api/v1/cards/'+this.$route.params.card_id, this.formEdit).then(response => {
                this.card_name = response.data['data'].name;
                    console.log(response);
                });
        },
        add_task: function(){
            const task = { name: this.task_name, card_id: this.$route.params.card_id };
            console.log(task);
            axios.post("/api/v1/tasks", task)
                .then((response) => {
                    axios.get('/api/v1/tasks/'+this.$route.params.card_id).then((response) => {
                        this.tasks = response.data['data'];
                        console.log(this.tasks);
                    })
                })
            
        },
        delete_task: function(id){
            axios.delete('/api/v1/tasks/'+id)
                .then(response => {
                    console.log(response);

                    axios.get('/api/v1/tasks/'+this.$route.params.card_id).then((response) => {
                        this.tasks = response.data['data'];
                        console.log(this.tasks);
                    })
                });
        },
    },
}

</script>
