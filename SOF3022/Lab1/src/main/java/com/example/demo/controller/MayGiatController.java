package com.example.demo.controller;

import com.example.demo.model.MayGiat;
import com.example.demo.service.MayGiatService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/kiem")
public class MayGiatController {
    @Autowired
    MayGiatService mayGiatService;
    @GetMapping("/hien-thi")
    public String hienThi(Model model){
        model.addAttribute("ds",mayGiatService.getAll());
        return "/kiem/hienThi";
    }
    @PostMapping("/them")
    public String them(MayGiat mayGiat){
        mayGiatService.add(mayGiat);
        return "redirect:/kiem/hien-thi";
    }
    @GetMapping("/view-update/{ma}")
    public String viewUpdate(@PathVariable("ma") String ma, Model model){
        MayGiat mg = mayGiatService.getDetail(ma);
        model.addAttribute("mg", mg);
        return "/kiem/viewUpdate";
    }
    @PostMapping("/update")
    public String update(MayGiat mg){
        mayGiatService.update(mg);
        return "redirect:/kiem/hien-thi";
    }
}
