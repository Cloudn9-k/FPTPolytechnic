package com.example.buoi5_maven.controller; // Nhớ sửa package đúng của bạn

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {
    @GetMapping("/auth/login")
    public String login() {
        return "auth/login";
    }
    @GetMapping({"/", "/poly/url0"})
    public String index(Model model) {
        model.addAttribute("message", "Trang chủ (Ai cũng vào được)");
        return "user_info";
    }
    @PreAuthorize("isAuthenticated()")
    @GetMapping("/poly/url1")
    public String url1(Model model) {
        model.addAttribute("message", "Kết quả: Đã đăng nhập thành công!");
        return "user_info";
    }
    @PreAuthorize("hasRole('USER')")
    @GetMapping("/poly/url2")
    public String url2(Model model) {
        model.addAttribute("message", "Kết quả: Bạn có quyền USER");
        return "user_info";
    }
    @PreAuthorize("hasRole('ADMIN')")
    @GetMapping("/poly/url3")
    public String url3(Model model) {
        model.addAttribute("message", "Kết quả: Bạn có quyền ADMIN");
        return "user_info";
    }
}