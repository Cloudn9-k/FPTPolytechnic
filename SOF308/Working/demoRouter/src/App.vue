<script setup>
import { RouterLink, RouterView } from 'vue-router';
import Footer from './layout/Footer.vue';
import Header from './layout/Header.vue';

</script>

<template>

  <Header></Header>
  <!-- nội dung thay đổi ở giữa - vi router view thay đổi nội dung của phần đó khi nhấn vào -->
  <RouterView></RouterView>
  <Footer></Footer>

</template>

<style scoped>

</style>
