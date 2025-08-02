<script setup>
import { ref } from 'vue'; 
// tạo 1 đối tượng style object là 
const styleObject =ref({
    color:'black',
    backgroundColor:'lightgray',
    fontSize:'18px',
    padding:'10px',
    borderRadius:'5px'

})
// hàm thay đổi style
const changeStyle =() =>{
    styleObject.value.backgroundColor='pink'
    styleObject.value.fontSize='100px'
}
</script>
<template>
<div :style="styleObject">đây là đoạn văn có style động</div>
<button class="btn btn-primary" @click = "changeStyle">thay đổi nền và kích thước</button>
</template>
<!--
:style nhận 1 object, trong đó key là thuộc tính css (camelCase hoặc là kebab-case) và value là giá trị động
  -->