import { createRouter, createWebHistory } from 'vue-router'
import TrangChu from '../components/TrangChu.vue'
import Pages from '../components/Pages.vue'

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: '/',
      name: 'trang-chu',
      component: TrangChu
    },
    {
      path: '/page',
      name: 'page',
      component: Pages
    }
  ]
})

export default router