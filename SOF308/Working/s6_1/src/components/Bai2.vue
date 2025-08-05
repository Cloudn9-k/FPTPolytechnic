<template>
    <div class="container mt-5">
        <h2 class="mb-4 text-primary text-center">Danh sách sản phẩm</h2>
        
        <div class="card p-4 shadow-sm">
            <ul class="list-group">
                <li v-for="(sanPham, index) in sanPhams" :key="index" class="list-group-item d-flex justify-content-between align-items-center">
                    <div>
                        <h5 class="mb-1">{{ sanPham.ten }}</h5>
                        <small class="text-muted">Giá: {{ sanPham.gia.toLocaleString('vi-VN') }} VNĐ</small>
                    </div>
                    </li>
            </ul>
        </div>
    </div>
</template>

<script setup>
import { ref } from 'vue';

// 2.1 Tạo một mảng sanPhams gồm 5 sản phẩm
const sanPhams = ref([
    { ten: 'Laptop Dell XPS 15', gia: 35000000 },
    { ten: 'Điện thoại Samsung Galaxy S24', gia: 22000000 },
    { ten: 'Màn hình LG 4K', gia: 8500000 },
    { ten: 'Bàn phím cơ Logitech G Pro X', gia: 4200000 },
    { ten: 'Chuột không dây Logitech MX Master 3S', gia: 2500000 }
]);
</script>

<style scoped>
.list-group-item {
    transition: transform 0.2s ease, box-shadow 0.2s ease;
}
.list-group-item:hover {
    transform: translateX(5px);
    box-shadow: 0 0.125rem 0.25rem rgba(0,0,0,.075) !important;
}
</style>