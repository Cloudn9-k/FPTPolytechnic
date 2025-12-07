<script setup lang="ts">
import { ref, onMounted } from 'vue';
import axios from 'axios';

const accounts = ref<any[]>([]);

const load = async () => {
    const resp = await axios.get('http://localhost:8080/rest/admin/accounts');
    accounts.value = resp.data;
}

const toggleStatus = async (acc: any) => {
    try {
        // Đảo ngược trạng thái hiện tại
        await axios.put(`http://localhost:8080/rest/admin/accounts/${acc.id}/status`, !acc.activated, {
            headers: { 'Content-Type': 'application/json' }
        });
        load(); // Load lại bảng
    } catch (e) { alert("Lỗi cập nhật!"); }
}

onMounted(() => load());
</script>

<template>
    <div class="container mt-4">
        <h2 class="text-center text-primary">QUẢN LÝ TÀI KHOẢN</h2>
        <table class="table table-bordered table-hover mt-3">
            <thead class="table-dark">
                <tr>
                    <th>ID</th>
                    <th>Username</th>
                    <th>Họ tên</th>
                    <th>Email</th>
                    <th>Vai trò</th>
                    <th>Trạng thái</th>
                    <th>Thao tác</th>
                </tr>
            </thead>
            <tbody>
                <tr v-for="a in accounts" :key="a.id">
                    <td>{{ a.id }}</td>
                    <td>{{ a.username }}</td>
                    <td>{{ a.fullname }}</td>
                    <td>{{ a.email }}</td>
                    <td>{{ a.admin ? 'Quản trị' : 'Khách hàng' }}</td>
                    <td>
                        <span class="badge" :class="a.activated ? 'bg-success' : 'bg-secondary'">
                            {{ a.activated ? 'Hoạt động' : 'Đã khóa' }}
                        </span>
                    </td>
                    <td>
                        <button v-if="!a.admin" @click="toggleStatus(a)" 
                                class="btn btn-sm" :class="a.activated ? 'btn-warning' : 'btn-success'">
                            {{ a.activated ? 'Khóa' : 'Mở khóa' }}
                        </button>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</template>