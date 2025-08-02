<script setup>
import { ref } from 'vue';
const isDongY = ref(true);
// isDongY là biến phản ứng (ref -reactive variable) để theo dõi trạng thái đồng ý, khởi tạo là true
</script>

<template>
<div :class="{'bg-success text-white':isDongY ,'bg-danger text-white':!isDongY}">
    {{ isDongY ? 'Đồng ý' : 'Không đồng ý' }}
</div>
</template>
<!-- 
:class nhận 1 Object trong đó khi là tên của class và value là điều kiện (true/false) 
Class chỉ được áp dụng khi value là true
 - Ví dụ: :class="{ 'class-name': condition }"
 - Nếu condition là true thì class-name sẽ được áp dụng, nếu false thì không --> 