package com.springsqlserver.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class CategoryApi {
    @GetMapping("/init")
    public String init(){
        return "Hello";
    }
}
