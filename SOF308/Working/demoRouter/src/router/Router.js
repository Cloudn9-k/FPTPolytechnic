// mở header ra để xem đường dẫn
// liệt kệ mảng chứa các đường dẫn và nội dung
// trang chủ => TrangChu
//page=>Pages

import { createRouter, createWebHistory } from "vue-router";
import Pages from "../page/Pages.vue";
import TrangChu from "../page/TrangChu.vue";

const listRouter = [
    {
        path:'/trang-chu',
        name:'TrangChu',
        component: TrangChu// nội dung của đường dẫn này chứa gì? - tên file.vue trong thư mục page
    },
    {
        path: '/page',
        name: 'Page',
        component: Pages // lazy loading - tải khi cần thiết
    }
]
const router1 = createRouter(
    {
        history: createWebHistory(), // tạo ra lịch sử duyệt web,
        routes: listRouter // truyền vào 1 list router

    }   
)
export default router1;// tạo ra nơi khách có thể sử dụng