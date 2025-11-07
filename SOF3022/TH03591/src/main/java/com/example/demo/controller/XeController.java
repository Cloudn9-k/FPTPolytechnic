package com.example.demo.controller;

import com.example.demo.model.LoaiXe;
import com.example.demo.model.Xe;
import com.example.demo.repository.LoaiXeRepository;
import com.example.demo.repository.XeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/xe")
public class XeController {
    @Autowired
    LoaiXeRepository loaiXeRepository;
    @Autowired
    XeRepository xeRepository;
    @ModelAttribute("listLoaiXe")
    List<LoaiXe> getListLoaiXe(){return loaiXeRepository.findAll();}
    @GetMapping("/hien-thi")
    public String hienThi(Model model){
        model.addAttribute("listXe",xeRepository.findAll());
        return "/Xe/hienThi";
    }
    @GetMapping("/view-update/{id}")
    public String viewUpdate(@PathVariable("id")Integer id, Model model){
        model.addAttribute("xe",xeRepository.findById(id).get());
        return "/Xe/viewUpdate";
    }
    @PostMapping("/update")
    public String update(Xe xe) {
        xeRepository.save(xe);
        return "redirect:/xe/hien-thi";
    }
    @GetMapping("/phan-trang")
    public String phanTrang(@RequestParam(value = "page",defaultValue = "0",required = false) Integer page, Model model){
        int pageSize=5;
//        Sort sort =Sort.by(Sort.Direction.DESC,"tenXe");
        Pageable pageable = PageRequest.of(page,pageSize);
        model.addAttribute("page",xeRepository.findAll(pageable));
        return "/Xe/phanTrang";
    }
}
