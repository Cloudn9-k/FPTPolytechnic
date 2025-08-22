<!-- <!-- 
 main.js
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

router/index.js

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
<script setup>
// LƯU Ý 1: Phải import 'computed' từ 'vue' nếu bạn muốn sử dụng nó.
import { ref, computed } from 'vue';
const danhSachPhone = ref([
    {
        id: 1,
        ten: 'iPhone 14 Pro Max',
        hang: 'Apple',
        dungLuong: '128GB',
        gia: 30000000,
    },
    {
        id: 2,
        ten: 'Samsung Galaxy S22 Ultra',
        hang: 'Samsung',
        dungLuong: '256GB',
        gia: 35000000,
    },
    {
        id: 3,
        ten: 'Google Pixel 6 Pro',
        hang: 'Google',
        dungLuong: '128GB',
        gia: 25000000,
    },
    {
        id: 4,
        ten: 'OnePlus 9 Pro',
        hang: 'OnePlus',
        dungLuong: '256GB',
        gia: 28000000,
    },
]);

const phoneFilter = ref('');

// LƯU Ý 2: `filteredPhones` là một Computed Property
const filteredPhones = computed(() => {
    return danhSachPhone.value.filter(phone =>
        phone.ten.toLowerCase().includes(phoneFilter.value.toLowerCase())
    );
});

// LƯU Ý 3: Đổi tên biến để tránh trùng lặp và gây nhầm lẫn.
const currentPhone = ref({
    id: null, // Thêm id vào để xử lý Update
    ten: '',
    hang: '',
    dungLuong: '',
    gia: null,
});

const isEditing = ref(false);

const submitForm = () => {
    // LƯU Ý 4: Cải thiện logic kiểm tra validate
    if (!currentPhone.value.ten || !currentPhone.value.hang || !currentPhone.value.dungLuong || !currentPhone.value.gia || currentPhone.value.gia <= 100) {
        alert('Vui lòng điền đầy đủ thông tin. Giá phải lớn hơn 100.');
        return;
    }

    if (isEditing.value) {
        // Chức năng CẬP NHẬT
        const index = danhSachPhone.value.findIndex(p => p.id === currentPhone.value.id);
        if (index !== -1) {
            danhSachPhone.value[index] = { ...currentPhone.value };
            alert('Cập nhật thành công!');
        }
    } else {
        // LƯU Ý 5: Cải thiện cách tạo ID để tránh trùng lặp
        const newId = danhSachPhone.value.length > 0 ? Math.max(...danhSachPhone.value.map(p => p.id)) + 1 : 1;
        danhSachPhone.value.push({ ...currentPhone.value, id: newId });
        alert('Thêm mới thành công!');
    }
    resetForm();
};

const resetForm = () => {
    currentPhone.value = { id: null, ten: '', hang: '', dungLuong: '', gia: null };
    isEditing.value = false;
};

const deletePhone = (id) => {
    if (confirm('Bạn có chắc chắn muốn xóa điện thoại này không?')) {
        danhSachPhone.value = danhSachPhone.value.filter(phone => phone.id !== id);
        alert('Xóa thành công!');
    }
};

// LƯU Ý 6: Tạo một hàm riêng để xử lý khi nhấn nút Sửa
const detailPhone = (phone) => {
    currentPhone.value = { ...phone };
    isEditing.value = true;
};
</script>

<template>
    <div class="container mt-5">
        <h1 class="text-center mb-4">Danh Sách Điện Thoại</h1>
        <input v-model="phoneFilter" type="text" class="form-control mb-4" placeholder="Tìm kiếm theo tên điện thoại" />
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Tên</th>
                    <th>Hãng</th>
                    <th>Dung Lượng</th>
                    <th>Giá</th>
                    <th>Hành Động</th>
                </tr>
            </thead>
            <tbody>
                <tr v-for="phone in filteredPhones" :key="phone.id">
                    <td>{{ phone.id }}</td>
                    <td>{{ phone.ten }}</td>
                    <td>{{ phone.hang }}</td>
                    <td>{{ phone.dungLuong }}</td>
                    <td>{{ phone.gia.toLocaleString('vi-VN', { style: 'currency', currency: 'VND' }) }}</td>
                    <td>
                        <button class="btn btn-primary" @click="detailPhone(phone)">Sửa</button>
                        <button class="btn btn-danger" @click="deletePhone(phone.id)">Xóa</button>
                    </td>
                </tr>
            </tbody>
        </table>
        <h2 class="mt-5">{{ isEditing ? 'Sửa Điện Thoại' : 'Thêm Điện Thoại Mới' }}</h2>
        <form @submit.prevent="submitForm">
            <div class="mb-3">
                <label for="ten" class="form-label">Tên Điện Thoại</label>
                <input v-model="currentPhone.ten" type="text" class="form-control" id="ten"
                    placeholder="Nhập tên điện thoại" />
            </div>
            <div class="mb-3">
                <label for="hang" class="form-label">Hãng</label>
                <input v-model="currentPhone.hang" type="text" class="form-control" id="hang"
                    placeholder="Nhập hãng điện thoại" />
            </div>
            <div class="mb-3">
                <label for="dungLuong" class="form-label">Dung Lượng</label>
                <input v-model="currentPhone.dungLuong" type="text" class="form-control" id="dungLuong"
                    placeholder="Nhập dung lượng" />
            </div>
            <div class="mb-3">
                <label for="gia" class="form-label">Giá</label>
                <input v-model.number="currentPhone.gia" type="number" class="form-control" id="gia"
                    placeholder="Nhập giá điện thoại" />
            </div>
            <button type="submit" class="btn btn-success">
                {{ isEditing ? 'Cập Nhật' : 'Thêm Mới' }}
            </button>
            <button type="button" class="btn btn-secondary" @click="resetForm">
                Hủy
            </button>
        </form>
    </div>
</template> -->