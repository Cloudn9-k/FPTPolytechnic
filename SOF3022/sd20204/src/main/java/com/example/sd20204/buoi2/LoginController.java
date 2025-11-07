package com.example.sd20204.buoi2;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/buoi2")
public class LoginController {

    @GetMapping("/login")
    public String showForm() {
        return "/buoi2/login";
    }

//    @PostMapping("/login")
//    public String login(
//            @RequestParam("ten") String ten,
//            @RequestParam("matKhau") String matKhau,
//            Model model
//    ) {
//        model.addAttribute("ten", ten);
//        model.addAttribute("matKhau", matKh   au);
//        return "/buoi2/thongTin";
//    }

    @PostMapping("/login")
    public String login(LoginRequest loginRequest, Model model
    ) {
        model.addAttribute("ten", loginRequest.getTen());
        model.addAttribute("matKhau", loginRequest.getMatKhau());
        return "/buoi2/thongTin";
    }

    @ResponseBody
    @GetMapping("/path-variable/{id}")
    public void pathVariable(@PathVariable("id") String id) {
        System.out.println(id);
    }
}
