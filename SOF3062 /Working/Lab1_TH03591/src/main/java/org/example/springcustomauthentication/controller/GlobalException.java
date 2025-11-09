package org.example.springcustomauthentication.controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class GlobalException {
    /**
     * @ExceptionHandler(Exception.class) giống như: catch(Exception ex) { ... }
     * * Nó sẽ bắt TẤT CẢ các lỗi (Exception.class) mà các controller ném ra
     * mà không được xử lý (unhandled) ở đâu khác.
     */
    @ExceptionHandler(Exception.class)
    public String handleGlobalException(Exception ex, Model model) {
        ex.printStackTrace();
        model.addAttribute("errorMessage", "Đã có lỗi hệ thống xảy ra!");
        model.addAttribute("errorDetail", ex.getClass().getName() + ": " + ex.getMessage());
        return "/auth/error";
    }

}
