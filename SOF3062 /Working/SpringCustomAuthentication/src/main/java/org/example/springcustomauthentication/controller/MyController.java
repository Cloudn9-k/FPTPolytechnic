package org.example.springcustomauthentication.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyController {
    @RequestMapping
    public String home(Model model) {
        model.addAttribute("message", "@/ =>home()");
        // Sửa ở đây
        return "auth/page";
    }
    @RequestMapping("/poly/url0")
    public String method(Model model) {
        model.addAttribute("message", "@/poly/url0 =>method()");
        // Sửa ở đây
        return "auth/page";
    }
    @RequestMapping("/poly/url1")
    public String method1(Model model) {
        model.addAttribute("message", "@/poly/url1 =>method()");
        // Sửa ở đây
        return "auth/page";
    }
    @RequestMapping("/poly/url2")
    public String method2(Model model) {
        model.addAttribute("message", "@/poly/url2 =>method()");
        // Sửa ở đây
        return "auth/page";
    }
    @RequestMapping("/poly/url3")
    public String method3(Model model) {
        model.addAttribute("message", "@/poly/url3 =>method()");
        // Sửa ở đây
        return "auth/page";
    }
    @RequestMapping("/poly/url4")
    public String method4(Model model) {
        model.addAttribute("message", "@/poly/url4 =>method()");
        // Sửa ở đây
        return "auth/page";
    }

}