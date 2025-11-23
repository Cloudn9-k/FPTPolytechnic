package com.example.b7restapiintroduction.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class StudentController {
    @RequestMapping("/lab4")
    public String testAxios(){
        return "student";
    }
}
