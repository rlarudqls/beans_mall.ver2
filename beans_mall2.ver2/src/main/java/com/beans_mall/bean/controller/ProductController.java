package com.beans_mall.bean.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/w/product")
public class ProductController {

    @GetMapping
    public String showProductPage() {
        return "product";
    }
}
