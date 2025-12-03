<script setup>
import { ref, reactive, onMounted } from 'vue';
import axios from 'axios'; // Đảm bảo đã chạy: npm install axios

const form = ref({});
const list = ref([]); // Ban đầu nên để rỗng, đợi load từ API
const host = "http://localhost:8080";

const ctrl = {
    // Hàm tải danh sách
    load() {
        var url = `${host}/students`;
        axios.get(url).then(resp => {
            list.value = resp.data;
            console.log("Load success", resp.data);
        }).catch(err => {
            console.log("Lỗi load dữ liệu:", err);
        });
    },

    // Hàm reset form
    reset() {
        form.value = { id: '', name: '', gender: true, mark: 0 };
    },

    // Hàm click nút Edit trên bảng
    edit(entity) {
        // Cách 1: Gán trực tiếp (nhanh)
        form.value = { ...entity };
        
        // Cách 2: Gọi API lấy chi tiết (chuẩn hơn nếu dữ liệu realtime)
        // var url = `${host}/students/${entity.id}`;
        // axios.get(url).then(resp => {
        //     form.value = resp.data;
        // }).catch(err => {
        //     console.log("Lỗi load chi tiết:", err);
        // });
    },

    // Hàm tạo mới
    create() {
        var entity = { ...form.value };
        var url = `${host}/students`;
        axios.post(url, entity).then(resp => {
            alert("Thêm thành công!");
            this.load();
            this.reset();
        }).catch(err => {
            console.log("Lỗi tạo mới:", err);
            alert("Lỗi thêm mới!");
        });
    },

    // Hàm cập nhật
    update() {
        var entity = { ...form.value };
        var url = `${host}/students/${entity.id}`;
        axios.put(url, entity).then(resp => {
            alert("Cập nhật thành công!");
            this.load();
            this.reset();
        }).catch(err => {
            console.log("Lỗi cập nhật:", err);
            alert("Lỗi cập nhật!");
        });
    },

    // Hàm xóa (Xử lý cả 2 trường hợp: Click trên bảng hoặc nút trên form)
    delete(entityOrEvent) {
        // Logic: Nếu truyền vào entity có id thì lấy id đó, 
        // nếu không (là sự kiện click nút form) thì lấy id đang điền trên form
        var id = entityOrEvent.id ? entityOrEvent.id : form.value.id;

        if (!id) {
            alert("Chưa chọn sinh viên để xóa!");
            return;
        }

        if (!confirm("Bạn có chắc muốn xóa sinh viên " + id + "?")) return;

        var url = `${host}/students/${id}`;
        axios.delete(url).then(resp => {    
            alert("Xóa thành công!");
            this.load();
            this.reset(); // Xóa xong thì làm sạch form
        }).catch(err => {
            console.log("Lỗi xóa:", err);
            alert("Lỗi khi xóa!");
        });
    }
}

// Khi component được mount thì gọi load dữ liệu ngay
onMounted(() => {
    ctrl.load();
    ctrl.reset();
});
</script>

<template>
    <div class="container mt-4">
        <h2 class="text-center text-primary">Quản lý Sinh Viên (Lab 7)</h2>
        
        <div class="card p-3 mb-3 shadow-sm">
            <div class="row">
                <div class="col-md-6 mb-2">
                    <label class="form-label fw-bold">Student ID:</label>
                    <input v-model="form.id" class="form-control" placeholder="Nhập mã sinh viên">
                </div>
                <div class="col-md-6 mb-2">
                    <label class="form-label fw-bold">Fullname:</label>
                    <input v-model="form.name" class="form-control" placeholder="Nhập họ và tên">
                </div>
                <div class="col-md-6 mb-2">
                    <label class="form-label fw-bold">Mark:</label>
                    <input v-model="form.mark" type="number" class="form-control" placeholder="0.0">
                </div>
                <div class="col-md-6 mb-2">
                    <label class="form-label fw-bold">Gender:</label><br>
                    <div class="form-check form-check-inline">
                        <input v-model="form.gender" type="radio" :value="true" class="form-check-input" name="gender"> 
                        <label class="form-check-label">Male</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input v-model="form.gender" type="radio" :value="false" class="form-check-input" name="gender"> 
                        <label class="form-check-label">Female</label>
                    </div>
                </div>
            </div>
            
            <div class="mt-2 text-center">
                <button @click="ctrl.create" class="btn btn-primary me-2">
                    <i class="bi bi-plus-circle"></i> Create
                </button>
                <button @click="ctrl.update" class="btn btn-success me-2">
                    <i class="bi bi-save"></i> Update
                </button>
                <button @click="ctrl.delete" class="btn btn-danger me-2">
                    <i class="bi bi-trash"></i> Delete
                </button>
                <button @click="ctrl.reset" class="btn btn-secondary">
                    <i class="bi bi-arrow-counterclockwise"></i> Reset
                </button>
            </div>
        </div>

        <table class="table table-bordered table-hover shadow-sm">
            <thead class="table-primary">
                <tr>
                    <th>Id</th>
                    <th>Name</th>
                    <th>Gender</th>
                    <th>Mark</th>
                    <th class="text-center">Action</th>
                </tr>
            </thead>
            <tbody>
                <tr v-for="e in list" :key="e.id">
                    <td>{{ e.id }}</td>
                    <td>{{ e.name }}</td>
                    <td>{{ e.gender ? 'Male' : 'Female' }}</td>
                    <td>{{ e.mark }}</td>
                    <td class="text-center">
                        <button @click.stop.prevent="ctrl.edit(e)" class="btn btn-sm btn-info me-2 text-white">Edit</button>
                        <button @click.stop.prevent="ctrl.delete(e)" class="btn btn-sm btn-warning">Delete</button>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</template>