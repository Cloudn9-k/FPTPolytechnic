import { createRouter, createWebHistory } from 'vue-router'
import Phong from '../components/Phong.vue';
import About from '../components/About.vue';

const router = createRouter({
    history: createWebHistory(import.meta.env.BASE_URL),
    routes: [
        {
          // Điểm thi: Router
          // Đường dẫn gốc, chuyển hướng về trang chính để tránh lỗi "No match found"
          path: '/',
          redirect: '/phong'
        },
        {
          // Điểm thi: Router
          // Đường dẫn chính để hiển thị danh sách và form
          path: '/phong',
          name: 'phong-list', // Đổi tên để tránh trùng lặp
          component: Phong
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
          path: '/phong/add',
          name: 'add-phong',
          component: Phong
        },
        {
          // Điểm thi: Router
          // Đường dẫn cho chức năng chỉnh sửa/chi tiết với tham số động
          path: '/phong/:id/detail',
          name: 'detail-phong',
          component: Phong
        },
        {
          // Điểm thi: Router
          // Đường dẫn cho chức năng chỉnh sửa
          // Note: Đường dẫn này có thể được gộp vào Detail để đơn giản hơn
          path: '/phong/edit/:id',
          name: 'edit-phong',
          component: Phong
        }
    ]
});
export default router;