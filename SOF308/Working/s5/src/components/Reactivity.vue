<script setup>
import { ref } from "vue";
import { reactive } from "vue";
const count = ref(0);
const state = reactive({
  nguoiDung:{
    name: "khang",
    age: 20,
  }
});
</script>

<template>
  <p>đếm {{ count }}</p>
  <button @click="count++">tăng</button>
  <p>tên: {{ state.nguoiDung.name }}</p>
  <button class="btn btn-primary" @click="state.name = 'ha'">đổi tên</button>
</template>
<!-- 
 - Vue.js sử dụng proxy api để tạo đối tượng phản ứng (reactive object), tự động cập nhật giao diện khi dữ liệu thay đổi.
 -2 API chính:
   + ref(): cho giá trị đơn giản (primitive value) như số, chuỗi, boolean, quản lý chuỗi nguyên thuỷ hoặc object, truy cập qua .value
    + reactive(): cho đối tượng phức tạp (object) hoặc mảng, không cần .value
   + computed(): dùng để khai báo giá trị tính toán (computed value) dựa trên biến phản ứng khác
  -->

<!-- sử dụng ref -->
<!-- sử dụng reactive -->
