<script setup lang="ts">
import { ref } from 'vue';
import { useAuthStore } from '../../stores/auth';
import { useRouter } from 'vue-router';

const username = ref('');
const password = ref('');
const authStore = useAuthStore();
const router = useRouter();

const handleLogin = async () => {
    if(!username.value || !password.value) {
        alert("Vui lòng nhập đầy đủ thông tin!");
        return;
    }
    const success = await authStore.login(username.value, password.value);
    if(success) {
        router.push('/');
    }
}
</script>

<template>
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6 col-lg-4">
                <div class="card shadow-lg">
                    <div class="card-header bg-primary text-white text-center">
                        <h4>ĐĂNG NHẬP</h4>
                    </div>
                    <div class="card-body p-4">
                        <div class="mb-3">
                            <label class="form-label">Tên đăng nhập</label>
                            <input v-model="username" class="form-control" placeholder="admin hoặc user">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Mật khẩu</label>
                            <input v-model="password" type="password" class="form-control" placeholder="123">
                        </div>
                        <button @click="handleLogin" class="btn btn-primary w-100">Đăng nhập</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>