import { createApp } from 'vue'
import App from './App.vue'
import router from './router' // Dòng này quan trọng, phải import đúng đối tượng router

// Import Bootstrap
import 'bootstrap/dist/css/bootstrap.min.css'
import 'bootstrap'

const app = createApp(App)

// Lỗi thường xảy ra ở đây
// Bạn phải dùng app.use(router) để gắn plugin router vào ứng dụng
app.use(router) 

app.mount('#app')