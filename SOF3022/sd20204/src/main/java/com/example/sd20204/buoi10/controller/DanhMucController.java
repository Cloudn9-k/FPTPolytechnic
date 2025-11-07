package com.example.sd20204.buoi10.controller;

import com.example.sd20204.buoi10.model.DanhMuc;
import com.example.sd20204.buoi10.repository.DanhMucRepository;
import com.example.sd20204.buoi10.service.DanhMucService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/danh-muc")
public class DanhMucController {
    @Autowired // nó giúp chạy nhanh hơn, giúp quản lý chu kỳ object
    DanhMucService danhMucService;
    @GetMapping ("/hien-thi")
    public String hienThi(Model model){
        model.addAttribute("danhSach",danhMucService.getAllDanhMuc());
        return "/danhMuc/hienThi";
    }
    @PostMapping("/them") //truyen object
    public String them(DanhMuc danhMuc){
        danhMucService.addDanhMuc(danhMuc);
        return "redirect:/danh-muc/hien-thi"; // sử dụng redirect vì có sự thay đổi dữ liệu
    }
    @GetMapping("/view-update/{id}")
    public String viewUpdate (@PathVariable("id") Integer id, Model model){
        model.addAttribute("danhMuc",danhMucService.getDanhMucbyId(id));
        return "/danhMuc/viewUpdate";
    }
    @PostMapping("/update")
    public String sua(DanhMuc danhMuc){
        danhMucService.updateDanhMuc(danhMuc);
        return "redirect:/danh-muc/hien-thi";
    }
    @GetMapping("/xoa") // bắt dấu ? sử dụng request param
    public String delete(@RequestParam("id") Integer id){
        danhMucService.deleteDanhMuc(id);
        return "redirect:/danh-muc/hien-thi";
    }
}

