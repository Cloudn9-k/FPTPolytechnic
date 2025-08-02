<script setup>
// khai báo biển: const, let, var trong script và setup của Vue.js

// const: hằng số, không thể thay đổi giá trị
const a = 10 // hằng số, không thể thay đổi giá trị 
const ten='thuy'
console.log(ten) // in ra giá trị của biến ten
// ten = 'thuy2'; // sẽ báo lỗi vì không thể thay đổi giá trị của hằng số, không cho phép gán lại giá trị
const pi=3.14
console.log(pi) // in ra giá trị của biến pi



// let: biến có thể thay đổi giá trị, phạm vi cục bộ
const b = 20; // biến có thể thay đổi giá trị
//khai báo biến let khi cần thay đổi giá trị sau này
let tuoi=10
tuoi=tuoi+1
console.log(tuoi) // in ra giá trị của biến tuoi, in ra 11
//VD thực tế tính chu vi hình tròn

let banKinh = 10; // bán kính hình tròn
let chuvi=2*pi*banKinh // giả sử bán kính là 10
console.log(chuvi) // in ra chu vi hình tròn, in ra 62.8


// var: biến có thể thay đổi giá trị, phạm vi toàn cục
var c = 30; // biến có thể thay đổi giá trị, phạm vi toàn cục


//khai bao phương thức:
//c1: khai báo truyền thống
// function <tenpthuc> () { // khối lệnh }
let as=0
function increment() {
  as++ // tăng giá trị của biến as lên 1
  console.log(as); // in ra giá trị của biến as
}
increment()
increment()
//c2: khai báo qua hàm func
//vd tạo 1 component đếm số với nút tăng và reset
const reset = () => {
  as = 0; // đặt lại giá trị của biến as về 0
  console.log(as); // in ra giá trị của biến as
}
//c3: khai báo qua ref 

//phép nội suy {{}}: dùng để hiển thị giá trị của biến trong template
//vd: <p>{{ ten }}</p> sẽ hiển thị giá trị của biến ten
//phép nội suy này sẽ tự động cập nhật khi giá trị của biến thay đổi
//vd: <p>{{ as }}</p> sẽ hiển thị giá trị của biến as
// khi giá trị của biến as thay đổi, giá trị hiển thị trong template cũng sẽ
// tự động cập nhật
const name = 'xinchao'
//vD hiển thị giá của tai nghe
const tensp='Tai nghe Sony WH-1000XM4'
const giatien=5000000

//raw html: tạo thẻ html trong template
//cú pháp: v-html="tenbien"

let rawHtml = '<p style="color: red;">Đây là đoạn văn bản màu đỏ</p>';



const title = 'Xin chào, đây là thông điệp từ Vue.js!';

const name1 = 'Pham Thi Hang';
const school=   'FPT Polytechnic';

let rawHtml1 = '<p style="color: blue;">"Đây là <b>tin nhắn</b> quan trọng!"</p>';

const link = 'https://vuejs.org'; // liên kết đến trang web FPT Polytechnic
let tong = 0; // biến để lưu tổng của hai số
function tinhTong(a, b) {
    tong= a + b; // tính tổng hai số
    console.log(tong); // in ra tổng
    return tong; // trả về tổng

}
</script>
<template>
<!-- khai báo phương thức
 <div>
    <button v-on:click="increment"> tăng</button>
    <button v-on:click="reset">reset</button>
 </div>
 phép nội suy -->
 <!-- <h1>Thông điệp: {{ name }}</h1>

 <p>sản phẩm {{ tensp }}</p>
 <p>giá san pham {{ giatien }}VND </p>
 <p> gia sản phẩm sau khi giảm: {{ giatien*0.9 }} VND</p>
 <span v-html="rawHtml"></span> -->

<h1>bài 1 {{ title }}</h1>

<h1>bài 2: tên tôi là : {{ name }}, tôi học tại:{{ school }}</h1>

<div v-html="rawHtml1"></div>
<a v-bind:href="link">{{ name }}</a>

<h1>năm hiện tại là {{ tuoi }}</h1>
<h1>a là {{ a }} b là {{b}}</h1>
<button v-on:click="tinhTong()"> tính tổng {{ tong }} </button>
</template>
<style>
</style>