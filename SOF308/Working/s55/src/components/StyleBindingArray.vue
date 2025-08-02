<script setup>
import { reactive, ref } from 'vue';
const style1=reactive({backgroundColor: 'red'})
const style2=reactive({fontSize:'18px'})
const toggleStyle =() =>{
    style1.backgroundColor = style1.backgroundColor === 'red' ? 'pink' : 'red'

}
</script>
<template>
<div :style="[style1,style2]">dòng bảng</div>
<button class="btn btn-primary mt-3" @click="toggleStyle">đổi style</button>
</template>
<!-- 
:style ở đây chỉ nhận 1 mảng object, mỗi object thì chứa các thuộc tính css
-->