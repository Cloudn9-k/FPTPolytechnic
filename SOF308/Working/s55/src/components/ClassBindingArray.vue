<script setup>
import {ref} from 'vue';
const textColor = ref('text-success')
const tongleColor= ()=>{
    textColor.value =
    textColor.value === "text-success" ? "text-danger" : "text-success"
}
</script>
<template>
    <div :class="[textColor,'fw-bold','fs-3']">đây là đoạn văn có class động</div>
    <!--  :class="[...] đây là binding class trong vue, cứ pháp [...] là cú pháp  mảng cho phép để gán nhiều class cùng lúc
    textColor: là biến động {ref}  
    --> 
    <button class="btn btn-secondary mt-3" @click="tongleColor">đổi màu</button>
</template>
<!-- 
:class nhận 1 mảng các class, mỗi class là 1 biến ref hoặc
-->