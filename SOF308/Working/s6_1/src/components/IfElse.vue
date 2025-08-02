<script setup>
import { ref } from 'vue';
const isLogin = ref(true);
const khachHang =({
    ten:'Nguyễn thị thuỳ',
    trangthai:false,
})
</script>
<template>
    <h2>thông tin ng dùng</h2>
    <!-- Kiểm tra hiển thị thông báo trạng thái đăng nhập -->
    <p v-if="isLogin">bạn đã đăng nhập</p>
    <p v-else>bạn chưa đăng nhập</p>
    <!-- Nếu KH đã đăng nhapa và khách hàng đồng ý -->
     <template v-if="isLogin && khachHang.trangthai">
        <div class="alert alert-success">
            <h3>Xin chào {{khachHang.ten}}</h3>
            <p>bạn đã đồng ý tham gia chương trình</p>
        </div>
     </template>
     <template v-else>
        <div class="alert alert-warning">
            <h3>Xin chào {{khachHang.ten}}</h3>
            <p>bạn chưa đồng ý tham gia chương trình</p>
        </div>

     </template>
<!-- <div class="container mt-4">
    <h2>trạng thái của khách hàng  </h2>
    <div v-if="khachHang.trangthai" class="alert alert-danger">khách hàng đồng ý tham gia</div>
    <div v-else class="alert alert-primary"> khách hàng không đồng ý tham gia</div> -->
<!-- 
</div> -->
</template>
<!-- 
lưu ý: v-else phải sau v-if, hoặc v-else-if
-->