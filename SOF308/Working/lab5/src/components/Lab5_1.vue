<script setup>
import { reactive, ref } from 'vue';

const title = ref('Chào bạn đến với Vue.js');
const name = ref('');
const count = ref(0);

const cong = () => {
  count.value++;
};
const tru = () => {
  count.value--;
};

const user = reactive({
  name: 'Khang',
  age: 20,
  email: 'khangtath03591@gmail.com'
});
const changeUserAge = () => {
  user.age = 30;
  user.name = 'Ha';
  user.email = 'email.moi@example.com'
};

const isVip = ref(true);
const doiVip = () => {
  isVip.value = !isVip.value;
};

const mainClass = ref('bg-primary');
const textClass = ref('text-white');
const toggleClass = () => {
  mainClass.value = mainClass.value === 'bg-primary' ? 'bg-success' : 'bg-primary';
};

const styleObject = ref({
  backgroundColor: 'lightgray',
  fontSize: '18px',
  padding: '10px',
  borderRadius: '5px',
  color: 'black'
});
const changeStyle = () => {
  styleObject.value.backgroundColor = '#ffc107'; 
  styleObject.value.fontSize = '24px';
  styleObject.value.color = '#343a40';
};

const style1 = reactive({ backgroundColor: '#007bff', padding: '10px', color: 'white', borderRadius: '5px' });
const style2 = reactive({ border: '2px solid #28a745' }); 

const toggleStyle = () => {
  style1.backgroundColor = style1.backgroundColor === '#007bff' ? '#dc3545' : '#007bff'; 
  style1.color = style1.backgroundColor === '#007bff' ? 'white' : 'white'; 
};
</script>

<template>
  <div class="container my-5">
    <div class="card p-4 mb-4 shadow-sm">
      <h3 class="card-title text-primary mb-3">Bài 1: One-way</h3>
      <hr>
      <h2 class="text-secondary">{{ title }}</h2>
    </div>

    <div class="card p-4 mb-4 shadow-sm">
      <h3 class="card-title text-primary mb-3">Bài 2: Two-way</h3>
      <hr>
      <div class="mb-3">
        <input type="text" id="nameInput" v-model="name" placeholder="Nhập tên" class="form-control">
      </div>
      <p class="text-success fs-5">Xin chào, <span class="fw-bold">{{ name }}</span></p>
    </div>

    <div class="card p-4 mb-4 shadow-sm">
      <h3 class="card-title text-primary mb-3">Bài 3: ref</h3>
      <hr>
      <p class="fs-4 mb-3">Count: <span class="fw-bold text-info">{{ count }}</span></p>
      <div class="d-flex gap-2">
        <button class="btn btn-primary" @click="cong">+</button>
        <button class="btn btn-primary" @click="tru">-</button>
      </div>
    </div>

    <div class="card p-4 mb-4 shadow-sm">
      <h3 class="card-title text-primary mb-3">Bài 4: reactive</h3>
      <hr>
      <div class="card-body">
        <p><strong>Tên:</strong> <span class="text-info">{{ user.name }}</span></p>
        <p><strong>Tuổi:</strong> <span class="text-info">{{ user.age }}</span></p>
        <p><strong>Email:</strong> <span class="text-info">{{ user.email }}</span></p>
        <button class="btn btn-primary text-white mt-3" @click="changeUserAge">Đổi thông tin User</button>
      </div>
    </div>

    <div class="card p-4 mb-4 shadow-sm">
      <h3 class="card-title text-primary mb-3">Bài 5: Class Binding Object</h3>
      <hr>
      <div :class="{'text-success':isVip ,'text-danger':!isVip}"> Khách hàng</div>
      <button class="btn btn-secondary mt-3" @click="doiVip">Đổi</button>
    </div>

    <div class="card p-4 mb-4 shadow-sm">
      <h3 class="card-title text-primary mb-3">Bài 6: Class Binding Array</h3>
      <hr>
      <div :class="[mainClass, textClass, 'p-3', 'rounded', 'mb-3', 'fs-5']">
        màu nền và màu chữ 
      </div>
      <button class="btn btn-info text-white" @click="toggleClass">Đổi màu nền</button>
    </div>

    <div class="card p-4 mb-4 shadow-sm">
      <h3 class="card-title text-primary mb-3">Bài 7: Inline Style Binding Object</h3>
      <hr>
      <div :style="styleObject" class="p-3 mb-3 border rounded d-inline-block">
        style text
      </div>
      <button class="btn btn-dark mt-3" @click="changeStyle">Đổi nền</button>
    </div>

    <div class="card p-4 mb-4 shadow-sm">
      <h3 class="card-title text-success mb-3">Bài 8: Inline Style BindingArray</h3>
      <hr>
      <div :style="[style1, style2]" class="p-3 mb-3 border rounded d-inline-block">
mảng các style
      </div>
      <button class="btn btn-light border mt-3" @click="toggleStyle">Đổi màu</button>
    </div>
  </div>
</template>

<style scoped>
.card-title {
  font-weight: bold;
}
</style>