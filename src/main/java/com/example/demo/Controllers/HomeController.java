package com.example.demo.Controllers;

import com.example.demo.Models.Repositories.CustomerRepository;
import com.example.demo.Models.Repositories.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
    @Autowired
    private CustomerRepository CR = new CustomerRepository();
    @Autowired
    private ProductRepository PR = new ProductRepository();

    @GetMapping("/customers")
    public String customersPage(Model model) {
        model.addAttribute("customers", CR.getCustomers());
        return "/customers";
    }
    @GetMapping("/products")
    public String productsPage(Model model) {
        model.addAttribute("products", PR.getProducts());
        return "/products";
    }

}
