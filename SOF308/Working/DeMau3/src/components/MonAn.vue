<template>
  <div class="container my-5 pt-5">
    <div class="row justify-content-center">
      <div class="col-md-8">
        <h2 class="text-center mb-4">Quản lý Món ăn</h2>
        
        <div class="card shadow-sm mb-4">
          <div class="card-body">
            <form @submit.prevent="submitForm">
              
              <div class="row mb-3">
                <label for="tenMonAn" class="col-sm-4 col-form-label">Tên món ăn</label>
                <div class="col-sm-8">
                  <input type="text" class="form-control" id="tenMonAn" v-model="monAn.tenMonAn" required>
                </div>
              </div>

              <div class="row mb-3">
                <label for="loaiMonAn" class="col-sm-4 col-form-label">Loại món ăn</label>
                <div class="col-sm-8">
                  <select class="form-select" id="loaiMonAn" v-model="monAn.loaiMonAn" required>
                    <option disabled value="">Chọn loại</option>
                    <option>Món chính</option>
                    <option>Món phụ</option>
                  </select>
                </div>
              </div>
              
              <div class="row mb-3">
                <label for="giaTien" class="col-sm-4 col-form-label">Giá tiền</label>
                <div class="col-sm-8">
                  <input type="number" class="form-control" id="giaTien" v-model="monAn.giaTien" required>
                </div>
              </div>

              <div class="row mb-3">
                <label for="moTa" class="col-sm-4 col-form-label">Mô tả</label>
                <div class="col-sm-8">
                  <textarea class="form-control" id="moTa" v-model="monAn.moTa" required></textarea>
                </div>
              </div>

              <div class="d-flex justify-content-end mt-4">
                <button type="submit" class="btn btn-success">Add</button>
              </div>
            </form>
          </div>
        </div>

        <div class="card shadow-sm">
          <div class="card-body">
            <div class="table-responsive">
              <table class="table table-hover table-striped">
                <thead>
                  <tr>
                    <th scope="col">No</th>
                    <th scope="col">Tên món ăn</th>
                    <th scope="col">Loại món ăn</th>
                    <th scope="col">Giá tiền</th>
                    <th scope="col">Mô tả</th>
                    <th scope="col">Chức năng</th>
                  </tr>
                </thead>
                <tbody>
                  <tr v-for="(item, index) in danhSachMonAn" :key="index">
                    <td>{{ index + 1 }}</td>
                    <td>{{ item.tenMonAn }}</td>
                    <td>{{ item.loaiMonAn }}</td>
                    <td>{{ item.giaTien | currency }}</td>
                    <td>{{ item.moTa }}</td>
                    <td>
                      <button class="btn btn-danger btn-sm" @click="xoaMonAn(index)">Xóa</button>
                    </td>
                  </tr>`
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
import { ref } from 'vue';

const danhSachMonAn = ref([
  { tenMonAn: 'Phở bò', loaiMonAn: 'Món chính', giaTien: 45000, moTa: 'Phở bò tái chín' },
  { tenMonAn: 'Nem cuốn', loaiMonAn: 'Món phụ', giaTien: 25000, moTa: 'Nem cuốn tươi ngon' }
]);

const monAn = ref({
  tenMonAn: '',
  loaiMonAn: '',
  giaTien: null,
  moTa: ''
});

const submitForm = () => {
  danhSachMonAn.value.push({ ...monAn.value });
  alert('Thêm món ăn thành công!');
  resetForm();
};

const xoaMonAn = (index) => {
  if (confirm(`Bạn có chắc chắn muốn xóa món ăn này không?`)) {
    danhSachMonAn.value.splice(index, 1);
    alert('Xóa thành công!');
  }
};

const resetForm = () => {
  monAn.value = {
    tenMonAn: '',
    loaiMonAn: '',
    giaTien: null,
    moTa: ''
  };
};
</script>

<style scoped>
.card-header.bg-primary {
  background-color: #007bff !important;
}
</style>     