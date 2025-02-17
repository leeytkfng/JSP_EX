package com.example.renux_ex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {
    @GetMapping("/")
    public String home() {
        return "index";
    }

    @GetMapping("/form")
    public String form() {
        return  "form";
    }

    @PostMapping("/result")
    public String showResult(
            @RequestParam("name") String name,
            @RequestParam("age") String age,
            @RequestParam("phone") String phone,
            @RequestParam("email") String email,
            Model model
    ) {
        model.addAttribute("name",name);
        model.addAttribute("age",age);
        model.addAttribute("phone",phone);
        model.addAttribute("email",email);

        return "result";

    }
}
