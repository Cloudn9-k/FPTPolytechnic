<script setup>
import { ref } from 'vue';

// Khai báo các biến theo hướng dẫn của thầy
const form = ref({});
const list = ref([
    // Dữ liệu giả để test giao diện trước khi có API
    { id: 1, name: "Nguyễn Văn A", gender: true, mark: 9 },
    { id: 2, name: "Trần Thị B", gender: false, mark: 8 }
]);
const host = "http://localhost:8080";

// Định nghĩa đối tượng controller chứa các hàm xử lý
const ctrl = {
    init() {
        console.log("Hàm init() đã chạy");
    },
    reset() {
        console.log("Hàm reset()");
        form.value = {};
    },
    load() {
        console.log("Hàm load()");
    },
    edit(item) {
        console.log("Hàm edit()", item);
        form.value = { ...item }; // Copy dữ liệu lên form
    },
    create() {
        console.log("Hàm create()");
    },
    update() {
        console.log("Hàm update()");
    },
    delete(item) {
        console.log("Hàm delete()", item);
    }
}

// Gọi hàm khởi tạo
ctrl.init();
</script>

<template>
    <div class="container mt-4">
        <h2 class="text-center">Quản lý Sinh Viên (Mẫu Setup)</h2>
        
        <div class="card p-3 mb-3">
            <div class="mb-2">
                <label class="form-label">Id:</label>
                <input v-model="form.id" class="form-control">
            </div>
            <div class="mb-2">
                <label class="form-label">Name:</label>
                <input v-model="form.name" class="form-control">
            </div>
            <div class="mb-2">
                <label class="form-label">Gender:</label><br>
                <div class="form-check form-check-inline">
                    <input v-model="form.gender" type="radio" :value="true" class="form-check-input"> Male
                </div>
                <div class="form-check form-check-inline">
                    <input v-model="form.gender" type="radio" :value="false" class="form-check-input"> Female
                </div>
            </div>
            <div class="mb-2">
                <label class="form-label">Mark:</label>
                <input v-model="form.mark" class="form-control">
            </div>
            
            <div>
                <button @click="ctrl.create" class="btn btn-primary me-2">Create</button>
                <button @click="ctrl.update" class="btn btn-success me-2">Update</button>
                <button @click="ctrl.delete" class="btn btn-danger me-2">Delete</button>
                <button @click="ctrl.reset" class="btn btn-secondary">Reset</button>
            </div>
        </div>

        <table class="table table-bordered table-hover">
            <thead class="table-light">
                <tr>
                    <th>Id</th>
                    <th>Name</th>
                    <th>Gender</th>
                    <th>Mark</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <tr v-for="e in list" :key="e.id">
                    <td>{{ e.id }}</td>
                    <td>{{ e.name }}</td>
                    <td>{{ e.gender ? 'Male' : 'Female' }}</td>
                    <td>{{ e.mark }}</td>
                    <td>
                        <a @click.stop.prevent="ctrl.edit(e)" href="#" class="btn btn-sm btn-info me-1">Edit</a>
                        <a @click.stop.prevent="ctrl.delete(e)" href="#" class="btn btn-sm btn-warning">Delete</a>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</template>