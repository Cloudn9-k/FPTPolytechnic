<script setup lang="ts">
import { ref, onMounted } from 'vue';
import axios from 'axios';
import type { Product } from '../types';
import { useCartStore } from '../stores/cart';
import { useRouter } from 'vue-router';
import { useAuthStore } from '../stores/auth';

const router = useRouter();
const authStore = useAuthStore();
const products = ref<Product[]>([]);
const cartStore = useCartStore(); // Khởi tạo store
const API_URL = "http://localhost:8080/rest/products";

const loadProducts = async () => {
    try {
        const response = await axios.get<Product[]>(API_URL);
        products.value = response.data;
    } catch (error) {
        console.error("Lỗi tải hàng:", error);
    }
};

const formatCurrency = (value: number) => {
    return new Intl.NumberFormat('vi-VN', { style: 'currency', currency: 'VND' }).format(value);
}

onMounted(() => {
    loadProducts();
});
const addToCart = (product: Product) => {
    // 1. Kiểm tra: Nếu là Admin thì chặn lại (Admin không mua hàng)
    if (authStore.user && authStore.user.admin) {
        alert("Admin không thể mua hàng!");
        return;
    }
    
    // 2. Kiểm tra: Nếu chưa đăng nhập -> Chuyển sang Login
    if (!authStore.isAuthenticated) {
        alert("Vui lòng đăng nhập để mua hàng!");
        router.push('/login');
        return;
    }

    // 3. Nếu thỏa mãn thì mới thêm
    cartStore.addToCart(product);
};
</script>

<template>
  <div class="container mt-4">
    <div class="row">
      <div class="col-md-3 mb-4" v-for="p in products" :key="p.id">
        <div class="card h-100 shadow-sm">
          <img :src="p.image ? `/images/${p.image}` : 'https://placehold.co/300x200'" 
               class="card-img-top" style="height: 200px; object-fit: cover;">
          
          <div class="card-body">
            <h5 class="card-title text-truncate">{{ p.name }}</h5>
            <p class="card-text text-danger fw-bold">{{ formatCurrency(p.price) }}</p>
          </div>
          
          <div class="card-footer bg-white border-top-0 d-flex justify-content-between">
             <button @click="cartStore.addToCart(p)" class="btn btn-primary btn-sm">
                <i class="bi bi-cart-plus"></i> Thêm
             </button>
             
             <router-link :to="{ name: 'product-detail', params: { id: p.id } }" class="btn btn-outline-info btn-sm">
                Chi tiết
             </router-link>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>