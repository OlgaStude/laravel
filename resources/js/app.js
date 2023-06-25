require('./bootstrap');

import { createApp } from 'vue';
import { createRouter, createWebHistory } from 'vue-router';
import App from './components/App';
import home from './components/home';
import lists from './components/lists';
import cards from './components/cards';
import tasks from './components/tasks';

const router = createRouter({
    history: createWebHistory(),
    routes: [
        {
            path: '/',
            component: home
        },
        {
            path: '/lists/:id',
            component: lists
        },
        {
            path: '/cards/:desk_id/:list_id/:list_name',
            component: cards
        },
        {
            path: '/tasks/:list_id/:card_id/:card_name',
            component: tasks
        },
    ]
})

const app = createApp({
    el:'#app',
    components: {App},
})

app.use(router);
app.mount('#app');