import { createApp } from 'vue';
import { createPinia } from 'pinia';

import App from './App.vue';
import router from './router/routers'; 
import axios from 'axios';
import 'bootstrap/dist/css/bootstrap.min.css';
import 'bootstrap/dist/js/bootstrap.bundle.min.js'
import 'bootstrap-icons/font/bootstrap-icons.css';

const app = createApp(App);
axios.interceptors.request.use(config => {
    const authHeader = localStorage.getItem('authHeader');
    if (authHeader) {
        config.headers.Authorization = authHeader;
        console.log("Đã gắn Header:", authHeader);
    } else {
        console.log("Không tìm thấy Header đăng nhập!");
    }
    return config;
}, error => {
    return Promise.reject(error);
});
app.use(createPinia());
app.use(router);
app.mount('#app');