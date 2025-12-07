<script setup lang="ts">
import { ref, onMounted } from 'vue';
import axios from 'axios';

const orders = ref<any[]>([]);

const loadOrders = async () => {
    try {
        const resp = await axios.get('http://localhost:8080/rest/orders/my-orders');
        orders.value = resp.data;
    } catch (e) {
        console.log(e);
    }
}

onMounted(() => loadOrders());
</script>

<template>
    <div class="container mt-4">
        <h2 class="mb-4">LỊCH SỬ ĐƠN HÀNG</h2>
        <table class="table table-hover">
            <thead class="table-primary">
                <tr>
                    <th>Mã ĐH</th>
                    <th>Ngày đặt</th>
                    <th>Địa chỉ</th>
                    <th>Trạng thái</th>
                </tr>
            </thead>
            <tbody>
                <tr v-for="o in orders" :key="o.id">
                    <td>#{{ o.id }}</td>
                    <td>{{ o.createDate }}</td>
                    <td>{{ o.address }}</td>
                    <td>
                        <span class="badge" 
                              :class="o.status === 'Pending' ? 'bg-warning' : 'bg-success'">
                            {{ o.status }}
                        </span>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</template>