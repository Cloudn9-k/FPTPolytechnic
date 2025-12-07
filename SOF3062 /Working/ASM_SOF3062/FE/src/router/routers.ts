// src/router/routers.ts
import { createRouter, createWebHistory } from "vue-router";
import Home from "../components/Home.vue";
import ProductDetail from "../components/views/ProductDetail.vue";
import CartView from "../components/views/CartView.vue";
import Login from "../components/views/Login.vue";
import MyOrders from "../components/views/MyOrders.vue";
import AdminProduct from "../components/views/admin/AdminProduct.vue";
import Profile from "../components/views/Profile.vue";
import AdminAccount from "../components/views/admin/AdminAccount.vue";
import AdminOrder from "../components/views/admin/AdminOrder.vue";
import { useAuthStore } from '../stores/auth';
const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: "/",
      name: "home",
      component: Home,
    },
    {
      path: "/product/:id",
      name: "product-detail",
      component: ProductDetail,
    },
    {
      path: "/cart",
      name: "cart",
      component: CartView,
    },
    { path: "/my-orders", component: MyOrders },
    { path: "/admin/products", component: AdminProduct },
    { path: "/profile", component: Profile },
    { path: "/admin/accounts", component: AdminAccount },
    { path: "/admin/orders", component: AdminOrder },
    {
      path: "/login",
      name: "login",
      component: Login,
    },
  ],
});
router.beforeEach((to, from, next) => {
    const authStore = useAuthStore();
    const publicPages = ['/', '/login', '/home']; 
    const authRequired = !publicPages.includes(to.path) && !to.path.startsWith('/product/');
    const adminPath = to.path.startsWith('/admin');
    if (authRequired && !authStore.isAuthenticated) {
        return next('/login'); 
    }
    if (adminPath && (!authStore.user || !authStore.user.admin)) {
        alert("Bạn không có quyền truy cập!");
        return next('/');
    }

    next();
});
export default router;
