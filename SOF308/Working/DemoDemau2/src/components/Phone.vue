<script setup>
// LƯU Ý 1: Phải import 'computed' từ 'vue' nếu bạn muốn sử dụng nó.
import { ref, computed } from 'vue';

const danhSachKhachHang = ref([
  {
    id: 1,
    name: 'iKhachHang 14 Pro Max',
    hang: 'Apple',
    dungLuong: '128GB',
    doDai: 30000000,
  },
  {
    id: 2,
    name: 'Samsung Galaxy S22 Ultra',
    hang: 'Samsung',
    dungLuong: '256GB',
    doDai: 35000000,
  },
  {
    id: 3,
    name: 'Google Pixel 6 Pro',
    hang: 'Google',
    dungLuong: '128GB',
    doDai: 25000000,
  },
  {
    id: 4,
    name: 'OnePlus 9 Pro',
    hang: 'OnePlus',
    dungLuong: '256GB',
    doDai: 28000000,
  },
]);

const KhachHangFilter = ref('');

// LƯU Ý 2: `filteredKhachHangs` là một Computed Property
const filteredKhachHangs = computed(() => {
  return danhSachKhachHang.value.filter(KhachHang =>
    KhachHang.name.toLowerCase().includes(KhachHangFilter.value.toLowerCase())
  );
});

// LƯU Ý 3: Đổi tên biến để tránh trùng lặp và gây nhầm lẫn.
const currentKhachHang = ref({
  id: null, // Thêm id vào để xử lý Update
  name: '',
  hang: '',
  dungLuong: '',
  doDai: null,
});

const isEditing = ref(false);

const submitForm = () => {
    // LƯU Ý 4: Cải thiện logic kiểm tra validate
    if (!currentKhachHang.value.name || !currentKhachHang.value.hang || !currentKhachHang.value.dungLuong || !currentKhachHang.value.doDai || currentKhachHang.value.doDai <= 100) {
        alert('Vui lòng điền đầy đủ thông tin. Độ Dài phải lớn hơn 100.');
        return;
    }
    
    if (isEditing.value) {
        // Chức năng CẬP NHẬT
        const index = danhSachKhachHang.value.findIndex(p => p.id === currentKhachHang.value.id);
        if (index !== -1) {
            danhSachKhachHang.value[index] = { ...currentKhachHang.value };
            alert('Cập nhật thành công!');
        }
    } else {
        // LƯU Ý 5: Cải thiện cách tạo ID để tránh trùng lặp
        const newId = danhSachKhachHang.value.length > 0 ? Math.max(...danhSachKhachHang.value.map(p => p.id)) + 1 : 1;
        danhSachKhachHang.value.push({ ...currentKhachHang.value, id: newId });
        alert('Thêm mới thành công!');
    }
    resetForm();
};

const resetForm = () => {
  currentKhachHang.value = { id: null, name: '', hang: '', dungLuong: '', doDai: null };
  isEditing.value = false;
};

const deleteKhachHang = (id) => {
  if (confirm('Bạn có chắc chắn muốn xóa khách hàng này không?')) {
    danhSachKhachHang.value = danhSachKhachHang.value.filter(KhachHang => KhachHang.id !== id);
    alert('Xóa thành công!');
  }
};

// LƯU Ý 6: Tạo một hàm riêng để xử lý khi nhấn nút Sửa
const editKhachHang = (KhachHang) => {
    currentKhachHang.value = { ...KhachHang };
    isEditing.value = true;
};
</script>

<template>
    <div class="container mt-5">
        <h1 class="text-center mb-4">Danh Sách khách hàng</h1>
        <input
            v-model="KhachHangFilter"
            type="text"
            class="form-control mb-4"
            placeholder="Tìm kiếm theo tên khách hàng"
        />
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Tên</th>
                    <th>Hãng</th>
                    <th>Dung Lượng</th>
                    <th>Độ Dài</th>
                    <th>Hành Động</th>
                </tr>
            </thead>
            <tbody>
                <tr v-for="KhachHang in filteredKhachHangs" :key="KhachHang.id">
                    <td>{{ KhachHang.id }}</td>
                    <td>{{ KhachHang.name }}</td>
                    <td>{{ KhachHang.hang }}</td>
                    <td>{{ KhachHang.dungLuong }}</td>
                    <td>{{ KhachHang.doDai.toLocaleString('vi-VN', { style: 'currency', currency: 'VND' }) }}</td>
                    <td>
                        <button class="btn btn-primary" @click="editKhachHang(KhachHang)">Sửa</button>
                        <button class="btn btn-danger" @click="deleteKhachHang(KhachHang.id)">Xóa</button>
                    </td>
                </tr>
            </tbody>
        </table>
        <h2 class="mt-5">{{ isEditing ? 'Sửa khách hàng' : 'Thêm khách hàng Mới' }}</h2>
        <form @submit.prevent="submitForm">
            <div class="mb-3">
                <label for="name" class="form-label">Tên khách hàng</label>
                <input
                    v-model="currentKhachHang.name"
                    type="text"
                    class="form-control"
                    id="name"
                    placeholder="Nhập tên khách hàng"
                />
            </div> 
            <div class="mb-3">
                <label for="hang" class="form-label">Hãng</label>
                <input
                    v-model="currentKhachHang.hang"
                    type="text"
                    class="form-control"
                    id="hang"
                    placeholder="Nhập hãng khách hàng"
                />
            </div>
            <div class="mb-3">
                <label for="dungLuong" class="form-label">Dung Lượng</label>
                <input
                    v-model="currentKhachHang.dungLuong"
                    type="text"
                    class="form-control"
                    id="dungLuong"
                    placeholder="Nhập dung lượng"
                />
            </div>
            <div class="mb-3">
                <label for="doDai" class="form-label">Độ Dài</label>
                <input
                    v-model.number="currentKhachHang.doDai"
                    type="number"
                    class="form-control"
                    id="doDai"
                    placeholder="Nhập Độ Dài khách hàng"
                />
            </div>
            <button type="submit" class="btn btn-success">
                {{ isEditing ? 'Cập Nhật' : 'Thêm Mới' }}
            </button>
            <button type="button" class="btn btn-secondary" @click="resetForm">
                Hủy
            </button>
        </form>
    </div>
</template>