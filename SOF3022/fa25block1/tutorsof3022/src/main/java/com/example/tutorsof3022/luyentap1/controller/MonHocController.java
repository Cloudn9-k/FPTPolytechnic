package com.example.tutorsof3022.luyentap1.controller;

import com.example.tutorsof3022.luyentap1.model.MonHoc;
import com.example.tutorsof3022.luyentap1.model.SinhVien;
import com.example.tutorsof3022.luyentap1.repository.MonHocRepository;
import com.example.tutorsof3022.luyentap1.repository.SinhVienRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/mon-hoc")
public class MonHocController {
    @Autowired
    MonHocRepository monHocRepository;
    @Autowired
    SinhVienRepository sinhVienRepository;

    @ModelAttribute("listSinhVien")
    public List<SinhVien> getAllListSinhVien(){return sinhVienRepository.findAll();}
    @GetMapping("/hien-thi")
    public String hienThi(Model model){
        model.addAttribute("listMonHoc",monHocRepository.findAll());
        return "/luyenTap1/hienThiMon";
    }
    @PostMapping("/them")
    public String them(MonHoc monHoc){
        monHocRepository.save(monHoc);
        return "redirect:/mon-hoc/hien-thi";
    }
    @GetMapping("/view-update/{id}")
    public String viewUpdate(@PathVariable("id")Integer id, Model model){
        model.addAttribute("monHoc",monHocRepository.findById(id).get());
        return "/luyenTap1/viewUpdateMon";
    }
    @PostMapping("/update")
    public String update(MonHoc monHoc){
        monHocRepository.save(monHoc);
        return "redirect:/mon-hoc/hien-thi";
    }
    @GetMapping("/xoa")
    public String delete(@RequestParam("id")Integer id){
        monHocRepository.deleteById(id);
        return "redirect:/mon-hoc/hien-thi";
    }
    @GetMapping("/phan-trang")
    public String phanTrang(@RequestParam(value = "page",defaultValue = "0",required = false) Integer page, Model model){
        int pageSize=2;
        Sort sort = Sort.by(Sort.Direction.DESC, "tenMon");
        Pageable pageable = PageRequest.of(page,pageSize,sort);
        model.addAttribute("page",monHocRepository.findAll(pageable));
        return "/luyenTap1/phanTrang";
    }
    @GetMapping("/search")
    public String search(@RequestParam("tenMon")String ten, Model model){
        model.addAttribute("listMonHoc", monHocRepository.findMonHocsByTenMonContains(ten));
        return "/luyenTap1/hienThiMon";
    }
}
