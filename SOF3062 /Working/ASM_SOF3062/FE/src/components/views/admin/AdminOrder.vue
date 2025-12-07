<script setup lang="ts">
import { ref, onMounted } from 'vue';
import axios from 'axios';

const orders = ref<any[]>([]);
const statusList = ['Pending', 'Shipping', 'Delivered', 'Cancelled'];

const load = async () => {
    const resp = await axios.get('http://localhost:8080/rest/admin/orders');
    orders.value = resp.data;
}

const updateStatus = async (order: any, newStatus: string) => {
    try {
        await axios.put(`http://localhost:8080/rest/admin/orders/${order.id}/status`, newStatus, {
             headers: { 'Content-Type': 'text/plain' }
        });
        alert("Cập nhật trạng thái thành công!");
    } catch (e) { alert("Lỗi cập nhật!"); }
}

const formatCurrency = (value: number) => {
    return new Intl.NumberFormat('vi-VN', { style: 'currency', currency: 'VND' }).format(value);
}

onMounted(() => load());
</script>

<template>
    <div class="container mt-4">
        <h2 class="text-center text-success">QUẢN LÝ ĐƠN HÀNG</h2>
        <table class="table table-striped mt-3">
            <thead>
                <tr>
                    <th>Mã ĐH</th>
                    <th>Người đặt</th>
                    <th>Ngày đặt</th>
                    <th>Địa chỉ</th>
                    <th>Trạng thái (Chọn để đổi)</th>
                </tr>
            </thead>
            <tbody>
                <tr v-for="o in orders" :key="o.id">
                    <td>#{{ o.id }}</td>
                    <td>{{ o.account ? o.account.username : 'Ẩn danh' }}</td>
                    <td>{{ o.createDate }}</td>
                    <td>{{ o.address }}</td>
                    <td>
                        <select v-model="o.status" @change="updateStatus(o, o.status)" 
                                class="form-select form-select-sm"
                                :class="{'bg-warning': o.status==='Pending', 'bg-success text-white': o.status==='Delivered'}">
                            <option v-for="s in statusList" :key="s" :value="s">{{ s }}</option>
                        </select>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</template>