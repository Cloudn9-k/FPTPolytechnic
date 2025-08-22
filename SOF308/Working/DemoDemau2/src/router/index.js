import { createRouter, createWebHistory } from 'vue-router'
import Phone from '../components/Phone.vue'
import About from '../components/About.vue'

const router = createRouter({
    history: createWebHistory(import.meta.env.BASE_URL),
    routes: [
        {
          // Điểm thi: Router
          // Đường dẫn gốc, chuyển hướng về trang chính để tránh lỗi "No match found"
          path: '/',
          redirect: '/phone'
        },
        {
          // Điểm thi: Router
          // Đường dẫn chính để hiển thị danh sách và form
          path: '/phone',
          name: 'phone-list', // Đổi tên để tránh trùng lặp
          component: Phone
        },
        {
          // Điểm thi: Router
          // Đường dẫn đến trang giới thiệu
          path: '/about',
          name: 'about',
          component: About
        },
        {
          // Điểm thi: Router
          // Đường dẫn cho chức năng thêm điện thoại
          path: '/phone/add',
          name: 'add-phone',
          component: Phone
        },
        {
          // Điểm thi: Router
          // Đường dẫn cho chức năng chỉnh sửa/chi tiết với tham số động
          path: '/phone/:id/detail',
          name: 'detail-phone',
          component: Phone
        },
        {
          // Điểm thi: Router
          // Đường dẫn cho chức năng chỉnh sửa
          // Note: Đường dẫn này có thể được gộp vào Detail để đơn giản hơn
          path: '/phone/edit/:id',
          name: 'edit-phone',
          component: Phone
        }
    ]
});
export default router;