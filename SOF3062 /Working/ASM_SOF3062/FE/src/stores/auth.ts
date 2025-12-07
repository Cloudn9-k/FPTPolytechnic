import { defineStore } from "pinia";
import { ref } from "vue";
import axios from "axios";

export const useAuthStore = defineStore("auth", () => {
  const user = ref<any>(null);
  const isAuthenticated = ref(false);
  if (localStorage.getItem("user")) {
    user.value = JSON.parse(localStorage.getItem("user") as string);
    isAuthenticated.value = true;
    const authHeader = localStorage.getItem("authHeader");
    if (authHeader) axios.defaults.headers.common["Authorization"] = authHeader;
  }
  const login = async (username: string, password: string) => {
    // Tạo chuỗi Basic Auth chuẩn
    const token = "Basic " + btoa(username + ":" + password);

    try {
      // Test thử login với token này
      const config = { headers: { Authorization: token } };
      const resp = await axios.get(
        "http://localhost:8080/rest/auth/login",
        config
      );

      // Nếu thành công thì lưu vào Storage
      user.value = resp.data;
      isAuthenticated.value = true;

      localStorage.setItem("user", JSON.stringify(resp.data));

      // QUAN TRỌNG: Lưu token để file main.ts dùng lại
      localStorage.setItem("authHeader", token);

      alert("Đăng nhập thành công!");
      return true;
    } catch (error) {
      console.error(error);
      alert("Sai tên đăng nhập hoặc mật khẩu!");
      return false;
    }
  };

  const logout = () => {
    user.value = null;
    isAuthenticated.value = false;
    localStorage.removeItem("user");
    localStorage.removeItem("authHeader");
    delete axios.defaults.headers.common["Authorization"];
    window.location.href = "/";
  };

  return { user, isAuthenticated, login, logout };
});
