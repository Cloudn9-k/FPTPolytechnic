import { createRouter, createWebHistory } from 'vue-router'
import DienThoai from '../components/DienThoai.vue'
import Pages from '../components/Pages.vue'

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: '/',
      redirect: '/phone'
    },
    {
      path: '/phone',
      name: 'phone-list',
      component: DienThoai
    },
    {
      path: '/page',
      name: 'pages',
      component: Pages
    },
    {
      path: '/phone/add',
      name: 'add-phone',
      component: DienThoai
    }
  ]
})

export default router