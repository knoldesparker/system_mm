package com.example.demo;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class MvcConfig implements WebMvcConfigurer {

    public void addViewControllers(ViewControllerRegistry registry) {
        registry.addViewController("/index").setViewName("index");
        registry.addViewController("/").setViewName("index");
        registry.addViewController("/test").setViewName("test");
        registry.addViewController("/login").setViewName("login");
        registry.addViewController("/products").setViewName("products");
        registry.addViewController("/orders").setViewName("orders");
        registry.addViewController("/customers").setViewName("customers");
        registry.addViewController("/reports").setViewName("reports");
        registry.addViewController("templates/fragments/style").setViewName("style");

    }

}