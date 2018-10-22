package com.example.demo.Models;

import java.text.DateFormat;
import java.text.SimpleDateFormat;

public class OrderProductModel {
    private int orderId, customerId, quantity, productId;
    private String date, customerName, customerEmail, customerAddress, customerCity, customerZipcode, customerContry,
            productName, productCategory, customerLastname;
    private Double price;
    DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

    public OrderProductModel() {
    }

    public OrderProductModel(int orderId, int customerId, String date, String customerName, String customerLastname,
                             String customerEmail, String customerAddress, String customerCity,
                             String customerZipcode,String customerContry, int productId, String productName,String productCategory, Double price, int quantity) {
        this.orderId = orderId;
        this.customerId = customerId;
        this.quantity = quantity;
        this.date = date;
        this.customerName = customerName;
        this.customerLastname = customerLastname;
        this.customerEmail = customerEmail;
        this.customerAddress = customerAddress;
        this.customerCity = customerCity;
        this.customerZipcode = customerZipcode;
        this.customerContry = customerContry;
        this.price = price;
        this.productName = productName;
        this.productCategory = productCategory;
        this.productId = productId;
        this.dateFormat = dateFormat;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getCustomerEmail() {
        return customerEmail;
    }

    public void setCustomerEmail(String customerEmail) {
        this.customerEmail = customerEmail;
    }

    public String getCustomerAddress() {
        return customerAddress;
    }

    public void setCustomerAddress(String customerAddress) {
        this.customerAddress = customerAddress;
    }

    public String getCustomerCity() {
        return customerCity;
    }

    public void setCustomerCity(String customerCity) {
        this.customerCity = customerCity;
    }

    public String getCustomerZipcode() {
        return customerZipcode;
    }

    public void setCustomerZipcode(String customerZipcode) {
        this.customerZipcode = customerZipcode;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public DateFormat getDateFormat() {
        return dateFormat;
    }

    public void setDateFormat(DateFormat dateFormat) {
        this.dateFormat = dateFormat;
    }

    public String getCustomerContry() {
        return customerContry;
    }

    public void setCustomerContry(String customerContry) {
        this.customerContry = customerContry;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getCustomerLastname() {
        return customerLastname;
    }

    public void setCustomerLastname(String customerLastname) {
        this.customerLastname = customerLastname;
    }

    public String getProductCategory() {
        return productCategory;
    }

    public void setProductCategory(String productCategory) {
        this.productCategory = productCategory;
    }
}
