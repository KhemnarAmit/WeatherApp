package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @GetMapping("/")
    public String homePage() {
        return "home";  // Make sure home.jsp is in /WEB-INF/views/
    }

    @GetMapping("/error")
    public String errorMessage() {
        return "error";  // Make sure error.jsp is in /WEB-INF/views/
    }
}
