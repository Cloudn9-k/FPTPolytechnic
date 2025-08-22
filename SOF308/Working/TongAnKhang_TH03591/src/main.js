import { createApp } from 'vue'
import App from './App.vue'
import router from './router' // Dòng này quan trọng, phải import đúng đối tượng router

// Import Bootstrap
import 'bootstrap/dist/css/bootstrap.min.css'
import 'bootstrap'

const app = createApp(App)
app.use(router) 
app.mount('#app')