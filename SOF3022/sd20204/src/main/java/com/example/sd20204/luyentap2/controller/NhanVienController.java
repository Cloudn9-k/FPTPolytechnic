package com.example.sd20204.luyentap2.controller;

import com.example.sd20204.luyentap2.model.ChucVu;
import com.example.sd20204.luyentap2.model.NhanVien;
import com.example.sd20204.luyentap2.repository.ChucVuRepository;
import com.example.sd20204.luyentap2.repository.NhanVienRepository;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.Banner;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/nhan-vien")
public class NhanVienController {
    @Autowired
    ChucVuRepository chucVuRepository;
    @Autowired
    NhanVienRepository nhanVienRepository;
    @ModelAttribute("listChucVu")
    List<ChucVu> getAllListChucVu(){return chucVuRepository.findAll();}
    @GetMapping("/hien-thi")
    public String hienThi(Model model, @ModelAttribute("nhanVien") NhanVien nhanVien){
        model.addAttribute("listNhanVien", nhanVienRepository.findAll());
        return "/nhanVien/hienThi";
    }
    @PostMapping("/them")
    public String them(Model model, @ModelAttribute("nhanVien") @Valid NhanVien nhanVien, Errors errors){
        if(errors.hasErrors()){
            return "/nhanVien/hienThi";
        }
        nhanVienRepository.save(nhanVien);
        return "redirect:/nhan-vien/hien-thi";
    }
    @GetMapping("/view-update/{id}")
    public String viewUpdate(@PathVariable("id") Integer id, Model model){
        model.addAttribute("nhanVien", nhanVienRepository.findById(id).get());
        return "/nhanVien/viewUpdate";
    }
    @PostMapping("/update")
    public String update(NhanVien nhanVien){
        nhanVienRepository.save(nhanVien);
        return "redirect:/nhan-vien/hien-thi";
    }
    @GetMapping("/phan-trang")
    public String phanTrang(@RequestParam("page") Integer page, Model model){
        int pageSize=2;
        Sort sort = Sort.by(Sort.Direction.DESC, "ten");
        Pageable pageable = PageRequest.of(page, pageSize,sort);
        model.addAttribute("page",nhanVienRepository.findAll(pageable));
        return "/nhanVien/phanTrang";
    }
    @GetMapping("/xoa")
    public String xoa(@RequestParam("id")Integer id){
        nhanVienRepository.deleteById(id);
        return "redirect:/nhan-vien/hien-thi";
    }
}
