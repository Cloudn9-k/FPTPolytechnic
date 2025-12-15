<template>
  <div class="container">
    <h3 class="mb-3">Danh sách Sản Phẩm</h3>
    
    <table class="table table-bordered table-striped">
      <thead class="table-dark">
        <tr>
          <th>ID</th>
          <th>Tên Sản Phẩm</th>
          <th>Đơn Giá</th>
          <th>Số Lượng</th>
          <th>Danh Mục</th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="sp in listSanPham" :key="sp.id">
          <td>{{ sp.id }}</td>
          <td>{{ sp.tenSanPham }}</td>
          
          <td>{{ sp.donGia.toLocaleString('vi-VN') }} VNĐ</td>
          
          <td>{{ sp.soLuong }}</td>
          
          <td>{{ sp.tenDanhMuc }}</td>
        </tr>
      </tbody>
    </table>
    
    <p v-if="listSanPham.length === 0" class="text-center text-muted">
      Chưa có dữ liệu sản phẩm
    </p>
  </div>
</template>

<script setup>
import { ref, onMounted } from 'vue';
import { fetchGetAll } from '@/service/sanPham'; // Import hàm từ file service

// Biến chứa dữ liệu
const listSanPham = ref([]);

// Hàm lấy dữ liệu
const loadData = async () => {
  try {
    listSanPham.value = await fetchGetAll();
  } catch (error) {
    console.error(error);
    alert("Không tải được dữ liệu! Hãy kiểm tra Backend.");
  }
};

// Gọi hàm khi trang vừa tải xong
onMounted(() => {
  loadData();
});
</script>