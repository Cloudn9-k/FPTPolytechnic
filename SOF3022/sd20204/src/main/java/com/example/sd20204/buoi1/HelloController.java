package com.example.sd20204.buoi1;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller // controller
public class HelloController {
    @GetMapping("/hello")  // handle mapping
    public String hello(Model model) {
        model.addAttribute("name", "SD20204");
        return "/buoi1/hello";
    }
}
