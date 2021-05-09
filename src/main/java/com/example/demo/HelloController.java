package com.example.demo;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {

    @RequestMapping("/hello")
    String getHello(){
        return "<h3>Hello, Docker!   v1 </h3>";
    }
}
