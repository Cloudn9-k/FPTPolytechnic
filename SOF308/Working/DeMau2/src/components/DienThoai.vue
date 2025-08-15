<template>
  <div class="container my-5 pt-5">
    <div class="row justify-content-center">
      <div class="col-md-8">
        <h2 class="text-center mb-4">Quản lý Điện thoại</h2>
        
        <div class="card shadow-sm mb-4">
          <div class="card-body">
            <form @submit.prevent="submitForm">
              
              <div class="row mb-3">
                <label for="ten" class="col-sm-4 col-form-label">Tên</label>
                <div class="col-sm-8">
                  <input type="text" class="form-control" id="ten" v-model="dienThoai.ten" required>
                </div>
              </div>

              <div class="row mb-3">
                <label for="hang" class="col-sm-4 col-form-label">Hãng</label>
                <div class="col-sm-8">
                  <select class="form-select" id="hang" v-model="dienThoai.hang" required>
                    <option disabled value="">Hãng</option>
                    <option>SamSung</option>
                    <option>Apple</option>
                    <option>Oppo</option>
                  </select>
                </div>
              </div>
              
              <div class="row mb-3">
                <label for="dungLuong" class="col-sm-4 col-form-label">Dung lượng</label>
                <div class="col-sm-8">
                  <select class="form-select" id="dungLuong" v-model="dienThoai.dungLuong" required>
                    <option disabled value="">Dung lượng</option>
                    <option>64GB</option>
                    <option>128GB</option>
                    <option>256GB</option>
                    <option>512GB</option>
                    <option>1TB</option>
                  </select>
                </div>
              </div>

              <div class="row mb-3">
                <label for="gia" class="col-sm-4 col-form-label">Giá</label>
                <div class="col-sm-8">
                  <input type="number" class="form-control" id="gia" v-model="dienThoai.gia" required>
                </div>
              </div>

              <div class="d-flex justify-content-between mt-4">
                <button type="submit" class="btn btn-success me-2">Add</button>
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
                    <th scope="col">ID</th>
                    <th scope="col">Tên</th>
                    <th scope="col">Hãng</th>
                    <th scope="col">Dung lượng</th>
                    <th scope="col">Giá</th>
                    <th scope="col">Chức năng</th>
                  </tr>
                </thead>
                <tbody>
                  <tr v-for="(item, index) in danhSachDienThoai" :key="item.id">
                    <td>{{ item.id }}</td>
                    <td>{{ item.ten }}</td>
                    <td>{{ item.hang }}</td>
                    <td>{{ item.dungLuong }}</td>
                    <td>{{ item.gia }}</td>
                    <td>
                      <button class="btn btn-info btn-sm" @click="hienThiChiTiet(item) ">Detail</button>
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

const danhSachDienThoai = ref([
  { id: 1, ten: 'iPhone 15 Pro', hang: 'Apple', dungLuong: '256GB', gia: 30000000 },
  { id: 2, ten: 'Galaxy S23 Ultra', hang: 'SamSung', dungLuong: '512GB', gia: 28000000 }
]);

const dienThoai = ref({
  id: null,
  ten: '',
  hang: '',
  dungLuong: '',
  gia: null
});

const submitForm = () => {
  // Bổ sung validation: kiểm tra giá phải lớn hơn 100
  if (dienThoai.value.gia <= 100) {
    alert('Giá phải lớn hơn 100!');
    return; // Dừng hàm nếu giá trị không hợp lệ
  }

  const newId = danhSachDienThoai.value.length > 0 ? Math.max(...danhSachDienThoai.value.map(dt => dt.id)) + 1 : 1;
  danhSachDienThoai.value.push({ ...dienThoai.value, id: newId });
  alert('Thêm điện thoại thành công!');
  resetForm();
};

const hienThiChiTiet = (item) => {
  if (item) {
    dienThoai.value = { ...item };
    alert(`Chi tiết:\nTên: ${item.ten}`);
  } else {
    resetForm();
  }
};

const resetForm = () => {
  dienThoai.value = {
    id: null,
    ten: '',
    hang: '',
    dungLuong: '',
    gia: null
  };
};
</script>

<style scoped>
.card-header.bg-primary {
  background-color: #007bff !important;
}
</style>