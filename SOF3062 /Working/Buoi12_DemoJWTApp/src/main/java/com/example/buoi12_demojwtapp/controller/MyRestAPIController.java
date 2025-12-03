package com.example.buoi12_demojwtapp.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import java.util.Map;

@RestController
public class MyRestAPIController {
    @GetMapping({"/", "/poly/url0"})
    public Object method0(){
        return Map.of("url", "/poly/url0", "message", "Public Access");
    }
    @GetMapping("/poly/url1")
    public Object method1(){
        return Map.of("url", "/poly/url1", "message", "Authenticated Only");
    }
    @GetMapping("/poly/url2")
    public Object method2(){
        return Map.of("url", "/poly/url2", "message", "Role USER Only");
    }
    @GetMapping("/poly/url3")
    public Object method3(){
        return Map.of("url", "/poly/url3", "message", "Role ADMIN Only");
    }
    @GetMapping("/poly/url4")
    public Object method4(){
        return Map.of("url", "/poly/url4", "message", "Role USER or ADMIN");
    }
}