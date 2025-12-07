<script setup lang="ts">
import { ref, onMounted } from 'vue';
import { useRoute } from 'vue-router';
import axios from 'axios';
import type { Product } from '../../types';
import { useCartStore } from '../../stores/cart'; 

const route = useRoute();
const cartStore = useCartStore();
const product = ref<Product | null>(null);
const API_URL = "http://localhost:8080/rest/products";

onMounted(async () => {
    const id = route.params.id; 
    try {
        const resp = await axios.get<Product>(`${API_URL}/${id}`);
        product.value = resp.data;
    } catch (err) {
        console.error("Lỗi tải sản phẩm", err);
    }
});

const formatCurrency = (value: number) => {
    return new Intl.NumberFormat('vi-VN', { style: 'currency', currency: 'VND' }).format(value);
}
</script>

<template>
    <div class="container mt-5" v-if="product">
        <div class="row">
            <div class="col-md-5">
                <img :src="product.image ? `/images/${product.image}` : 'https://placehold.co/400x400'" 
                     class="img-fluid rounded shadow" alt="Product Image" 
                     style="height: 400px; object-fit: cover;">
            </div>
            <div class="col-md-7">
                <h2 class="fw-bold">{{ product.name }}</h2>
                <h4 class="text-danger my-3">{{ formatCurrency(product.price) }}</h4>
                <hr>
                
                <button @click="cartStore.addToCart(product)" class="btn btn-primary btn-lg me-2">
                    <i class="bi bi-cart-plus"></i> Thêm vào giỏ hàng
                </button>
                <router-link to="/" class="btn btn-outline-secondary btn-lg">
                    Quay lại
                </router-link>
            </div>
        </div>
    </div>
    <div v-else class="text-center mt-5">
        <div class="spinner-border text-primary" role="status"></div>
        <p>Đang tải dữ liệu...</p>
    </div>
</template>