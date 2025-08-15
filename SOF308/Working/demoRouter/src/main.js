import { createApp } from 'vue'
import './style.css'
import App from './App.vue'

import 'bootstrap/dist/css/bootstrap.min.css'
// createApp(App).mount('#app')

const App1 = createApp(App);
import router1 from './router/Router.js';
App1.use(router1);
App1.mount('#app');
// lưu ý k đc viết sau .mount mà phải viết trước .mount
// vì nếu viết sau thì sẽ không sử dụng được router nữa
// 