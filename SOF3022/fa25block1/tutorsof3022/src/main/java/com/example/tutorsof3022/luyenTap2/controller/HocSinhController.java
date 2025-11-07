package com.example.tutorsof3022.luyenTap2.controller;

import com.example.tutorsof3022.luyenTap2.model.HocSinh;
import com.example.tutorsof3022.luyenTap2.model.TruongHoc;
import com.example.tutorsof3022.luyenTap2.repository.HocSinhRepository;
import com.example.tutorsof3022.luyenTap2.repository.TruongHocRepository;
import lombok.Getter;
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
@RequestMapping("/hoc-sinh")
public class HocSinhController {
    @Autowired
    HocSinhRepository hocSinhRepository;
    @Autowired
    TruongHocRepository truongHocRepository;
    @ModelAttribute("listTruongHoc")
    public List<TruongHoc> getAllListTruongHoc(){return truongHocRepository.findAll();}
    @GetMapping("/hien-thi")
    public String hienThi(Model model){
        model.addAttribute("listHocSinh",hocSinhRepository.findAll());
        return "/luyenTap2/hienThi";
    }
    @PostMapping("/them")
    public String them(HocSinh hocSinh){
        hocSinhRepository.save(hocSinh);
        return "redirect:/hoc-sinh/hien-thi";
    }
    @GetMapping("/view-update/{id}")
    public String viewUpdate(@PathVariable("id")Integer id, Model model){
        model.addAttribute("hocSinh",hocSinhRepository.findById(id).get());
        return "/luyenTap2/viewUpdate";
    }
    @PostMapping("/update")
    public String update(HocSinh hocSinh){
        hocSinhRepository.save(hocSinh);
        return "redirect:/hoc-sinh/hien-thi";
    }
    @GetMapping("/xoa")
    public String xoa(@RequestParam("id")Integer id){
        hocSinhRepository.deleteById(id);
        return "redirect:/hoc-sinh/hien-thi";
    }
    @GetMapping("/phan-trang")
    public String phanTrang(@RequestParam(value = "page",defaultValue = "0",required = false) Integer page, Model model){
        int pageSize=2;
        Sort sort = Sort.by(Sort.Direction.DESC, "tenHocSinh");
        Pageable pageable = PageRequest.of(page,pageSize,sort);
        model.addAttribute("page",hocSinhRepository.findAll(pageable));
        return "/luyenTap2/phanTrang";
    }
    @GetMapping("/search")
    public String search(@RequestParam("tenHocSinh")String ten, Model model){
        model.addAttribute("listHocSinh",hocSinhRepository.findHocSinhsByTenHocSinhContains(ten));
        return "/luyenTap2/hienThi";
    }
}
