package org.example.springcustomauthentication.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyController {
    @RequestMapping
    public String home(Model model) {
        model.addAttribute("message", "@/ =>home()");
        return "auth/page";
    }
    @RequestMapping("/poly/url0")
    public String method(Model model) {
        model.addAttribute("message", "@/poly/url0 =>method()");
        return "auth/page";
    }
    @RequestMapping("/poly/url1")
    public String method1(Model model) {
        model.addAttribute("message", "@/poly/url1 =>method()");
        return "auth/page";
    }
    @RequestMapping("/poly/url2")
    public String method2(Model model) {
        model.addAttribute("message", "@/poly/url2 =>method()");
        return "auth/page";
    }
    @RequestMapping("/poly/url3")
    public String method3(Model model) {
        model.addAttribute("message", "@/poly/url3 =>method()");
        return "auth/page";
    }
    @RequestMapping("/poly/url4")
    public String method4(Model model) {
        model.addAttribute("message", "@/poly/url4 =>method()");
        return "auth/page";
    }
    @RequestMapping("/poly/admin")
    public String adminPage(Model model) {
        model.addAttribute("message", "Đây là trang dành cho admin");
        return "/auth/admin";
    }
}