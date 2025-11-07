package com.example.sd20204.buoi10.controller;

import com.example.sd20204.buoi10.model.DanhMuc;
import com.example.sd20204.buoi10.model.SanPham;
import com.example.sd20204.buoi10.repository.DanhMucRepository;
import com.example.sd20204.buoi10.repository.SanPhamRepository;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/san-pham")
public class SanPhamController {
    @Autowired
    SanPhamRepository sanPhamRepository;

    @Autowired
    DanhMucRepository danhMucRepository;

    @ModelAttribute("listDanhMuc")
    List<DanhMuc> getListDanhMuc(){
        return danhMucRepository.findAll();
    }
    @GetMapping("/hien-thi")
    public String hienThi(Model model, @ModelAttribute("sp") SanPham sanPham){
        model.addAttribute("listSanPham", sanPhamRepository.findAll());
        return "/sanPham/hienThi";
    }
    @PostMapping("/them")
    public String them(Model model, @ModelAttribute("sp") @Valid SanPham sanPham, Errors errors){
        if (errors.hasErrors()){

            return "/sanPham/hienThi";
        }
        sanPhamRepository.save(sanPham);
        return "redirect:/san-pham/hien-thi";
    }
    @GetMapping("/view-update/{id}")
    public String viewUpdate(@PathVariable("id")Integer id,Model model){
        model.addAttribute("sanPham",sanPhamRepository.findById(id).get());
        return "/sanPham/viewUpdate";
    }
    @PostMapping("/update")
    public String suaSanPham(SanPham sanPham){
        sanPhamRepository.save(sanPham);
        return "redirect:/san-pham/hien-thi";
    }
    @GetMapping("/xoa")
    public String xoaSanPham(@RequestParam("id") Integer id){
        sanPhamRepository.deleteById(id);
        return "redirect:/san-pham/hien-thi";
    }
    @GetMapping("/phan-trang")
    public String phanTrang(@RequestParam(name = "page", defaultValue="0",required = false) Integer page, Model model){
        int pageSize=2;
        Sort sort = Sort.by(Sort.Direction.DESC, "ten");
        Pageable pageable = PageRequest.of(page, pageSize, sort);
        model.addAttribute("page",sanPhamRepository.findAll(pageable));
        return "/sanPham/phanTrang";
    }
    @GetMapping("/tim-kiem")
    public String timKiem(@RequestParam("ten") String ten, Model model) {
        model.addAttribute("listSanPham", sanPhamRepository.findSanPhamsByTenContains(ten));
        return "/sanPham/hienThi";
    }
}
