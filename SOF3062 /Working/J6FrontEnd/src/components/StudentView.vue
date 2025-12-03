<script setup>
import { ref } from 'vue';
const form = ref({});
const list = ref([
    { id: 1, name: "Nguyễn Văn A", gender: true, mark: 9 },
    { id: 2, name: "Trần Thị B", gender: false, mark: 8 }
]);
const host = "http://localhost:8080";
const ctrl = {
    init() {
        this.load();
        this.init();
    },
    reset() {
        form.value = {id: '', name: '', gender: true, mark: 5.0};
    },
    load() {
        var url = `${host}/students`;
        axios.get(url).then(resp => {
            list.value = resp.data;
        }).catch(err => {
            console.log("Lỗi load dữ liệu:", err);
        });
    },
    edit(entity) {
        form.value = { ...entity };
        var url = `${host}/students/${entity.id}`;
        axios.get(url).then(resp => {
            form.value = resp.data;
        }).catch(err => {
            console.log("Lỗi load dữ liệu:", err);
        });
    },
    create() {
        var entity = Object.assign({}, form.value);
        var url = `${host}/students`;
        axios.post(url, entity).then(resp => {
            this.load();
            this.reset();
        }).catch(err => {
            console.log("Lỗi tạo mới:", err);
        });
    },
    update() {
        var entity = Object.assign({}, form.value);
        var url = `${host}/students/${entity.id}`;
        axios.put(url, entity).then(resp => {
            this.load();
            this.reset();
        }).catch(err => {
            console.log("Lỗi cập nhật:", err);
        });
    },
    delete(entity) {
        var url = `${host}/students/${entity.id}`;
        axios.delete(url).then(resp => {    
            this.load();
            this.reset();
        }).catch(err => {
            console.log("Lỗi xóa:", err);
        });
    }
}
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