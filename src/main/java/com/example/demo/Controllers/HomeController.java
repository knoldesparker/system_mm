package com.example.demo.Controllers;

import com.example.demo.Models.Repositories.CustomerRepository;
import com.example.demo.Models.Repositories.OrderRepository;
import com.example.demo.Models.Repositories.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.net.URI;

@Controller
public class HomeController {
    @Autowired
    public CustomerRepository CR;
    @Autowired
    private ProductRepository PR;
    @Autowired
    private OrderRepository OR;

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
    @GetMapping("/orders")
    public String ordersPage(Model model) {
        model.addAttribute("orders", OR.getOrders());
        return "/orders";
    }
    @GetMapping("/orders/details/order/{id}")
    public String orderDetailpage(@PathVariable(value = "id") int id, Model model) {
        model.addAttribute("order", OR.getOrderById(id));
        return "/details/order";
    }
/*
    ResponseEntity<String> entity = template.getForEntity("http://example.com", String.class);
    String body = entity.getBody();
    MediaType contentType = entity.getHeaders().getContentType();
    HttpStatus statusCode = entity.getStatusCode();
*/
}
