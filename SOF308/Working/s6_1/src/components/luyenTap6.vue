<template>
    <div class="container mt-5">
        <h1 class="mb-4 text-primary text-center">Phân loại khách hàng theo năm sinh</h1>

        <div class="card p-4 shadow-sm mb-4">
            <div class="mb-3">
                <label for="birthYearInput" class="form-label fw-bold d-block text-center">Nhập năm sinh của bạn:</label>
                <input
                    type="number"
                    id="birthYearInput"
                    class="form-control mx-auto" style="max-width: 250px;"
                    v-model.number="birthYear"
                    @input="calculateAndClassifyAge"
                    placeholder="VD: 1990"
                    :min="MIN_BIRTH_YEAR"
                    :max="CURRENT_YEAR"
                />
            </div>

            <div class="alert text-center fw-bold" :class="alertClass" role="alert">
                <div v-if="age === null && birthYear === null">
                    Vui lòng nhập năm sinh hợp lệ.
                </div>
                <div v-else-if="age === null">
                    Năm sinh không hợp lệ (phải từ {{ MIN_BIRTH_YEAR }} đến {{ CURRENT_YEAR }}).
                </div>
                <div v-else-if="age >= 60">
                    Khách hàng cao tuổi (Tuổi: {{ age }})
                </div>
                <div v-else-if="age >= 30">
                    Khách hàng trung niên (Tuổi: {{ age }})
                </div>
                <div v-else-if="age >= 18">
                    Khách hàng trẻ (Tuổi: {{ age }})
                </div>
                <div v-else>
                    Khách hàng chưa đủ tuổi (Tuổi: {{ age }})
                </div>
            </div>
        </div>

        <div class="text-center mb-4">
            <button @click="toggleDetails" class="btn btn-secondary btn-lg">
                {{ showDetails ? 'Ẩn chi tiết' : 'Hiện chi tiết' }}
            </button>
        </div>

        <div v-show="showDetails" class="card p-4 shadow-sm bg-light">
            <h2 class="card-title text-center mb-3 text-secondary">Chi tiết khách hàng</h2>
            <p><strong>Năm sinh đã nhập:</strong> {{ birthYear || 'Chưa nhập' }}</p>
            <p><strong>Tuổi ước tính:</strong> {{ age !== null ? age : 'N/A' }}</p>
            <p><strong>Loại khách hàng:</strong>
                <span class="badge" :class="badgeClass">
                    {{ displayMessage }}
                </span>
            </p>
        </div>
    </div>
</template>

<script setup>
import { ref, computed } from 'vue';

const CURRENT_YEAR = 2025;
const MIN_BIRTH_YEAR = 1900;

const birthYear = ref(null);
const age = ref(null);
const showDetails = ref(false);

const calculateAndClassifyAge = () => {
    if (birthYear.value && birthYear.value >= MIN_BIRTH_YEAR && birthYear.value <= CURRENT_YEAR) {
        age.value = CURRENT_YEAR - birthYear.value;
    } else {
        age.value = null; 
    }
};

const alertClass = computed(() => {
    if (age.value === null) {
        return 'alert-danger'; 
    } else if (age.value >= 60) {
        return 'alert-success'; 
    } else if (age.value >= 30) {
        return 'alert-primary'; 
    } else if (age.value >= 18) {
        return 'alert-info'; 
    } else {
        return 'alert-warning';
    }
});

const badgeClass = computed(() => {
    if (age.value === null) {
        return 'bg-danger';
    } else if (age.value >= 60) {
        return 'bg-success';
    } else if (age.value >= 30) {
        return 'bg-primary';
    } else if (age.value >= 18) {
        return 'bg-info';
    } else {
        return 'bg-warning text-dark'; 
    }
});

const displayMessage = computed(() => {
    if (age.value === null && birthYear.value === null) {
        return 'Vui lòng nhập năm sinh hợp lệ';
    } else if (age.value === null) {
        return `Năm sinh không hợp lệ`; 
    } else if (age.value >= 60) {
        return 'Khách hàng cao tuổi';
    } else if (age.value >= 30) {
        return 'Khách hàng trung niên';
    } else if (age.value >= 18) {
        return 'Khách hàng trẻ';
    } else {
        return 'Khách hàng chưa đủ tuổi';
    }
});

const toggleDetails = () => {
    showDetails.value = !showDetails.value;
};
</script>