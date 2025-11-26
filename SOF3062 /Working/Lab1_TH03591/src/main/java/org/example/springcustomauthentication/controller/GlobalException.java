package org.example.springcustomauthentication.controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice // lỗi vào đây hết - tự làm trang lỗi
public class GlobalException {
    @ExceptionHandler(Exception.class)
    public String handleGlobalException(Exception ex, Model model) {
        ex.printStackTrace();
        model.addAttribute("errorMessage", "Đã có lỗi hệ thống xảy ra!");
        model.addAttribute("errorDetail", ex.getClass().getName() + ": " + ex.getMessage());
        return "/auth/error";
    }

}
