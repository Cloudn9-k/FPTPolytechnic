// src/stores/cart.ts
import { defineStore } from 'pinia';
import { ref, computed, watch } from 'vue';
import type { Product } from '../types';

export const useCartStore = defineStore('cart', () => {
    // State: Mảng chứa sản phẩm trong giỏ (Lưu thêm field quantity)
    const cartItems = ref<any[]>([]);

    // Load từ LocalStorage khi khởi động
    if (localStorage.getItem('cart')) {
        cartItems.value = JSON.parse(localStorage.getItem('cart') as string);
    }

    // Watch: Khi giỏ hàng thay đổi thì lưu ngay vào LocalStorage
    watch(cartItems, (newVal) => {
        localStorage.setItem('cart', JSON.stringify(newVal));
    }, { deep: true });

    // Actions
    const addToCart = (product: Product) => {
        const item = cartItems.value.find(i => i.id === product.id);
        if (item) {
            item.quantity++; // Đã có thì tăng số lượng
        } else {
            cartItems.value.push({ ...product, quantity: 1 }); // Chưa có thì thêm mới
        }
        alert("Đã thêm vào giỏ!");
    };

    const removeFromCart = (id: number) => {
        const index = cartItems.value.findIndex(i => i.id === id);
        if (index !== -1) cartItems.value.splice(index, 1);
    };

    const clearCart = () => {
        cartItems.value = [];
    };

    // Getters
    const totalAmount = computed(() => {
        return cartItems.value.reduce((total, item) => total + (item.price * item.quantity), 0);
    });

    const totalCount = computed(() => {
        return cartItems.value.reduce((total, item) => total + item.quantity, 0);
    });

    return { cartItems, addToCart, removeFromCart, clearCart, totalAmount, totalCount };
});