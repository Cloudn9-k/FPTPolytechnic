
<template>
  <div class="container">
    <h3 class="mb-3">Danh sách</h3>
    
    <table class="table table-bordered table-striped">
      <thead class="table-dark">
        <tr>
          <th>ID</th>
          <th>Ngày chiếu</th>
          <th>phòng chiếu</th>
          <th>ten phim</th>
          <th>gia vé</th>
          <th>đạo diễn</th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="lc in listLichChieu" :key="lc.id">
          <td>{{ lc.id }}</td>
          <td>{{ lc.ngayChieu }}</td>
          
          <td>{{ lc.phongChieu}} </td>
          
          <td>{{ lc.giaVe }}</td>
          
          <td>{{ lc.tenPhim }}</td>
          <td>{{ lc.daoDien }}</td>
        </tr>
      </tbody>
    </table>
  </div>
</template>

<script setup>
import { ref, onMounted } from 'vue';
import { fetchLichChieu } from '@/service/lichChieu'; 
const listLichChieu = ref([]);
const loadData = async () => {
  try {
    listLichChieu.value = await fetchLichChieu();
  } catch (error) {
    console.error(error);
    alert("Không tải được dữ liệu! Hãy kiểm tra Backend.");
  }
};
onMounted(() => {
  loadData();
});
</script>