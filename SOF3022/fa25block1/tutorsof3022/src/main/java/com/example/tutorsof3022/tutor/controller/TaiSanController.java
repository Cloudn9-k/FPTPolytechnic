package com.example.tutorsof3022.tutor.controller;

import com.example.tutorsof3022.tutor.model.NhanVien;
import com.example.tutorsof3022.tutor.model.TaiSan;
import com.example.tutorsof3022.tutor.repository.NhanVienRepository;
import com.example.tutorsof3022.tutor.repository.TaiSanRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/tai-san")
public class TaiSanController {
    @Autowired
    TaiSanRepository taiSanRepository;

    @Autowired
    NhanVienRepository nhanVienRepository;

    @ModelAttribute("listNhanVien")
    public List<NhanVien> getListNhanVien() {
        return nhanVienRepository.findAll();
    }
    @GetMapping("/hien-thi")
    public String hienThi(Model model) {
        model.addAttribute("listTaiSan"
                , taiSanRepository.findAll());
        System.out.println("JPQL");
        taiSanRepository.searchTaiSanTheoTen("C").forEach(taiSan -> System.out.println(taiSan.getTen()));
        System.out.println("SQL");
        taiSanRepository.searchTaiSanTheoTen("V").forEach(taiSan -> System.out.println(taiSan.getTen()));
        return "/taiSan/hienThi";
    }

    @PostMapping("/them")
    public String themTaiSan(TaiSan taiSan) {
        taiSanRepository.save(taiSan);
        return "redirect:/tai-san/hien-thi";
    }

    @GetMapping("/view-update/{id}")
    public String viewUpdate(@PathVariable("id") Integer id
                    , Model model) {
        model.addAttribute("taiSan", taiSanRepository.findById(id).get());
        return "/taiSan/viewUpdate";
    }

    @PostMapping("/sua")
    public String suaTaiSan(TaiSan taiSan) {
        taiSanRepository.save(taiSan);
        return "redirect:/tai-san/hien-thi";
    }

    @GetMapping("/xoa")
    public String xoaTaiSan(@RequestParam("id") Integer id) {
        taiSanRepository.deleteById(id);
        return "redirect:/tai-san/hien-thi";
    }

    @GetMapping("/phan-trang")
    public String phanTrang(@RequestParam(value = "page", defaultValue = "0", required = false) Integer page, Model model){
        int pageSize = 2;
        Sort sort= Sort.by(Sort.Direction.DESC, "ten");
        Pageable pageable = PageRequest.of(page, pageSize, sort);
        model.addAttribute("page", taiSanRepository.findAll(pageable));
        return "/taiSan/phanTrang";
    }
    @GetMapping("/search")
    public String search(@RequestParam("ten") String ten,Model model){
        model.addAttribute("listTaiSan",taiSanRepository.findTaiSansByTenContains(ten));
        return "/taiSan/hienThi";
    }
}
