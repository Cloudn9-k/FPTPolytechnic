package com.example.tutorsof3022.luyentap1.controller;


import com.example.tutorsof3022.luyentap1.model.MonHoc;
import com.example.tutorsof3022.luyentap1.model.SinhVien;
import com.example.tutorsof3022.luyentap1.repository.MonHocRepository;
import com.example.tutorsof3022.luyentap1.repository.SinhVienRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/sinh-vien")
public class SinhVienController {
    @Autowired
    MonHocRepository monHocRepository;
    @Autowired
    SinhVienRepository sinhVienRepository;
    @ModelAttribute("listMonHoc")
    public List<MonHoc> getAllListMonHoc(){return monHocRepository.findAll();}

    @GetMapping("/hien-thi")
    public String hienThi(Model model){
        model.addAttribute("listSinhVien",sinhVienRepository.findAll());
        return "/luyenTap1/hienThi";
    }
    @PostMapping("/them")
    public String them(SinhVien sinhVien){
        sinhVienRepository.save(sinhVien);
        return "redirect:/sinh-vien/hien-thi";
    }

    @GetMapping("/view-update/{id}")
    public String viewUpdate(@PathVariable("id")Integer id, Model model){
        model.addAttribute("sinhVien",sinhVienRepository.findById(id).get());
        return "/luyenTap1/viewUpdate";
    }
    @PostMapping("/update")
    public String update(SinhVien sinhVien){
        sinhVienRepository.save(sinhVien);
        return "redirect:/sinh-vien/hien-thi";
    }
    @GetMapping("/xoa")
    public String xoa(@RequestParam("id")Integer id){
        sinhVienRepository.deleteById(id);
        return "redirect:/sinh-vien/hien-thi";
    }


}
