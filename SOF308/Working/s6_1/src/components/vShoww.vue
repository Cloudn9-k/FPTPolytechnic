<!-- tạo giao diện cho phép ẩn / hiện bảng thông tin khách hàng -->
<script setup>
import { ref } from 'vue';
const hienBang = ref(true); // Biến theo dõi trạng thái hiển thị bảng thông tin

</script>
<template>
<div class="container mt-4">
    <h2>danh sách khách hàng</h2>
    <button class="btn btn-primary"@click="hienBang = !hienBang">
        {{ hienBang ? 'Ẩn' : 'Hiện' }}
    </button>
    <table class="table table-bordered" v-show="hienBang">
      <thead>
        <tr>
          <th scope="col">Id</th>
          <th scope="col">First</th>
          <th scope="col">Last</th>
          <th scope="col">Handle</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <th scope="row">1</th>
          <td>Hữu Bình</td>
          <td>Nguyễn</td>
          <td>@mdo</td>
        </tr>
        <tr>
          <th scope="row">2</th>
          <td>An Khang</td>
          <td>Tống</td>
          <td>@fat</td>
        </tr>
        <tr>
          <th scope="row">3</th>
          <td>Tuấn Kiệt</td>
          <td>Vương</td>
          <td>@social</td>
        </tr>
        <tr>
          <th scope="row">4</th>
          <td>Ánh Ngọc</td>
          <td>Khuất</td>
          <td>@social</td>
        </tr>
      </tbody>
    </table>
</div>
</template>
<!-- 
v-show: dùng cho các phần tử cần hiển thị/ ẩn nhanh
VD: chi tiết sản phẩm 
-->