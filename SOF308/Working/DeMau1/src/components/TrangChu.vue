<template>
  <div class="container my-5 pt-5">
    <div class="row">
      <div class="col-lg-5 mb-4">
        <div class="card shadow-sm h-100">
          <div class="card-header bg-primary text-white">
            <h5 class="mb-0">{{ isEditing ? 'Sửa thông tin Tác giả' : 'Thêm Tác giả mới' }}</h5>
          </div>
          <div class="card-body">
            <form @submit.prevent="submitForm">
              <div class="mb-3">
                <label for="ma" class="form-label">Mã</label>
                <input type="number" class="form-control" id="ma" v-model="tacGia.ma" disabled>
              </div>
              <div class="mb-3">
                <label for="ten" class="form-label">Tên</label>
                <input type="text" class="form-control" id="ten" v-model="tacGia.ten" required>
              </div>
              <div class="mb-3">
                <label for="diaChi" class="form-label">Địa chỉ</label>
                <input type="text" class="form-control" id="diaChi" v-model="tacGia.diaChi" required>
              </div>
              <div class="mb-3">
                <label for="tuoi" class="form-label">Tuổi</label>
                <input type="number" class="form-control" id="tuoi" v-model="tacGia.tuoi" required>
              </div>
              <div class="mb-3">
                <label class="form-label">Giới tính</label>
                <div class="d-flex align-items-center">
                  <div class="form-check me-4">
                    <input class="form-check-input" type="radio" id="gioiTinhNam" :value="true" v-model="tacGia.gioiTinh" required>
                    <label class="form-check-label" for="gioiTinhNam">Nam</label>
                  </div>
                  <div class="form-check">
                    <input class="form-check-input" type="radio" id="gioiTinhNu" :value="false" v-model="tacGia.gioiTinh" required>
                    <label class="form-check-label" for="gioiTinhNu">Nữ</label>
                  </div>
                </div>
              </div>
              <div class="d-grid gap-2">
                <button type="submit" class="btn btn-success">
                  {{ isEditing ? 'Lưu thay đổi' : 'Thêm Tác giả' }}
                </button>
                <button type="button" class="btn btn-secondary" @click="resetForm">Hủy bỏ</button>
              </div>
            </form>
          </div>
        </div>
      </div>

      <div class="col-lg-7">
        <div class="card shadow-sm h-100">
          <div class="card-header bg-primary text-white">
            <h5 class="mb-0">Danh sách Tác giả</h5>
          </div>
          <div class="card-body">
            <div class="table-responsive">
              <table class="table table-hover table-striped">
                <thead>
                  <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Tên</th>
                    <th scope="col">Giới tính</th>
                    <th scope="col">Địa chỉ</th>
                    <th scope="col">Tuổi</th>
                    <th scope="col">Hành động</th>
                  </tr>
                </thead>
                <tbody>
                  <tr v-for="item in danhSachTacGia" :key="item.id">
                    <td>{{ item.id }}</td>
                    <td>{{ item.ten }}</td>
                    <td>{{ item.gioiTinh ? 'Nam' : 'Nữ' }}</td>
                    <td>{{ item.diaChi }}</td>
                    <td>{{ item.tuoi }}</td>
                    <td>
                      <div class="d-flex">
                        <button class="btn btn-warning btn-sm me-2" @click="xemChiTiet(item)">Sửa</button>
                        <button class="btn btn-danger btn-sm" @click="xoaTacGia(item.id)">Xóa</button>
                      </div>
                    </td>
                  </tr>
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

const danhSachTacGia = ref([
  {
    id: 1,
    ten: 'Nguyễn Văn A',
    gioiTinh: true,
    diaChi: 'Hà Nội',
    tuoi: 25
  },
  {
    id: 2,
    ten: 'Trần Thị B',
    gioiTinh: false,
    diaChi: 'Hồ Chí Minh',
    tuoi: 30
  }
]);

const tacGia = ref({
  id: null,
  ten: '',
  gioiTinh: true,
  diaChi: '',
  tuoi: null
});

const isEditing = ref(false);

const submitForm = () => {
  if (isEditing.value) {
    const index = danhSachTacGia.value.findIndex(tg => tg.id === tacGia.value.id);
    if (index !== -1) {
      danhSachTacGia.value[index] = { ...tacGia.value };
    }
    alert('Sửa tác giả thành công!');
  } else {
    const newId = danhSachTacGia.value.length > 0 ? Math.max(...danhSachTacGia.value.map(tg => tg.id)) + 1 : 1;
    danhSachTacGia.value.push({ ...tacGia.value, id: newId });
    alert('Thêm tác giả thành công!');
  }
  resetForm();
};

const xoaTacGia = (id) => {
  if (confirm(`Bạn có chắc chắn muốn xóa tác giả có ID: ${id} không?`)) {
    danhSachTacGia.value = danhSachTacGia.value.filter(item => item.id !== id);
    if (tacGia.value.id === id) {
      resetForm();
    }
    alert('Xóa thành công!');
  }
};

const xemChiTiet = (item) => {
  isEditing.value = true;
  tacGia.value = { ...item };
};

const resetForm = () => {
  isEditing.value = false;
  tacGia.value = {
    id: null,
    ten: '',
    gioiTinh: true,
    diaChi: '',
    tuoi: null
  };
};
</script>

<style scoped>
.card-header.bg-primary {
  background-color: #007bff !important;
}
</style>