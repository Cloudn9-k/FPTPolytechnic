package com.example.tutorsof3022.tutor.controller;

import com.example.tutorsof3022.tutor.model.NhanVien;
import com.example.tutorsof3022.tutor.service.NhanVienService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/nhan-vien")
public class NhanVienController {
    @Autowired
    NhanVienService nhanVienService;

    @GetMapping("/hien-thi")
    public String hienThi(Model model) {
        model.addAttribute("danhSach", nhanVienService.getAllNhanVien());
        return "/nhanVien/hienThi"; // thymeleaf
    }

    @PostMapping("/them")
    public String themNhanVien(NhanVien nhanVien) {
        nhanVienService.addNhanVien(nhanVien);
        return "redirect:/nhan-vien/hien-thi";
    }

    @GetMapping("/update/{id}")
    public String viewUpdateNhanVien(@PathVariable("id") Integer id, Model model) {
        model.addAttribute("nhanVien", nhanVienService.getNhanVienById(id));
        return "/nhanVien/viewUpdate";
    }

    @PostMapping("/update")
    public String updateNhanVien(NhanVien nhanVien) {
        nhanVienService.updateNhanVien(nhanVien);
        return "redirect:/nhan-vien/hien-thi";
    }

    @GetMapping("/delete")
    public String deleteNhanVien(@RequestParam("id") Integer id) {
        nhanVienService.removeNhanVienById(id);
        return "redirect:/nhan-vien/hien-thi";
    }
}
