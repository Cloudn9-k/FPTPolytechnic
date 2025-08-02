<script setup>
//Cu phap
let rawHTML = 'Xin chao! Toi la raw html'
//vi-bind: Dung de rang buoc gia tri cua thuoc tinh vao 1 gia tri dong
//VD: Hien thi noi dung cua the heft
//Khai bao the url trong du lieu vue
const url = 'https://classroom.google.com/'
import { ref } from 'vue';
const url1= ref('https://www.google.com/');
const changLink = () => {
    url1.value = 'https://www.facebook.com/';
}
//vi-on: lắng nghe sự kiện
//VD: click, hover, keyup, keydown, input, change
//Khai bao su kien click
const clickHandler = () => {
    alert('Ban da click vao day');
}
//khai bao 1 biến là message với giá trị ban đầu là: "nhấn nút để xem thông điệp"
const message = ref('nhấn nút để xem thông điệp');
//khai bao 1 hàm để thay đổi giá trị của message
const changeMessage = () => {
    message.value = 'bạn vừa nhấn nút';
}
</script>
<template>
    <!-- khong su dung vi-bind -->
    <div>
        <a href="https://www.facebook.com/?locale=vi_VN">Click vao day de hien thi trang web</a>
    <!-- vi-bind -->
        <a v-bind:href="url">Truyen thong diep web bang vi-bind</a>
        <!-- ví dụ 2 của thằng v bin -->
         <a v-bind:href="url1">Link ban đầu</a>
         <button @click="changLink">nhấn để chuyển link</button>
    </div>
    <br>
    <h1>show message :{{message}}</h1>
    <button @click="changeMessage">Nhấn để thay đổi thông điệp</button>
    <div>
        
    </div>
</template>