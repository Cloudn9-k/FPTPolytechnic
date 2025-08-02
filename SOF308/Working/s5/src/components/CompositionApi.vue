<script setup>
import { ref } from 'vue';
const count = ref(1);
const doubleCount = computed(() => {
    return count.value * 2;
});
//count là biến phản ứng (ref )
//doubleCount là giá trị tính toán (computed) dựa trên count, tự động cập nhật khi count thay đổi
</script>
<template>
<p>số lượng {{ count }}</p>
<p>gấp đôi {{ doubleCount }}</p>
</template>
<!-- Composition Api là 1 cách tiếp cận mới trong vuejs để tổ chức logic components (linh hoạt hơn Options API)
 - Các API chính:
    + setup(): là hàm được gọi trước khi component được tạo, nơi bạn có thể khai báo các biến, hàm, và các API khác.
    + ref: dùng để khai báo biến reactive (có thể thay đổi giá trị)
    + reactive: dùng để khai báo đối tượng reactive 
    + computed: dùng để khai báo biến tính toán (tương tự như computed trong Options API) - tạo giá trị phụ thuộc vào biến khác
    + watch: dùng để theo dõi sự thay đổi của biến
  -->