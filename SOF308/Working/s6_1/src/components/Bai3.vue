<template>
    <div class="container mt-5">
        <h2 class="mb-4 text-primary text-center">Quản lý danh sách khách hàng</h2>

        <div class="mb-4 d-flex justify-content-center">
            <input
                type="text"
                class="form-control"
                style="max-width: 400px;"
                v-model="filterKeyword"
                placeholder="Lọc khách hàng theo email..."
            />
        </div>

        <div class="card p-4 shadow-sm">
            <div v-if="khachHangs.length === 0" class="alert alert-info text-center">
                Danh sách khách hàng đang trống.
            </div>
            <div v-else>
                <table class="table table-striped table-hover">
                    <thead class="table-primary">
                        <tr>
                            <th>Tên</th>
                            <th>Email</th>
                            <th v-show="showDetails">Năm sinh</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr v-for="khachHang in filteredKhachHangs" :key="khachHang.email">
                            <td>{{ khachHang.ten }}</td>
                            <td>{{ khachHang.email }}</td>
                            <td v-show="showDetails">{{ khachHang.namSinh }}</td>
                        </tr>
                        <tr v-if="filteredKhachHangs.length === 0 && khachHangs.length > 0">
                            <td colspan="3" class="text-center text-danger">
                                Không tìm thấy khách hàng phù hợp.
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>

        <div class="text-center mt-4">
            <button @click="toggleDetails" class="btn btn-secondary btn-lg">
                {{ showDetails ? 'Ẩn năm sinh' : 'Hiện năm sinh' }}
            </button>
        </div>
    </div>
</template>

<script setup>
import { ref, computed } from 'vue';

const khachHangs = ref([
    { ten: 'Nguyễn Văn A', email: 'vana@example.com', namSinh: 1995 },
    { ten: 'Trần Thị B', email: 'thib@gmail.com', namSinh: 1988 },
    { ten: 'Lê Văn C', email: 'levanc@company.vn', namSinh: 2001 },
    { ten: 'Phạm Thị D', email: 'phamd@yahoo.com', namSinh: 1975 },
    { ten: 'Hoàng Văn E', email: 'hoange@example.com', namSinh: 2005 }
]);

const filterKeyword = ref('');
const showDetails = ref(false);

const filteredKhachHangs = computed(() => {
    if (!filterKeyword.value) {
        return khachHangs.value;
    }
    return khachHangs.value.filter(khachHang =>
        khachHang.email.toLowerCase().includes(filterKeyword.value.toLowerCase())
    );
});

const toggleDetails = () => {
    showDetails.value = !showDetails.value;
};
</script>