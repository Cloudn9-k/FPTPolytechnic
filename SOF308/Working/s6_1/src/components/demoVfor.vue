<template>
  <div class="container mt-4">
    <h2>mảng khách hàng</h2>
    <table class="table table-bordered">
      <thead>
        <tr>
          <th scope="col"></th>
          <th scope="col">id</th>
          <th scope="col">name</th>
          <th scope="col">age</th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="(item, index) in listKhachHang">
          <td>{{ index + 1 }}</td>
          <td>{{ item.id }}</td>
          <td>{{ item.name }}</td>
          <td>{{ item.age }}</td>
        </tr>
      </tbody>
    </table>
    <br class="mt-4" />
    <h2>mảng khách hàng</h2>
    <div
      v-for="(item, index) in listKhachHang"
      :key="item.id"
      class="card mb-3"
    >
      <div class="card-body">
        <h5 class="card-title">Khách hàng {{ index + 1 }}</h5>
        <p class="card-text">ID: {{ item.id }}</p>
        <p class="card-text">Name: {{ item.name }}</p>
        <p class="card-text">Age: {{ item.age }}</p>
      </div>
    </div>
  </div>

  <!-- 4.v-for với range (dãy số)-->
  <h4>lặp lại dãy số với range</h4>
  <ul class="mb-4">
    <li v-for="i in 5" :key="i">STT {{ i }}</li>
  </ul>

  <!-- 5.v-for với <template> (dùng khi nhiều thành phần từ bên trong) -->
  <h4>lặp qua mảng với template</h4>

  <table class="table table-bordered">
    <thead>
      <tr>
        <th scope="col">STT</th>
        <th scope="col">ID</th>
        <th scope="col">Name</th>
        <th scope="col">Age</th>
      </tr>
    </thead>
    <tbody>
      <template v-for="(item, index) in listKhachHang" :key="item.id">
        <tr>
          <td>{{ index + 1 }}</td>
          <td>{{ item.id }}</td>
          <td>{{ item.name }}</td>
          <td>{{ item.age }}</td>
        </tr>
      </template>
    </tbody>
  </table>
  <br />
  <div class="container mt-5">
  <h2 class="mb-4">Quản lý Sinh viên</h2>
  <form class="col-sm-4" @submit.prevent="addStudent">
    <h3 class="mb-4 text-success">{{ isEditing ? 'Sửa thông tin sinh viên' : 'Thêm sinh viên' }}</h3>
    <div class="form-group">
      <label for="name">Tên sinh viên</label>
      <input
        type="text"
        v-model="newStudent.namesv"
        class="form-control"
        required
      />
    </div>
    <div class="form-group">
      <label for="age">Tuổi</label>
      <input
        type="number"
        v-model.number="newStudent.agesv"
        class="form-control"
        required
      />
    </div>
    <div class="mt-2">
      <button type="submit" class="btn btn-primary">
        {{ isEditing ? 'Cập nhật' : 'Thêm sinh viên' }}
      </button>
      <button v-if="isEditing" type="button" @click="resetForm" class="btn btn-secondary ml-2">Hủy</button>
    </div>
  </form>
  
  <h3 class="mt-4">Danh sách sinh viên</h3>  
  <table class="table table-bordered">
    <thead>
      <tr>
        <th scope="col">STT</th>
        <th scope="col">ID</th>
        <th scope="col">Name</th>
        <th scope="col">Age</th>
        <th scope="col">Hành động</th>
      </tr>
    </thead>
    <tbody>
      <tr v-for="(items, indexx) in listSinhVien" :key="items.idsv">
        <td>{{ indexx + 1 }}</td>
        <td>{{ items.idsv }}</td>
        <td>{{ items.namesv }}</td>
        <td>{{ items.agesv }}</td>
        <td>
          <button @click="editStudent(items)" class="btn btn-warning m-2">Sửa</button>
          <button @click="deleteStudent(items.idsv)" class="btn btn-danger m-1">Xóa</button>
        </td>
      </tr>
    </tbody>
  </table>
</div>
</template>

<script setup>
import { ref } from "vue";
// duyệt qua mảng object
const listKhachHang = ref([
  {
    id: 1,
    name: "Nguyen Van A",
    age: 30,
  },
  {
    id: 2,
    name: "Tran Thi B",
    age: 25,
  },
  {
    id: 3,
    name: "Le Van C",
    age: 40,
  },
]);
const listSinhVien = ref([
  {
    idsv: 1,
    namesv: "Nguyen Van D",
    agesv: 20,
  },
  {
    idsv: 2,
    namesv: "Tran Thi E",
    agesv: 22,
  },
]);

const newStudent = ref({
  idsv: null,
  namesv: "",
  agesv: null,
});
const isEditing = ref(false);
const addStudent = () => {
  if (newStudent.value.namesv && newStudent.value.agesv > 0) {
    if (isEditing.value) {
      const index = listSinhVien.value.findIndex(sv => sv.idsv === newStudent.value.idsv);
      if (index !== -1) {
        listSinhVien.value[index].namesv = newStudent.value.namesv;
        listSinhVien.value[index].agesv = newStudent.value.agesv;
      }
      isEditing.value = false; 
    } else {
      newStudent.value.idsv = listSinhVien.value.length + 1;
      listSinhVien.value.push({ 
        idsv: newStudent.value.idsv,
        namesv: newStudent.value.namesv,
        agesv: newStudent.value.agesv,
      });
    }
    resetForm();
  }
};

const deleteStudent = (studentId) => {
  listSinhVien.value = listSinhVien.value.filter(student => student.idsv !== studentId);
  if (newStudent.value.idsv === studentId) {
    resetForm();
  }
};

const editStudent = (student) => {
  isEditing.value = true;
  newStudent.value.idsv = student.idsv;
  newStudent.value.namesv = student.namesv;
  newStudent.value.agesv = student.agesv;
};

const resetForm = () => {
  newStudent.value.idsv = null;
  newStudent.value.namesv = "";
  newStudent.value.agesv = null;
  isEditing.value = false;
};
</script>
<!-- l
istrending :kết xuất danh sách, 1 kỹ thuật trong vuedùng để lặp qua lặp lại trong 1 mảng dữ liệu và hiển thị mỗi phần từ lên giao diện bằng chỉ thị v-for 
- v-for: cho phép render danh sách động từ mảng hoặc objects
-item: biến đại diện cho từng phần tử trong mảng, list là mảng dữ liệu
-index: chỉ mục của phần tử trong mảng, bắt đầu từ 0
v-for="(item, index) in list" là cú pháp để lặp qua mảng list và hiển thị từng phần tử item cùng với chỉ mục index của nó.
:key: là thuộc tính quan trọng trong v-for để Vue có thể theo dõi và tối ưu hóa việc cập nhật DOM. Nó giúp Vue nhận diện các phần tử đã thay đổi, thêm mới hoặc bị xóa.
cú pháp: v-for="(item, index) in list"
-->

<!-- 
- hiển thị danh sách khách hàng sử dụng chỉ thị v-for  

- Các cách sử dụng của vfor
+ duyệt mảng
+ duyệt chỉ sổ (index)
+ duyệt object
+ duyệt range (dãy số)
+ Dùng <template v-for="(item, index) in list"> để lặp qua mảng và hiển thị nội dung trong thẻ template
-->
<style scoped>
.container {
  max-width: 900px;
}
</style>
