<script setup>
import { ref } from 'vue';
const danhSachMonAn = ref([
  {
    tenMonAn: "Phở bò",
    loaiMonAn: "Món chính",
    giaTien: 45000,
    moTa: "Phở bò tái chín",
  },
  {
    tenMonAn: "Nem cuốn",
    loaiMonAn: "Món phụ",
    giaTien: 25000,
    moTa: "Nem cuốn tươi ngon",
  },
]);
const monAn = ref({
  tenMonAn: "",
  loaiMonAn: "",
  giaTien: null,
  moTa: "",
});
const submitForm = () => {
  danhSachMonAn.value.push({ ...monAn.value });
  alert("Thêm món ăn thành công!");
  resetForm();
};
const xoaMonAn = (index) => {
  if (confirm(`Bạn có chắc chắn muốn xóa món ăn này không?`)) {
    danhSachMonAn.value.splice(index, 1);
    alert("Xóa thành công!");
  }
};
const resetForm = () => {
  monAn.value = {
    tenMonAn: "",
    loaiMonAn: "",
    giaTien: null,
    moTa: "",
  };
};
</script>
<template>
  <div class="container mt-5">
    <h2 class="text-center">Quản lý món ăn</h2>
    <div class="row">
      <div class="col-md-6">
        <form @submit.prevent="submitForm">
          <div class="mb-3">
            <label for="tenMonAn" class="form-label">Tên món ăn</label>
            <input
              type="text"
              v-model="monAn.tenMonAn"
              id="tenMonAn"
              class="form-control"
              required
            />
          </div>
          <div class="mb-3">
            <label for="loaiMonAn" class="form-label">Loại món ăn</label>
            <input
              type="text"
              v-model="monAn.loaiMonAn"
              id="loaiMonAn"
              class="form-control"
              required
            />
          </div>
          <div class="mb-3">
            <label for="giaTien" class="form-label">Giá tiền</label>
            <input
              type="number"
              v-model.number="monAn.giaTien"
              id="giaTien"
              class="form-control"
              required
            />
          </div>
          <div class="mb-3">
            <label for="moTa" class="form-label">Mô tả</label>
            <textarea
              v-model="monAn.moTa"
              id="moTa"
              class="form-control"
              required
            ></textarea>
          </div>
          <button type="submit" class="btn btn-primary">Thêm món ăn</button>
        </form>
      </div>
      <div class="col-md-6">
        <h3>Danh sách món ăn</h3>
        <div class="table-responsive">
          <table class="table table-bordered">
            <thead>
              <tr>
                <th scope="col">STT</th>
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
                <td>
                  {{
                    item.giaTien.toLocaleString("vi-VN", {
                      style: "currency",
                      currency: "VND",
                    })
                  }}
                </td>
                <td>{{ item.moTa }}</td>
                <td>
                  <button class="btn btn-danger" @click="xoaMonAn(index)">
                    Xóa
                  </button>
                </td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
</template>
