package com.example.demo.Controllers;

import com.example.demo.Models.Repositories.CustomerRepository;
import com.example.demo.Models.Repositories.OrderRepository;
import com.example.demo.Models.Repositories.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class HomeController {
    @Autowired
    private CustomerRepository CR = new CustomerRepository();
    @Autowired
    private ProductRepository PR = new ProductRepository();
    @Autowired
    private OrderRepository OR = new OrderRepository();

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

}
