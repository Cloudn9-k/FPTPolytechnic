<script setup lang="ts">
import { RouterLink, RouterView } from 'vue-router';
import { useCartStore } from './stores/cart';
import { useAuthStore } from './stores/auth';

const cartStore = useCartStore();
const authStore = useAuthStore();
</script>

<template>
  <nav v-if="authStore.user && authStore.user.admin" class="navbar navbar-expand-lg navbar-dark bg-danger sticky-top">
    <div class="container">
      <span class="navbar-brand fw-bold"><i class="bi bi-shield-lock"></i> TRANG QUẢN TRỊ</span>
      <div class="collapse navbar-collapse">
        <ul class="navbar-nav me-auto">
          <li class="nav-item"><RouterLink class="nav-link" to="/admin/products">Quản lý Hàng hóa</RouterLink></li>
          <li class="nav-item"><RouterLink class="nav-link" to="/admin/accounts">Quản lý Tài khoản</RouterLink></li>
          <li class="nav-item"><RouterLink class="nav-link" to="/admin/orders">Quản lý Đơn hàng</RouterLink></li>
        </ul>
        <div class="d-flex align-items-center gap-3">
          <span class="text-white">Xin chào, {{ authStore.user.username }}</span>
          <button @click="authStore.logout" class="btn btn-light btn-sm fw-bold text-danger">Đăng xuất</button>
        </div>
      </div>
    </div>
  </nav>

  <nav v-else class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top">
    <div class="container">
      <RouterLink class="navbar-brand fw-bold" to="/"><i class="bi bi-shop"></i> SHOP JAVA 6</RouterLink>
      <div class="collapse navbar-collapse">
        <ul class="navbar-nav me-auto">
          <li class="nav-item"><RouterLink class="nav-link" to="/">Sản phẩm</RouterLink></li>
          <li class="nav-item" v-if="authStore.isAuthenticated"><RouterLink class="nav-link" to="/my-orders">Đơn hàng của tôi</RouterLink></li>
        </ul>

        <div class="d-flex align-items-center gap-3">
          <RouterLink to="/cart" class="btn btn-outline-light position-relative">
            <i class="bi bi-cart-fill"></i>
            <span v-if="cartStore.totalCount > 0" class="badge rounded-pill bg-danger position-absolute top-0 start-100 translate-middle">
              {{ cartStore.totalCount }}
            </span>
          </RouterLink>

          <div v-if="authStore.isAuthenticated" class="dropdown">
            <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown">
              {{ authStore.user.fullname }}
            </button>
            <ul class="dropdown-menu dropdown-menu-end">
              <li><RouterLink class="dropdown-item" to="/profile">Hồ sơ cá nhân</RouterLink></li>
              <li><hr class="dropdown-divider"></li>
              <li><a @click="authStore.logout" class="dropdown-item text-danger" href="#">Đăng xuất</a></li>
            </ul>
          </div>

          <RouterLink v-else to="/login" class="btn btn-primary">Đăng nhập</RouterLink>
        </div>
      </div>
    </div>
  </nav>

  <main class="py-4 bg-light min-vh-100">
     <RouterView /> 
  </main>
</template>