<script setup>
import { ref, onMounted } from 'vue';
import axios from 'axios';

const products = ref([]);
const categories = ref([]);
const form = ref({
    price: 0,
    category: { id: '' }
});

const API_URL = "http://localhost:8080/api";
const loadData = async () => {
    try {
        const prodReq = axios.get(`${API_URL}/products`);
        const cateReq = axios.get(`${API_URL}/categories`);
        const [prodRes, cateRes] = await Promise.all([prodReq, cateReq]);
        
        products.value = prodRes.data;
        categories.value = cateRes.data;
    } catch (e) {
        console.error("Lỗi load data", e);
    }
}

const edit = (item) => {
    form.value = JSON.parse(JSON.stringify(item));
    if (!form.value.category) form.value.category = { id: '' };
}

const save = () => {
    let method = form.value.id ? 'put' : 'post';
    let url = form.value.id ? `${API_URL}/products/${form.value.id}` : `${API_URL}/products`;

    axios[method](url, form.value).then(() => {
        alert("Thành công!");
        loadData();
        reset();
    }).catch(err => alert("Lỗi lưu dữ liệu: " + err));
}

const remove = (id) => {
    if(confirm("Xóa sản phẩm này?")) {
        axios.delete(`${API_URL}/products/${id}`).then(() => {
            loadData();
        });
    }
}

const reset = () => {
    form.value = { price: 0, category: { id: '' } };
}

onMounted(() => {
    loadData();
});
</script>

<template>
    <div class="container mt-4">
        <h2 class="text-center text-danger">QUẢN LÝ SẢN PHẨM (BÀI 2)</h2>
        
        <div class="card p-3 mb-3 bg-light">
            <div class="row">
                <div class="col-6 mb-2">
                    <label>Tên sản phẩm:</label>
                    <input v-model="form.name" class="form-control">
                </div>
                <div class="col-6 mb-2">
                    <label>Giá:</label>
                    <input v-model="form.price" type="number" class="form-control">
                </div>
                <div class="col-6 mb-2">
                    <label>Ngày nhập:</label>
                    <input v-model="form.createDate" type="date" class="form-control">
                </div>
                <div class="col-6 mb-2">
                    <label>Loại hàng:</label>
                    <select v-model="form.category.id" class="form-select">
                        <option v-for="c in categories" :key="c.id" :value="c.id">
                            {{ c.name }}
                        </option>
                    </select>
                </div>
            </div>
            <div class="mt-2 text-center">
                <button @click="save" class="btn btn-primary me-2">Lưu</button>
                <button @click="reset" class="btn btn-secondary">Làm mới</button>
            </div>
        </div>

        <table class="table table-bordered table-striped">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Tên SP</th>
                    <th>Giá</th>
                    <th>Ngày nhập</th>
                    <th>Loại</th>
                    <th>Thao tác</th>
                </tr>
            </thead>
            <tbody>
                <tr v-for="p in products" :key="p.id">
                    <td>{{ p.id }}</td>
                    <td>{{ p.name }}</td>
                    <td>{{ p.price }}</td>
                    <td>{{ p.createDate }}</td>
                    <td>{{ p.category ? p.category.name : 'N/A' }}</td>
                    <td>
                        <button @click="edit(p)" class="btn btn-sm btn-info me-1">Sửa</button>
                        <button @click="remove(p.id)" class="btn btn-sm btn-danger">Xóa</button>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</template>