import {createRouter, createWebHistory} from 'vue-router'
import MonAn from '../components/MonAn.vue'
import About from '../components/About.vue' 
const router = createRouter({
    history: createWebHistory(import.meta.env.BASE_URL),
    routes: [
        {
          path: '/',
          redirect: '/mon-an'
        },
        {
          path: '/mon-an',
          name: 'mon-an-list',
          component: MonAn
        },
        {
          path: '/about',
          name: 'about',
          component: About
        },
        {
          path: '/mon-an/add',
          name: 'add-mon-an',
          component: MonAn
        },
        {
          path: '/mon-an/:id/remove',
          name: 'remove-mon-an',
          component: MonAn
        }
    ]
})
export default router