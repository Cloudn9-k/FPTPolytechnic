<template>
  <header>
    <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
      <div class="container-fluid">
        <router-link to="/mon-an" class="navbar-brand">
          Quản lý Món ăn
        </router-link>
        <div class="collapse navbar-collapse">
          <ul class="navbar-nav">
            <li class="nav-item">
              <router-link to="/mon-an" class="nav-link">Trang chủ</router-link>
            </li>
            <li class="nav-item">
              <router-link to="/about" class="nav-link">Về chúng tôi</router-link>
            </li>
          </ul>
        </div>
      </div>
    </nav>
  </header>
</template>
<script setup>
import { RouterLink } from 'vue-router';
</script>