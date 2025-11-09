package org.example.springcustomauthentication.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {
    @RequestMapping("/auth/{action}")
    public String login(Model model, @PathVariable("action") String action) {
        return switch (action){
            case "login" -> {
                model.addAttribute("message", "Vui lòng đăng nhập");
                yield "/auth/login";
            }
            case "success" -> {
                model.addAttribute("message", "Đăng nhập thành công");
                yield "/auth/login";
            }
            case "failure" -> {
                model.addAttribute("message", "Sai thông tin đăng nhập");
                yield "/auth/login";
            }
            case "exit" -> {
                model.addAttribute("message", "Đăng xuất thành công");
                yield "/auth/login";
            }
            case "fail" -> {
                model.addAttribute("message", "bạn không có quyền truy cập");
                yield "/auth/fail";
            }
            default -> "/auth/login";
        };
    }
}
