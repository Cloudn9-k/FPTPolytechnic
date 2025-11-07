package com.example.demo.De1.controller;

import com.example.demo.De1.Model.DonHang;
import com.example.demo.De1.Model.SanPham;
import com.example.demo.De1.repository.DonHangRepository;
import com.example.demo.De1.repository.SanPhamRepository;
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
@RequestMapping("/don-hang")
public class DonHangController {
    @Autowired
    DonHangRepository donHangRepository;
    @Autowired
    SanPhamRepository sanPhamRepository;
    @ModelAttribute("listSanPham")
    List<SanPham> getListSanPham(){return sanPhamRepository.findAll();}

    @GetMapping("/hien-thi")
    public String hienThi(Model model, @ModelAttribute("dh") DonHang donHang) {
        model.addAttribute("listDonHang", donHangRepository.findAll());
        return "/De1/hienThi";
    }
    @PostMapping("/them")
    public String them(Model model, @ModelAttribute("dh") @Valid DonHang donHang, Errors errors){
        if (errors.hasErrors()){
            return "/De1/hienThi";
        }
        donHangRepository.save(donHang);
        return "redirect:/don-hang/hien-thi";
    }
    @GetMapping("/view-update/{id}")
    public String viewUpdate(@PathVariable("id")Integer id, Model model){
        model.addAttribute("dh",donHangRepository.findById(id).get());
        return "/De1/ViewUpdate";
    }
    @PostMapping("update")
    public String update(DonHang donHang){
        donHangRepository.save(donHang);
        return "redirect:/don-hang/hien-thi";
    }
    @GetMapping("xoa")
    public String delete(@RequestParam("id") Integer id){
        donHangRepository.deleteById(id);
        return "redirect:/don-hang/hien-thi";
    }
    @GetMapping("/phan-trang")
    public String phanTrang(@RequestParam(value = "page",defaultValue = "0", required = false)Integer page, Model model){
        int pageSize=2;
        Sort sort = Sort.by(Sort.Direction.DESC,"tenKhachHang");
        Pageable pageable = PageRequest.of(page, pageSize, sort);
        model.addAttribute("page",donHangRepository.findAll(pageable));
        return "/De1/phanTrang";
    }
    @GetMapping("/search")
    public String timKiem(@RequestParam("tenKhachHang") String ten,Model model,@ModelAttribute("dh") DonHang donHang){
        model.addAttribute("listDonHang",donHangRepository.getDonHangsByTenKhachHangContains(ten));
        return "/De1/hienThi";
    }
}
