package com.example.sd20204.buoi5.controller;

import com.example.sd20204.buoi5.model.SinhVien;
import com.example.sd20204.buoi5.service.SinhVienService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/buoi5")
public class SinhVienController {
    @Autowired
    SinhVienService sinhVienService;

    @GetMapping("/hien-thi")
    public String hienThi(Model model) {
        model.addAttribute("danhSach", sinhVienService.getAll());
        return "/buoi5/hienThi";
    }

    @PostMapping("/them")
    public String them(SinhVien sinhVien) {
        sinhVienService.addSinhVien(sinhVien);
        return "redirect:/buoi5/hien-thi";
    }

    @GetMapping("/view-update/{id}")
    public String viewUpdate(@PathVariable("id") String id, Model model) {
        SinhVien sinhVien = sinhVienService.getDetail(id);
        model.addAttribute("sinhVien", sinhVien);
        return "/buoi5/viewUpdate";
    }

    @PostMapping("/update")
    public String update(SinhVien sinhVien) {
        sinhVienService.updateSinhVien(sinhVien);
        return "redirect:/buoi5/hien-thi";
    }

    @GetMapping("/delete")
    public String delete(@RequestParam("id") String id) {
        sinhVienService.deleteSinhVien(id);
        return "redirect:/buoi5/hien-thi";
    }
}
