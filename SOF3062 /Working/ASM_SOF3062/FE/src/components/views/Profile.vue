<script setup lang="ts">
import { ref, onMounted } from 'vue';
import axios from 'axios';
import { useAuthStore } from '../../stores/auth';

const authStore = useAuthStore();
const form = ref<any>({});
const passwordForm = ref({ newPass: '', confirmPass: '' });

const loadProfile = async () => {
    // Gọi API lấy thông tin mới nhất từ DB
    const resp = await axios.get('http://localhost:8080/rest/user/profile');
    form.value = resp.data;
}

const updateInfo = async () => {
    try {
        await axios.put('http://localhost:8080/rest/user/profile', form.value);
        alert("Cập nhật hồ sơ thành công!");
        // Cập nhật lại store để hiển thị tên mới trên menu
        authStore.user = form.value; 
        localStorage.setItem('user', JSON.stringify(form.value));
    } catch (e) { alert("Lỗi cập nhật!"); }
}

const changePass = async () => {
    if(passwordForm.value.newPass !== passwordForm.value.confirmPass) {
        alert("Mật khẩu xác nhận không khớp!");
        return;
    }
    try {
        // Gửi password dạng text raw
        await axios.put('http://localhost:8080/rest/user/change-password', passwordForm.value.newPass, {
            headers: { 'Content-Type': 'text/plain' }
        });
        alert("Đổi mật khẩu thành công!");
        passwordForm.value = { newPass: '', confirmPass: '' };
    } catch (e) { alert("Lỗi đổi mật khẩu!"); }
}

onMounted(() => loadProfile());
</script>

<template>
    <div class="container mt-4">
        <div class="row">
            <div class="col-md-6">
                <div class="card p-4">
                    <h4 class="text-primary">Thông tin cá nhân</h4>
                    <div class="mb-3">
                        <label>Tên đăng nhập:</label>
                        <input :value="form.username" class="form-control" disabled>
                    </div>
                    <div class="mb-3">
                        <label>Họ và tên:</label>
                        <input v-model="form.fullname" class="form-control">
                    </div>
                    <div class="mb-3">
                        <label>Email:</label>
                        <input v-model="form.email" class="form-control">
                    </div>
                    <button @click="updateInfo" class="btn btn-primary">Lưu thay đổi</button>
                </div>
            </div>

            <div class="col-md-6">
                <div class="card p-4">
                    <h4 class="text-danger">Đổi mật khẩu</h4>
                    <div class="mb-3">
                        <label>Mật khẩu mới:</label>
                        <input v-model="passwordForm.newPass" type="password" class="form-control">
                    </div>
                    <div class="mb-3">
                        <label>Xác nhận mật khẩu:</label>
                        <input v-model="passwordForm.confirmPass" type="password" class="form-control">
                    </div>
                    <button @click="changePass" class="btn btn-danger">Đổi mật khẩu</button>
                </div>
            </div>
        </div>
    </div>
</template>