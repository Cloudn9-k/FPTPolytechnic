<template>
  <div class="container-fluid bg-dark text-white">
      <div class="row text-center text-md-left">
        
        <div class="col-md-3 col-lg-3 col-xl-3 mx-auto mt-3">
          <h5 class="text-uppercase mb-4 font-weight-bold text-warning">
            <i class="fas fa-feather-alt me-2"></i> Quản lý tác giả
          </h5>
          <p>
            Đây là hệ thống quản lý tác giả và bài viết chuyên nghiệp.
          </p>
        </div>

        <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mt-3">
          <h5 class="text-uppercase mb-4 font-weight-bold text-warning">Sản phẩm</h5>
          <p><a href="#" class="text-white" style="text-decoration: none;"><i class="fas fa-pen-nib me-2"></i>Bài viết mới</a></p>
          <p><a href="#" class="text-white" style="text-decoration: none;"><i class="fas fa-users-cog me-2"></i>Tác giả nổi bật</a></p>
          <p><a href="#" class="text-white" style="text-decoration: none;"><i class="fas fa-clipboard-list me-2"></i>Danh mục</a></p>
          <p><a href="#" class="text-white" style="text-decoration: none;"><i class="fas fa-award me-2"></i>Giải thưởng</a></p>
        </div>

        <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mt-3">
          <h5 class="text-uppercase mb-4 font-weight-bold text-warning">Liên kết</h5>
          <p><a href="#" class="text-white" style="text-decoration: none;"><i class="fas fa-question-circle me-2"></i>Trợ giúp</a></p>
          <p><a href="#" class="text-white" style="text-decoration: none;"><i class="fas fa-info-circle me-2"></i>Về chúng tôi</a></p>
          <p><a href="#" class="text-white" style="text-decoration: none;"><i class="fas fa-user-secret me-2"></i>Chính sách bảo mật</a></p>
          <p><a href="#" class="text-white" style="text-decoration: none;"><i class="fas fa-phone-alt me-2"></i>Liên hệ</a></p>
        </div>

        <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mt-3">
          <h5 class="text-uppercase mb-4 font-weight-bold text-warning">Liên hệ</h5>
          <p><i class="fas fa-home me-3"></i> Hà Nội, Việt Nam</p>
          <p><i class="fas fa-envelope me-3"></i> contact@example.com</p>
          <p><i class="fas fa-phone-alt me-3"></i> +84 123 456 789</p>
          <p><i class="fas fa-fax me-3"></i> +01 335 633 77</p>
        </div>
      </div>
      
      <hr class="mb-4">
      
      <div class="row align-items-center">
        <div class="col-md-7 col-lg-8">
          <p class="text-center text-md-start">
            Copyright ©2023 All rights reserved by:
          </p>
        </div>
        
        <div class="col-md-5 col-lg-4">
          <div class="text-center text-md-end">
            <ul class="list-unstyled list-inline">
              <li class="list-inline-item">
                <a href="#" class="btn-floating btn-sm text-white" style="font-size: 23px;"><i class="fab fa-facebook-f"></i></a>
              </li>
              <li class="list-inline-item">
                <a href="#" class="btn-floating btn-sm text-white" style="font-size: 23px;"><i class="fab fa-twitter"></i></a>
              </li>
              <li class="list-inline-item">
                <a href="#" class="btn-floating btn-sm text-white" style="font-size: 23px;"><i class="fab fa-google-plus-g"></i></a>
              </li>
              <li class="list-inline-item">
                <a href="#" class="btn-floating btn-sm text-white" style="font-size: 23px;"><i class="fab fa-linkedin-in"></i></a>
              </li>
              <li class="list-inline-item">
                <a href="#" class="btn-floating btn-sm text-white" style="font-size: 23px;"><i class="fab fa-youtube"></i></a>
              </li>
            </ul>
          </div>
        </div>
      </div>
  </div>
</template>
<script setup>

</script>

<style scoped>
.btn-floating {
  transition: transform 0.3s ease-in-out;
}
.btn-floating:hover {
  transform: translateY(-3px);
  color: var(--bs-warning) !important;
}
.text-warning {
  color: #ffc107 !important;
}
</style>
