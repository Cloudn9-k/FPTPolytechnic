<script setup>
import { ref, computed, vModelCheckbox } from "vue";
const danhSachPhong = ref([
    { id: 1, ten: "Phong A", tang: 1, loaiPhong: 1, dienTich: 20 },
    { id: 2, ten: "Phong B", tang: 2, loaiPhong: 2, dienTich: 30 },
    { id: 3, ten: "Phong C", tang: 3, loaiPhong: 1, dienTich: 25 },
]);

const phongFilter = ref("");
const dienTichMin = ref("");
const dienTichMax = ref("");

const filteredPhong = computed(() => {
    return danhSachPhong.value.filter((phong) => {
        const matchTen = phong.ten
            .toLowerCase()
            .includes(phongFilter.value.toLowerCase());
        const matchMin =
            dienTichMin.value === "" || phong.dienTich >= Number(dienTichMin.value);
        const matchMax =
            dienTichMax.value === "" || phong.dienTich <= Number(dienTichMax.value);
        return matchTen && matchMin && matchMax;
    });
});

const currentphong = ref({
    id: null,
    ten: "",
    hang: "",
    dungLuong: "",
    gia: null,
});

const isEditing = ref(false);

const submitForm = () => {
    if (
        !currentphong.value.ten ||
        !currentphong.value.tang ||
        !currentphong.value.dienTich
    ) {
        alert("Vui lòng điền đầy đủ thông tin.");
        return;
    } else {
        const newId =
            danhSachPhong.value.length > 0
                ? Math.max(...danhSachPhong.value.map((p) => p.id)) + 1
                : 1;
        danhSachPhong.value.push({ ...currentphong.value, id: newId });
        alert("Thêm mới thành công!");
    }
    resetForm();
};

const resetForm = () => {
    currentphong.value = {
        id: null,
        ten: "",
        hang: "",
        dungLuong: "",
        gia: null,
    };
    isEditing.value = false;
};

const deletephong = (id) => {
    if (confirm("Bạn có chắc chắn muốn xóa Phòng này không?")) {
        danhSachPhong.value = danhSachPhong.value.filter(
            (phong) => phong.id !== id
        );
        alert("Xóa thành công!");
    }
};
</script>
<template>
    <div class="container mt-5">
        <h1 class="text-center mb-4">Quản lý phòng</h1>
        <h2 class="mt-5">{{ isEditing ? "Sửa Phòng" : "Thêm Phòng Mới" }}</h2>
        <form @submit.prevent="submitForm">
            <div class="mb-3">
                <label for="ten" class="form-label">Tên Phòng</label>
                <input v-model="currentphong.ten" type="text" class="form-control" id="ten"
                    placeholder="Nhập tên Phòng" />
            </div>
            <div class="mb-3">
                <label for="hang" class="form-label">Tầng</label>
                <input v-model="currentphong.tang" type="text" class="form-control" id="tang"
                    placeholder="Nhập tầng Phòng" />
            </div>
            <div class="mb-3">
                <label class="form-label">Loại Phòng</label>
                <div>
                    <input type="radio" id="phongThuong" value="1" v-model="currentphong.loaiPhong" />
                    <label for="phongThuong">Phòng thường</label>
                    <input type="radio" id="phongVip" value="2" v-model="currentphong.loaiPhong" class="ms-3" />
                    <label for="phongVip">Phòng VIP</label>
                </div>
            </div>
            <div class="mb-3">
                <label for="gia" class="form-label">Diện Tích</label>
                <input v-model.number="currentphong.dienTich" type="number" class="form-control" id="dienTich"
                    placeholder="Nhập diện tích" />
            </div>
            <button type="submit" class="btn btn-success me-2">
                {{ isEditing ? "Cập Nhật" : "Thêm Mới" }}
            </button>
            <button type="button" class="btn btn-secondary" @click="resetForm">
                Hủy
            </button>
        </form>

        <h2 class="mt-5">Tìm kiếm theo diện tích</h2>
        <div class="row mb-4">
            <div class="col">
                <input v-model="dienTichMin" type="number" class="form-control" placeholder="Diện tích tối thiểu" />
            </div>
            <div class="col">
                <input v-model="dienTichMax" type="number" class="form-control" placeholder="Diện tích tối đa" />
            </div>
        </div>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Tên</th>
                    <th>Tầng</th>
                    <th>Loại Phòng</th>
                    <th>Diện tích</th>
                    <th>Hành Động</th>
                </tr>
            </thead>
            <tbody>
                <tr v-for="phong in filteredPhong" :key="phong.id">
                    <td>{{ phong.id }}</td>
                    <td>{{ phong.ten }}</td>
                    <td>{{ phong.tang }}</td>
                    <td>{{ phong.loaiPhong }}</td>
                    <td>{{ phong.dienTich }}</td>
                    <td>
                        <button class="btn btn-danger" @click="deletephong(phong.id)">
                            Xóa
                        </button>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</template>
