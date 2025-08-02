<script setup>
import { ref } from 'vue';
const email =ref('Khangtath03591@gmail.com')
const website = ref('https://www.facebook.com/?locale=vi_VN')

</script>
<template>
<p>email: <input type="email" :value="email" class="form-control" readonly></p>
<!-- :value - là binding 1 chiều: gán giá trị email vào input -->
<!-- class="form-control" : bootstrap hỗ trợ làm đẹp ô nhập -->
 <!-- readonly : không cho người dùng chỉnh sửa, chỉ hiển thị -->
  <a :href="website" class="btn btn-primary">truy cập vào link</a>
</template>
<!-- One way là ràng buộc truyền dữ liệu 1 chiều, cơ chế truyền dữ liệu từ model => view nhưng không thực hiện truyền ngược lại1
 yeâ -->