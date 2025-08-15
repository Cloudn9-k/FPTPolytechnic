import { createApp } from 'vue'
import './style.css'
import App from './App.vue'
import router from './router'

// Import Bootstrap CSS và JS
import 'bootstrap/dist/css/bootstrap.min.css'
import 'bootstrap'


// createApp(App).mount('#app')
const app = createApp(App)
app.use(router)
app.mount('#app')