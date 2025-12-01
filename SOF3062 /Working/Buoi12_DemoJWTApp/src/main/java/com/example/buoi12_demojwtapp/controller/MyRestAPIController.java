package com.example.buoi12_demojwtapp.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

@RestController
public class MyRestAPIController {
    @GetMapping({"/", "/poly/url0"})
    public Object method0(){
        return Map.of("/poly/url0", "Method0");
    }

    @GetMapping("/poly/url1")
    public Object method1(){
        return Map.of("/poly/url1", "Method1");
    }

    @GetMapping("/poly/url2")
    public Object method2(){
        return Map.of("/poly/url2", "Method2");
    }

    @GetMapping( "/poly/url3")
    public Object method3(){
        return Map.of("/poly/url3", "Method3");
    }
}
