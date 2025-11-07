package com.example.sd20204.buoi4;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/buoi4")
public class Buoi4Controller {
    @GetMapping("/hien-thi")
    public String hienThi(Model model) {
        SinhVien sv = new SinhVien(1, "Hieu Phong", 9.5f);
        model.addAttribute("sinhVien", sv);
        return "/buoi4/hienThi";
    }
}
