<template>
  <div class="container my-5">
    <div class="row">
      <div class="col-lg-5 mb-4">
        <div class="card shadow-sm h-100">
          <div class="card-header">
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
                <label for="gia" class="form-label">Giá</label>
                <input type="number" class="form-control" id="gia" v-model="tacGia.gia" required>
              </div>
              <div class="mb-3">
                <label for="hang" class="form-label">Hãng</label>
                <select class="form-select" id="hang" v-model="tacGia.hang" required>
                  <option value="" disabled>Chọn hãng</option>
                  <option>Honda</option>
                  <option>Yamaha</option>
                  <option>Suzuki</option>
                  <option>Kawasaki</option>
                </select>
              </div>
              <div class="mb-3">
                <label class="form-label">Giới tính</label>
                <div class="d-flex align-items-center">
                  <div class="form-check me-4">
                    <input class="form-check-input" type="radio" id="gioiTinhNam" value="Nam" v-model="tacGia.gioiTinh" required>
                    <label class="form-check-label" for="gioiTinhNam">Nam</label>
                  </div>
                  <div class="form-check">
                    <input class="form-check-input" type="radio" id="gioiTinhNu" value="Nữ" v-model="tacGia.gioiTinh" required>
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
          <div class="card-header">
            <h5 class="mb-0">Danh sách Tác giả</h5>
          </div>
          <div class="card-body">
            <div class="table-responsive">
              <table class="table table-hover table-striped">
                <thead>
                  <tr>
                    <th scope="col">Mã</th>
                    <th scope="col">Tên</th>
                    <th scope="col">Giá</th>
                    <th scope="col">Hãng</th>
                    <th scope="col">Giới tính</th>
                    <th scope="col">Hành động</th>
                  </tr>
                </thead>
                <tbody>
                  <tr v-for="item in danhSachTacGia" :key="item.ma">
                    <td>{{ item.ma }}</td>
                    <td>{{ item.ten }}</td>
                    <td>{{ item.gia }}</td>
                    <td>{{ item.hang }}</td>
                    <td>{{ item.gioiTinh }}</td>
                    <td>
                      <div class="d-flex">
                        <button class="btn btn-warning btn-sm me-2" @click="xemChiTiet(item)">
                          <i class="bi bi-pencil"></i> Sửa
                        </button>
                        <button class="btn btn-danger btn-sm" @click="xoaTacGia(item.ma)">
                          <i class="bi bi-trash"></i> Xóa
                        </button>
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
    ma: 1,
    ten: 'Nguyễn Văn A',
    gia: 12000,
    hang: 'Honda',
    gioiTinh: 'Nam'
  },
  {
    ma: 2,
    ten: 'Trần Thị B',
    gia: 15000,
    hang: 'Yamaha',
    gioiTinh: 'Nữ'
  }
]);

const tacGia = ref({
  ma: null,
  ten: '',
  gia: null,
  hang: '',
  gioiTinh: ''
});

const isEditing = ref(false);

const submitForm = () => {
  if (isEditing.value) {
    const index = danhSachTacGia.value.findIndex(tg => tg.ma === tacGia.value.ma);
    if (index !== -1) {
      danhSachTacGia.value[index] = { ...tacGia.value };
    }
  } else {
    const newMa = danhSachTacGia.value.length > 0 ? Math.max(...danhSachTacGia.value.map(tg => tg.ma)) + 1 : 1;
    danhSachTacGia.value.push({ ...tacGia.value, ma: newMa });
  }
  resetForm();
};

const xoaTacGia = (ma) => {
  danhSachTacGia.value = danhSachTacGia.value.filter(item => item.ma !== ma);
  if (tacGia.value.ma === ma) {
    resetForm();
  }
};

const xemChiTiet = (item) => {
  isEditing.value = true;
  tacGia.value = { ...item };
};

const resetForm = () => {
  isEditing.value = false;
  tacGia.value = {
    ma: null,
    ten: '',
    gia: null,
    hang: '',
    gioiTinh: ''
  };
};
</script>

<style scoped>
</style>