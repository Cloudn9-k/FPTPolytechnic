<script setup lang="ts">
import { ref, onMounted } from 'vue';
import axios from 'axios';

const products = ref<any[]>([]);
const form = ref<any>({ price: 0, available: true, category: {id: 'DH'} }); // Mặc định
const isEdit = ref(false);

const load = async () => {
    const resp = await axios.get('http://localhost:8080/rest/products');
    products.value = resp.data;
}

const save = async () => {
    const url = 'http://localhost:8080/rest/admin/products';
    if(isEdit.value) {
        await axios.put(`${url}/${form.value.id}`, form.value);
    } else {
        await axios.post(url, form.value);
    }
    alert("Lưu thành công");
    load(); reset();
}

const edit = (p: any) => {
    form.value = {...p};
    isEdit.value = true;
}

const remove = async (id: number) => {
    if(confirm("Xóa nhé?")) {
        await axios.delete(`http://localhost:8080/rest/admin/products/${id}`);
        load();
    }
}

const reset = () => { form.value = { price: 0, available: true, category: {id: 'DH'} }; isEdit.value = false; }

onMounted(() => load());
</script>

<template>
    <div class="container mt-4">
        <h2 class="text-danger text-center">QUẢN TRỊ HÀNG HÓA</h2>
        
        <div class="card p-3 mb-4 bg-light">
            <div class="row">
                <div class="col-md-6 mb-2">
                    <label>Tên sản phẩm</label>
                    <input v-model="form.name" class="form-control">
                </div>
                <div class="col-md-6 mb-2">
                    <label>Giá</label>
                    <input v-model="form.price" type="number" class="form-control">
                </div>
                <div class="col-md-6 mb-2">
                    <label>Ảnh (tên file)</label>
                    <input v-model="form.image" class="form-control" placeholder="dell.jpg">
                </div>
                <div class="col-md-6 mb-2">
                    <label>Danh mục</label>
                    <select v-model="form.category.id" class="form-select">
                        <option value="DH">Đồng hồ</option>
                        <option value="MT">Máy tính</option>
                    </select>
                </div>
            </div>
            <div class="text-center mt-2">
                <button @click="save" class="btn btn-primary me-2">{{ isEdit ? 'Cập nhật' : 'Thêm mới' }}</button>
                <button @click="reset" class="btn btn-secondary">Làm mới</button>
            </div>
        </div>

        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Tên</th>
                    <th>Giá</th>
                    <th>Thao tác</th>
                </tr>
            </thead>
            <tbody>
                <tr v-for="p in products" :key="p.id">
                    <td>{{ p.id }}</td>
                    <td>{{ p.name }}</td>
                    <td>{{ p.price }}</td>
                    <td>
                        <button @click="edit(p)" class="btn btn-sm btn-info me-1">Sửa</button>
                        <button @click="remove(p.id)" class="btn btn-sm btn-danger">Xóa</button>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</template>