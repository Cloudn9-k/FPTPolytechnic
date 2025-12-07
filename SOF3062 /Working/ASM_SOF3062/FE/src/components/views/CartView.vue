<script setup lang="ts">
import { useCartStore } from "../../stores/cart"; // Lùi 2 cấp
import { ref } from 'vue';
import { useRouter } from 'vue-router';
import axios from 'axios';
const cartStore = useCartStore();

const formatCurrency = (value: number) => {
  return new Intl.NumberFormat("vi-VN", {
    style: "currency",
    currency: "VND",
  }).format(value);
};

const checkout = () => {
  if (cartStore.totalCount === 0) {
    alert("Giỏ hàng đang trống!");
    return;
  }
  const token = localStorage.getItem("token");
  if (!token) {
    alert("Vui lòng đăng nhập để thanh toán!");
  } else {
    alert("Chức năng đặt hàng sẽ xử lý sau khi có đăng nhập!");
  }
};
const address = ref('');
const router = useRouter();

const processCheckout = async () => {
    if (!address.value) {
        alert("Vui lòng nhập địa chỉ!");
        return;
    }
    // Chuẩn bị dữ liệu gửi lên Server
    const orderData = {
        address: address.value,
        details: cartStore.cartItems.map(item => ({
            productId: item.id,
            quantity: item.quantity,
            price: item.price
        }))
    };

    try {
        await axios.post('http://localhost:8080/rest/orders', orderData);
        alert("Đặt hàng thành công!");
        cartStore.clearCart();
        router.push('/my-orders');
    } catch (e) {
        console.error(e);
        alert("Lỗi đặt hàng (Bạn đã đăng nhập chưa?)");
    }
}
</script>

<template>
  <div class="container mt-4">
    <h2 class="text-center mb-4">GIỎ HÀNG CỦA BẠN</h2>

    <div v-if="cartStore.cartItems.length > 0">
      <table class="table table-bordered text-center align-middle">
        <thead class="table-light">
          <tr>
            <th>Sản phẩm</th>
            <th>Giá</th>
            <th>Số lượng</th>
            <th>Thành tiền</th>
            <th>Xóa</th>
          </tr>
        </thead>
        <tbody>
          <tr v-for="item in cartStore.cartItems" :key="item.id">
            <td class="text-start">{{ item.name }}</td>
            <td>{{ formatCurrency(item.price) }}</td>
            <td style="width: 150px">
              <input
                type="number"
                min="1"
                v-model="item.quantity"
                class="form-control text-center"
              />
            </td>
            <td class="fw-bold">
              {{ formatCurrency(item.price * item.quantity) }}
            </td>
            <td>
              <button
                @click="cartStore.removeFromCart(item.id)"
                class="btn btn-danger btn-sm"
              >
                <i class="bi bi-trash"></i>
              </button>
            </td>
          </tr>
        </tbody>
      </table>

      <div class="d-flex justify-content-between align-items-center mt-3">
        <h4>
          Tổng tiền:
          <span class="text-danger">{{
            formatCurrency(cartStore.totalAmount)
          }}</span>
        </h4>
        <div>
          <button
            @click="cartStore.clearCart"
            class="btn btn-outline-danger me-2"
          >
            Xóa hết
          </button>
        </div>
      </div>
      <div class="mt-4 p-4 bg-white shadow-sm rounded">
            <h4>Thông tin giao hàng</h4>
            <div class="mb-3">
              <label>Địa chỉ nhận hàng:</label>
              <textarea
                v-model="address"
                class="form-control"
                rows="2"
                placeholder="Số nhà, đường, phường, quận..."
              ></textarea>
            </div>
            <button @click="processCheckout" class="btn btn-success w-100 py-2">
              XÁC NHẬN ĐẶT HÀNG
            </button>
          </div>
    </div>

    <div v-else class="text-center my-5">
      <p class="fs-4 text-muted">Giỏ hàng trống trơn!</p>
      <router-link to="/" class="btn btn-primary">Mua sắm ngay</router-link>
    </div>
  </div>
</template>
