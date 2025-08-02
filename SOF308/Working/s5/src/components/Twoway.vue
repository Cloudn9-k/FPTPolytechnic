<script setup>
import { ref } from 'vue';
// Two-way binding example
const email = ref("")
</script>
<template>
<input type="email" v-model="email" placeholder="Nhập email của bạn" class="form-control">
<p>email:{{ email }}</p>
</template>

<!-- Two way là ràng buộc dữ liệu 2 chiều, là cơ chế đồng bộ dữ liệu 2 chiều
 giữa view và model
 - two way sẽ sử dụng v-model
 - v-model là chỉ thị (directive)
 + khi người dùng nhập => biên tự cập nhật
 + khi biến thay đổi => giao diện thay đổi -->