<script setup>
import { ref } from 'vue';
//biến theo dõi trạng thăí thời tiết
const weather = ref('');



</script>
<template>
<div class="container mt-4">
    <h2>trạng thái thời tiết</h2>
    <select class="form-control" v-model="weather" >
        <option value="" disabled selected>Chọn trạng thái thời tiết</option>
        <option value="sunny">Nắng</option>
        <option value="rainy">Mưa</option>
        <option value="cloudy">Nhiều mây</option>
        <option value="unknown">Không rõ</option>
    </select>
<div v-if="weather==='sunny'">hôm nay trời nắng đẹp nhớ đi tắm biển</div>
<div v-else-if="weather==='rainy'">hôm nay trời mưa đẹp </div>
<div v-else-if="weather==='cloudy'">hôm nay trời âm u đẹp</div>
<div v-else>mày ko biết chả lẽ tao biết</div>
</div>
</template>
<!-- cấu trúc lệnh nhiều if -->
 <!-- kiểm tra trạn thái thời tiết -->